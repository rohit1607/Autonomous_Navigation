#!/usr/bin/python

import rospy, npyscreen, termios, tty, mavros, sys, time
import numpy as np
import cv2
from cv_bridge import CvBridge, CvBridgeError
import matplotlib.pyplot as plt
from tf.transformations import euler_from_quaternion,quaternion_from_euler
from mavros import command
from mavros_msgs.msg import Altitude, State, PositionTarget, HomePosition
from mavros_msgs.srv import CommandBool, SetMode ,CommandTOL
from sensor_msgs.msg import Image,LaserScan
from geometry_msgs.msg import TwistStamped,PoseStamped
from std_msgs.msg import Header
from nav_msgs.msg import Odometry
from math import cos,sin,pi,atan2,atan
from sklearn.linear_model import LinearRegression

def polar_to_cartesian(origin,rotation,r,theta):
	#print(origin)
	x=origin[0]+r*cos(theta+rotation[2])
	y=origin[0]+r*sin(theta+rotation[2])
	return [x,y]

class Drone:
	def __init__(self):
		
		self.state=State()
		self.Arm()
		time.sleep(1)
		self.Takeoff()
		time.sleep(5)
		self.Offbaord()
		time.sleep(5)
		self.bridge=CvBridge()
		self.position=[2,5,1]
		self.prev_position=[0,0,0]
		self.orientation=[0,0,0]
		self.quaternion=[]
		self.flag_lidar = True
		self.prev_slope = float('inf')
		self.slope = float('inf')


		state_sub = rospy.Subscriber(mavros.get_topic('state'), State, self.state_callback)
		rospy.Subscriber('iris/usb_cam/image_raw',Image,self.camera)
		rospy.Subscriber("laser/scan",LaserScan,self.lidar)
		rospy.Subscriber("/mavros/global_position/local",Odometry,self.set_state)
		
		self.__lidar_angmin=-3.1400001049
		self.__angIncr=0.0174930356443
		self.__Rmax=6
		self._nearest_wall=[]
		self.nearest_plane_dist=float("inf")
		

	def state_callback(self,topic):
		self.state.armed = topic.armed
		self.state.connected = topic.connected
		self.state.mode = topic.mode
		self.state.guided = topic.guided
	
	def  Arm(self):
		rospy.wait_for_service('/mavros/cmd/arming')
		try:
		   armService = rospy.ServiceProxy('/mavros/cmd/arming', CommandBool)
		   armService(True)
		   print("armed")
		except rospy.ServiceException, e:
		   print "Service arm call failed: %s"%e
	
	def Takeoff(self):
		rospy.wait_for_service('/mavros/cmd/takeoff')
		try:
		   takeoffService = rospy.ServiceProxy('/mavros/set_mode', SetMode)
		   takeoffService(custom_mode="AUTO.TAKEOFF")
		   #takeoffService(altitude = 2, latitude = 0, longitude = 0, min_pitch = 0, yaw = 0)
		except rospy.ServiceException, e:
		   print "Service takeoff call failed: %s"%e
		print("takeoff")
	
	def Offbaord(self):
		rospy.wait_for_service('/mavros/set_mode')
		try:
		   flightModeService = rospy.ServiceProxy('/mavros/set_mode',SetMode)
		   isModeChanged = flightModeService(custom_mode='OFFBOARD') #return true or false
		except rospy.ServiceException, e:
		   print "service set_mode call failed: %s. OFFBOARD Mode could not be set. Check that GPS is enabled"%e

		print("offboard enabled")	

	def Stabilize(self):
		rospy.wait_for_service('/mavros/set_mode')
		try:
		   flightModeService = rospy.ServiceProxy('/mavros/set_mode',SetMode)
		   isModeChanged = flightModeService(custom_mode='POSCTL') #return true or false
		except rospy.ServiceException, e:
		   print "service set_mode call failed: %s. OFFBOARD Mode could not be set. Check that GPS is enabled"%e

		print("STABILIZED enabled")
	def move(self,data):
		pass

	def get_obj_loc(data):
		pass

	def lidar(self,data):
		dist=lambda d1,d2:(((d1[0]-d2[0])**2 +(d1[1]-d2[1])**2 +(d1[2]-d2[2])**2 )**.5)
		range_data=data.ranges
		# or abs(self.slope-self.prev_slope)>0.3
		self.lidar_data_to_map(range_data)
		if (self.flag_lidar == True or dist(self.prev_position,self.position)>1 ):#or self.nearest_plane_dist>3 or self.nearest_plane_dist<2):
			self.rotate_drone_facing_wall()
			#time.sleep(5)
			self.flag_lidar = False
			self.prev_position=self.position
			print("if")
		else:
			self.go_parallel_to_nearest_wall()
			print("else")
		# self.lidar_data_to_map(range_data)
		# self.rotate_drone_facing_wall()
		# time.sleep(5)

	def set_state(self,data):
		self.position=[data.pose.pose.position.x,data.pose.pose.position.y,data.pose.pose.position.z]
		#print(self.position,"p")
		self.quaternion=[data.pose.pose.orientation.x,
			data.pose.pose.orientation.y,data.pose.pose.orientation.z,
			data.pose.pose.orientation.w]
		self.orientation=euler_from_quaternion(self.quaternion)

	def camera(self,data):
		img=self.bridge.imgmsg_to_cv2(data, "bgr8")
		cv2.imshow("Image window", img)
		cv2.waitKey(3)

 	def lidar_data_to_map(self,lidar_data):
 		slope=lambda x,y:((y[1]-x[1])/(y[0]-x[0]))
 		Objects=[]
 		Slopes={}
 		prev_objRead=-1
 		prev_pt=[float("inf"),float("inf")]
 		Object=[]
 		#plt.plot(range(360),lidar_data)
 		nearest_plane_id=-1
 		self.nearest_plane_dist=self.__Rmax
		for i in range(len(lidar_data)):
			rad=lidar_data[i]
			if(rad<self.__Rmax):
				if(rad<self.nearest_plane_dist):
					self.nearest_plane_dist=rad
					nearest_plane_id=len(Objects)

				theta=self.__lidar_angmin+self.__angIncr*i
				pt=polar_to_cartesian(self.position,self.orientation,rad,theta)
				plt.scatter(pt[0],pt[1])
				if(prev_objRead==i-1):
					Object.append(pt)
					if(prev_pt[0]!=float("inf") and prev_pt[1]!=float("inf")):
						Slopes[i]=slope(prev_pt,pt)
						#plt.scatter(i,Slopes[i])
				else:
					if(len(Object)!=0):
						Objects.append(Object)
					Object=[pt]
				prev_pt=pt
				prev_objRead=i
			if((i==len(lidar_data)-1) and len(Object)!=0):
				Objects.append(Object)
		# for Object in Objects:
		# 	for pt in Object:
		# 		plt.scatter(pt[0],pt[1])
		Coeffs=[]
		for Object in Objects:
			X=np.asarray(Object)[:,0].reshape(-1,1)
			Y=np.asarray(Object)[:,1]
			reg=LinearRegression().fit(X,Y)
			Coeffs.append([reg.coef_[0],reg.intercept_])
			self.slope=reg.coef_[0]
		plt.draw()
		plt.pause(1e-4)
		plt.clf()
		#print Slopes
		if(nearest_plane_id!=-1):
			self._nearest_wall=Coeffs[nearest_plane_id]
		else:
			self._nearest_wall=[]
		#print(self._nearest_wall)
		#return Coeffs[nearest_plane_id]


	def rotate_drone_facing_wall(self):
		drone_vec=[0,0,1]
		wall_vec=[cos(atan2(self._nearest_wall[0],1)),sin(atan2(self._nearest_wall[0],1)),0]
		cross_vec=np.cross(drone_vec,wall_vec)
		angles=[0,0,atan2(cross_vec[1],cross_vec[0])]
		quater=quaternion_from_euler(0, 0, angles[2])
		move=[0,0,0]
		if(self.nearest_plane_dist>3):
			move[0]=(self.nearest_plane_dist-3)*cos(angles[2])
			move[1]=(self.nearest_plane_dist-3)*sin(angles[2])
		if(self.nearest_plane_dist<2):
			move[0]=(self.nearest_plane_dist-2)*cos(angles[2])
			move[1]=(self.nearest_plane_dist-2)*sin(angles[2])
		goal_pose.pose.position.x=self.position[0]+move[0]
		goal_pose.pose.position.y=self.position[1]+move[1]
		goal_pose.pose.position.z=self.position[2]+move[2]

		goal_pose.pose.orientation.x=quater[0]
		goal_pose.pose.orientation.y=quater[1]
		goal_pose.pose.orientation.z=quater[2]
		goal_pose.pose.orientation.w=quater[3]
		print(self._nearest_wall[0], angles[2], self.orientation[2])
		# self.Stabilize()
		pos_pub.publish(goal_pose)
		# self.Offbaord()


	def go_parallel_to_nearest_wall(self):
		t=0.5
		goal_pose.pose.position.x=self.position[0]+t*cos(atan(self._nearest_wall[0]))
		goal_pose.pose.position.y=self.position[1]+t*sin(atan(self._nearest_wall[0]))
		goal_pose.pose.position.z=self.position[2]
		pos_pub.publish(goal_pose)
		

