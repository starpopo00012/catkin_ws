#!/usr/bin/env python3

import rospy
import smach
import time
import speech_recognition as sr
import cv2
import numpy as np
import easyocr

from your_package.srv import *
from std_srvs.srv import *
from std_msgs.msg import String
#SAVE1
# Speaker Detect
class fuel_ask(smach.State):
    def __init__(self, outcomes=['success', 'fail']):
        super().__init__(outcomes)
        self.pub = rospy.Publisher('/chatter', String, queue_size=10)
        self.rate = rospy.Rate(10) # 10hz

    def execute(self, ud):
        rospy.Rate(10) #10hz
        for i in range(1, 3):
            self.pub.publish("get_fuel")
            self.rate.sleep()
        return 'success'

class plt_get(smach.State):
    def __init__(self, outcomes=['success', 'fail']):
        super().__init__(outcomes)
        self.pub = rospy.Publisher('/get_plate', String, queue_size=10)
        self.rate = rospy.Rate(10) # 10hz

    def execute(self, ud):
        rospy.Rate(10) # 10hz
        rospy.loginfo("get_plt")
        self.pub.publish("get_plt")
        self.rate.sleep()
        return 'success'

# Define a state to go to the first position
class GoToPosition(smach.State):
    def __init__(self, position ,outcomes=['success', 'fail']):
        super().__init__(outcomes)
        self.location = position
        self.nav_to_location = rospy.ServiceProxy('/nav/nav_to_location', NavToLocation)

    def execute(self, ud):
        self.nav_to_location(self.location)
        return 'success'

# Define a state to open the grip
class OpenGrip(smach.State):
    def __init__(self, outcomes=['success', 'fail']):
        super().__init__(outcomes)
   
    def execute(self, ud):
        pub = rospy.Publisher('/move_group/fake_controller_joint_states', String, queue_size=10)
        rate = rospy.Rate(10) # 10 Hz
        for i in range(1, 5):
            pos_deg = "S" + "," + "068" + "," + "086" + "," + "106" + "," + "102" + "," + "107" + "," + "000" + "," + '\r'
            rospy.loginfo(pos_deg)
            pub.publish(pos_deg)
            rate.sleep()
        return 'success'

# Define a state to close the grip
class CloseGrip(smach.State):
    def __init__(self, outcomes=['success', 'fail']):
        super().__init__(outcomes)
   
    def execute(self, ud):
        pub = rospy.Publisher('/move_group/fake_controller_joint_states', String, queue_size=10)
        rate = rospy.Rate(10) # 10 Hz
        for y in range(2, 5):
            pos_deg = "S" + "," + "068" + "," + "086" + "," + "106" + "," + "102" + "," + "107" + "," + "060" + "," + '\r'
            rospy.loginfo(pos_deg)
            pub.publish(pos_deg)
            rate.sleep()
        return 'success'

# Define the main robot state class
class RobotState(object):
    def __init__(self) -> None:
        rospy.init_node('robot_state', anonymous=True)
        sm = smach.StateMachine(outcomes=['---finish---'])

        # Create the state machine
        with sm:
           #smach.StateMachine.add('go_plt',  GoToPosition("car_plt1"), 
           #                      transitions={'success':'plt_get', 'fail':'go_plt'})
            
           #smach.StateMachine.add('plt_get',  plt_get(), 
           #                       transitions={'success':'go_st1', 'fail':'get_ful'})
            
           #smach.StateMachine.add('go_st1',  GoToPosition("station_1"), 
           #                       transitions={'success':'get_ful', 'fail':'go_st1'})
            
           smach.StateMachine.add('get_ful',  fuel_ask(), 
                                   transitions={'success':'---finish---', 'fail':'---finish---'})

        outcome = sm.execute()

if __name__ == "__main__":
    RobotState()







 


            
    
