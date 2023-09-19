#!/usr/bin/env python3

import rospy
import smach
import time
import speech_recognition as sr
import cv2
import numpy as np
import easyocr

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
        rospy.Rate(10) # 10hz
        for i in range(1, 2):
            rospy.loginfo("asd")
            self.pub.publish("asd")
        time.sleep(25)
        return 'success'

# Define a state to go to the first position
class GoToPosition(smach.State):
    def __init__(self, position ,outcomes=['success', 'fail']):
        super().__init__(outcomes)
        self.location = position

    def execute(self, ud):
        pub = rospy.Publisher('position_call', String, queue_size=10)
        rate = rospy.Rate(5) # 10hz
        
        # Loop through two iterations
        for i in range(0,5):
            rospy.loginfo(self.location)
            pub.publish(self.location)
            rate.sleep()
        time.sleep(25)
        return 'success'

# Define a state to open the grip
class OpenGrip(smach.State):
    def __init__(self, outcomes=['success', 'fail']):
        super().__init__(outcomes)
   
    def execute(self, ud):
        pub = rospy.Publisher('/move_group/fake_controller_joint_states', String, queue_size=10)
        rate = rospy.Rate(10) # 10 Hz
        for i in range(1, 5):
            pos_deg = "S" + "," + "090" + "," + "084" + "," + "117" + "," + "144" + "," + "107" + "," + "000" + "," + '\r'
            rospy.loginfo(pos_deg)
            pub.publish(pos_deg)
            rate.sleep()
        time.sleep(25)
        return 'success'

# Define a state to close the grip
class CloseGrip(smach.State):
    def __init__(self, outcomes=['success', 'fail']):
        super().__init__(outcomes)
   
    def execute(self, ud):
        pub = rospy.Publisher('/move_group/fake_controller_joint_states', String, queue_size=10)
        rate = rospy.Rate(10) # 10 Hz
        for y in range(2, 5):
            pos_deg = "S" + "," + "090" + "," + "084" + "," + "117" + "," + "144" + "," + "107" + "," + "060" + "," + '\r'
            rospy.loginfo(pos_deg)
            pub.publish(pos_deg)
            rate.sleep()
        time.sleep(25)
        return 'success'

class plt_get(smach.State):
    def __init__(self, outcomes=['success', 'fail']):
        super().__init__(outcomes)
        self.pub = rospy.Publisher('/get_plt', String, queue_size=10)
        self.rate = rospy.Rate(10) # 10hz

    def execute(self, ud):
        rospy.Rate(10) # 10hz
        for y in range(1, 5):
            rospy.loginfo("get_plt")
            self.pub.publish("get_plt")
            self.rate.sleep()
        time.sleep(25)
        return 'success'

# Define the main robot state class
class RobotState(object):
    def __init__(self) -> None:
        rospy.init_node('robot_state', anonymous=True)
        sm = smach.StateMachine(outcomes=['---finish---'])

        # Create the state machine
        with sm:
            smach.StateMachine.add('car1', GoToPosition("car1"), 
                                   transitions={'success':'plt_get', 'fail':'car1'})
            
            smach.StateMachine.add('plt_get', plt_get(), 
                                   transitions={'success':'ask', 'fail':'plt_get'})
            
            smach.StateMachine.add('ask', fuel_ask(), 
                                   transitions={'success':'home1', 'fail':'ask'})
            
            smach.StateMachine.add('home1', GoToPosition("home"), 
                                    transitions={'success':'car2', 'fail':'home1'})
            
            smach.StateMachine.add('car2', GoToPosition("car2"), 
                                    transitions={'success':'plt_get2', 'fail':'car2'})
            
            smach.StateMachine.add('plt_get2', plt_get(), 
                                   transitions={'success':'ask2', 'fail':'plt_get2'})
            
            smach.StateMachine.add('ask2', fuel_ask(), 
                                   transitions={'success':'home2', 'fail':'ask2'})
            
            smach.StateMachine.add('home2', GoToPosition("home"), 
                                   transitions={'success':'---finish---', 'fail':'---finish---'})

            #transitions={'success':'---finish---', 'fail':'---finish---'})
            
        outcome = sm.execute()

if __name__ == "__main__":
    RobotState()