rospy.init_node("uav_automation")
mavros.set_namespace('/mavros')
global pos_pub, goal_pose
global vel_pub, rate, goal_vel
rate = rospy.Rate(0.5)
pos_pub = rospy.Publisher(mavros.get_topic('setpoint_position','local'), PoseStamped, queue_size=1)
goal_pose = PoseStamped()
vel_pub = rospy.Publisher(mavros.get_topic('setpoint_velocity','cmd_vel'), TwistStamped, queue_size=1)
goal_vel = TwistStamped()
def main():
	global pos_pub, goal_pose
	set_arming = rospy.ServiceProxy('/mavros/cmd/arming', CommandBool)
	set_mode = rospy.ServiceProxy('/mavros/set_mode', SetMode)

	quats = quaternion_from_euler(0, 0, 1*3.14/4)
	goal_pose.pose.position.x = 2
	goal_pose.pose.position.y = 2
	goal_pose.pose.position.z = 0.5
	goal_pose.pose.orientation.x = quats[0]
	goal_pose.pose.orientation.y = quats[1]
	goal_pose.pose.orientation.z = quats[2]
	goal_pose.pose.orientation.w = quats[3]

	time.sleep(1)
	mavros.command.arming(True)
	set_mode(0, 'AUTO.TAKEOFF')
	set_mode(0, 'OFFBOARD')
	print("offboard done")

	# send 50 setpoints before starting
	for i in range(0, 50):
	    # vel_pub.publish(setpoint_msg)
	    pos_pub.publish(goal_pose)
	    rate.sleep()

	# drone.pos_pub.publish(drone.poscontrol)
	# print("drone_poscontrol",drone.poscontrol)

	while not rospy.is_shutdown():
		#vel_pub.publish(setpoint_msg)
		# drone.pos_pub.publish(drone.poscontrol)
		# print("drone_poscontrol",drone.poscontrol)
		pos_pub.publish(goal_pose)
		# drone.go_parallel_to_nearest_wall()
		rate.sleep()


if __name__ == '__main__':
	drone=Drone()
	main()
