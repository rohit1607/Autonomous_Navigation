#!/usr/bin/python

import rospy, npyscreen, termios, tty, mavros, sys, time
from mavros import command
from mavros_msgs.msg import Altitude, State, PositionTarget, HomePosition, GlobalPositionTarget
from mavros_msgs.srv import CommandBool, SetMode
from sensor_msgs.msg import Imu, NavSatFix, Image, LaserScan
from geometry_msgs.msg import TwistStamped, PoseStamped
from std_msgs.msg import Header
import matplotlib.pyplot as plt
import cv2
from cv_bridge import CvBridge, CvBridgeError
import numpy as np
from tf.transformations import quaternion_from_euler

UAV_state = State()
bridge = CvBridge()
global enter 
enter = False
red_lower = np.array([90, 100, 100])
red_upper = np.array([150, 255, 255])


def _state_callback(topic):
    UAV_state.armed = topic.armed
    UAV_state.connected = topic.connected
    UAV_state.mode = topic.mode
    UAV_state.guided = topic.guided


def plot_img(image):
	# cv2.imshow('image',type(image.data)
	cv_image = bridge.imgmsg_to_cv2(image, "bgr8")

	# print(cv_image.shape)
	# print(cv_image.dtype)
	hsv = cv2.cvtColor(cv_image, cv2.COLOR_BGR2HSV)
	red_mask = cv2.inRange(hsv, red_lower, red_upper)
	red_img = cv2.bitwise_and(cv_image, cv_image, mask=red_mask)
	cv_image = cv_image[:,0:-40]
	cv2.imshow("Image window", cv_image)
	cv2.waitKey(2)
	# print(image)

def detect_enrty(image):
	global enter
	enter = False
	cv_image = bridge.imgmsg_to_cv2(image, "bgr8")
	hsv = cv2.cvtColor(cv_image, cv2.COLOR_BGR2HSV)
	red_mask = cv2.inRange(hsv, red_lower, red_upper)
	red_img = cv2.bitwise_and(cv_image, cv_image, mask=red_mask)
	red_img = red_img[:,0:-40]
	_, contours, _ = cv2.findContours(red_mask, cv2.RETR_EXTERNAL, cv2.CHAIN_APPROX_NONE)
	blobs = [contour for contour in contours if cv2.contourArea(contour)>5]
	areas = []
	for blob in blobs:
		areas.append(cv2.contourArea(blob))
	if max(areas)> 100:
		enter = True
	return enter


def main():
	global enter
	rospy.init_node("uav_automation")
	rate = rospy.Rate(10)
	mavros.set_namespace('/mavros')

	state_sub = rospy.Subscriber(mavros.get_topic('state'), State, _state_callback)
	# alt_sub = rospy.Subscriber(mavros.get_topic())

	vel_pub = rospy.Publisher(mavros.get_topic('setpoint_velocity', 'cmd_vel'), TwistStamped, queue_size = 3) 
	pos_pub = rospy.Publisher(mavros.get_topic('setpoint_position','local'), PoseStamped, queue_size=3)
	# setup service
	# /mavros/cmd/arming
	set_arming = rospy.ServiceProxy('/mavros/cmd/arming', CommandBool)

	# /mavros/set_mode
	set_mode = rospy.ServiceProxy('/mavros/set_mode', SetMode)

	rospy.Subscriber('/iris/usb_cam/image_raw', Image, plot_img)
	rospy.Subscriber('/iris/usb_cam/image_raw', Image, detect_enrty)

	setpoint_msg = TwistStamped(
	    header=Header(
	    stamp=rospy.Time.now()),
	)
	goal_pose = PoseStamped()
	
	quats = quaternion_from_euler(0, 0, 2*3.14/4)
	# initialize the setpoint
	setpoint_msg.twist.linear.x = 0
	setpoint_msg.twist.linear.y = 2
	setpoint_msg.twist.linear.z = 0

	goal_pose.pose.position.x = 0
	goal_pose.pose.position.y = 0
	goal_pose.pose.position.z = 0.5
	goal_pose.pose.orientation.x = quats[0]
	goal_pose.pose.orientation.y = quats[1]
	goal_pose.pose.orientation.z = quats[2]
	goal_pose.pose.orientation.w = quats[3]

	mavros.command.arming(True)

	set_mode(0, 'AUTO.TAKEOFF')
	set_mode(0, 'OFFBOARD')

	# send 50 setpoints before starting
	for i in range(0, 50):
	    # vel_pub.publish(setpoint_msg)
	    pos_pub.publish(goal_pose)
	    rate.sleep()
    
	set_mode(0, 'AUTO.TAKEOFF')
	set_mode(0, 'OFFBOARD')

	last_request = rospy.Time.now()
	time.sleep(1)
	
	while not rospy.is_shutdown():

		print(UAV_state.mode)
		if(UAV_state.mode == "POSCTL"):
			sys.exit()
		
		if enter:
			goal_pose.pose.position.x += 0.05
			goal_pose.pose.position.y += 0
			goal_pose.pose.position.z += 0
			print("*********************************************")

		# vel_pub.publish(setpoint_msg)
		pos_pub.publish(goal_pose)
		print("status: ", enter)
		# rospy.spin()
		rate.sleep()



if __name__ == '__main__':
	main()
