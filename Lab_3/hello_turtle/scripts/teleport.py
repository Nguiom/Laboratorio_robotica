#!/usr/bin/env python

import rospy
from geometry_msgs.msg import Twist
from turtlesim.msg import Pose

class Teleport(self):
	def __init__(self): 
		rospy.init_node('Teleport', anonymous=False)
        	self.pose_sub = rospy.Subscriber('/turtle1/pose',Pose, self.update_pose)
		self.pose=Pose()
		rate=rospy.Rate(10)
		self.tabla={' ':(1),'r':(0)}
	def teleportA(self):
		rospy.wait_for_service('/turtle1/teleport_absolute')
		try:
			d
if __name__== "__main__": 
    try:
        ReadKey() 
    except: 
    	rospy.loginfo("End of the trip for Turtlesim") 