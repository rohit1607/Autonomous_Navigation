#!/usr/bin/python

import rospy, npyscreen, termios, tty, mavros, sys, time
import numpy as np
import matplotlib.pyplot as plt
from mavros import command
from mavros_msgs.msg import Altitude, State, PositionTarget, HomePosition
from mavros_msgs.srv import CommandBool, SetMode ,CommandTOL
from sensor_msgs.msg import Image,LaserScan
from geometry_msgs.msg import TwistStamped
from std_msgs.msg import Header


class Drone:
	def __init__(self):
		self.state=State()
	
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
		   takeoffService = rospy.ServiceProxy('/mavros/cmd/takeoff', CommandTOL)
		   takeoffService(altitude = 2, latitude = 0, longitude = 0, min_pitch = 0, yaw = 0)
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
	def move(self,data):
		pass
	def lidar(self,data):
		pass
	def camera(self,data):
		print(data)
		plt.imshow(data)


def plot_img(data):
	drone.camera(data)

def main():
	global drone
	rospy.init_node("uav_automation")
	rate = rospy.Rate(10)
	#mavros.set_namespace('mavros')
	rospy.Subscriber('mavros/state', State, drone.state_callback)
	vel_pub = rospy.Publisher('mavros/setpoint_velocity/cmd_vel', TwistStamped, queue_size = 3)
	rospy.Subscriber('mavros/iris/usb_cam/image_raw',Image,plot_img)
	setpoint_msg = TwistStamped(
	    header=Header(
	    stamp=rospy.Time.now()),
	)
	setpoint_msg.twist.linear.x = 0
	setpoint_msg.twist.linear.y = 0
	setpoint_msg.twist.linear.z = 0

	drone.Arm()
	
	drone.Takeoff()
	drone.Offbaord()
	time.sleep(2)

	for i in range(0, 5):
	    vel_pub.publish(setpoint_msg)
	    rate.sleep()
	    print("running in loop:  ", i)


	# setpoint_msg.twist.linear.x = 0
	# setpoint_msg.twist.linear.y = 0
	# setpoint_msg.twist.linear.z = 0


	vel_pub.publish(setpoint_msg)
	print("afer publish")
	
	last_request = rospy.Time.now()
	time.sleep(1)

	while not rospy.is_shutdown():
		#vel_pub.publish(setpoint_msg)
		print("in while loop")
		rate.sleep()


if __name__ == '__main__':
	drone=Drone()
	main()
