#!/usr/bin/env python3

import rospy
import smach
import time
import speech_recognition as sr

from std_srvs.srv import *
from std_msgs.msg import String
#SAVE1
# Speaker Detect
class fuel_type(smach.State):
    def __init__(self, outcomes=['success', 'fail']):
        super().__init__(outcomes)
        self.r = sr.Recognizer()
    
    def fuel_ask(self):
        with sr.Microphone(device_index=5) as source:
            print("Please say something... ")
            audio = self.r.listen(source)  # Listen for up to 5 seconds
            text = self.r.recognize_google(audio, language='th-TH')
            print("You said:", text)
            return text
   
    def execute(self, ud):
        self.location = self.fuel_ask()
        pub = rospy.Publisher('position_call', String, queue_size=10)
        rate = rospy.Rate(10) # 10hz
        
        # Loop through two iterations
        for i in range(1, 5):
            rospy.loginfo(self.location)
            pub.publish(self.location)
            rate.sleep()
        time.sleep(10)
        return 'success'
        
    device = ['HDA Intel PCH: CX8200 Analog (hw:0,0)', 'HDA Intel PCH: HDMI 0 (hw:0,3)',
            'HDA Intel PCH: HDMI 1 (hw:0,7)', 'HDA Intel PCH: HDMI 2 (hw:0,8)',
            'HDA Intel PCH: HDMI 3 (hw:0,9)', 'HDA Intel PCH: HDMI 4 (hw:0,10)',
            'RØDE NT-USB Mini: USB Audio (hw:1,0)', 'sysdefault', 'hdmi', 'samplerate', 'speexrate', 'pulse', 'upmix', 'vdownmix', 'default']

# Define a state to go to the first position
class GoToPosition(smach.State):
    def __init__(self, position ,outcomes=['success', 'fail']):
        super().__init__(outcomes)
        self.location = position

    def execute(self, ud):
        pub = rospy.Publisher('position_call', String, queue_size=10)
        rate = rospy.Rate(10) # 10hz
        
        # Loop through two iterations
        for i in range(1, 5):
            rospy.loginfo(self.location)
            pub.publish(self.location)
            rate.sleep()
        time.sleep(10)
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
            smach.StateMachine.add('goto_st_1', GoToPosition("home"), transitions={'success':'fuel_type_1', 'fail':'goto_st_1'})
            smach.StateMachine.add('fuel_type_1', fuel_type(), transitions={'success':'gripfuel_1', 'fail':'fuel_type_1'})
            smach.StateMachine.add('gripfuel_1', OpenGrip(), transitions={'success':'closeGrip_fuel_1', 'fail':'gripfuel_1'})
            smach.StateMachine.add('closeGrip_fuel_1', CloseGrip(), transitions={'success':'GoToCar_1', 'fail':'closeGrip_fuel_1'})
            smach.StateMachine.add('GoToCar_1', GoToPosition("car"), transitions={'success':'Release_1', 'fail':'GoToCar_1'})
            smach.StateMachine.add('Release_1', OpenGrip(),  transitions={'success':'---finish---', 'fail':'---finish---'})
        outcome = sm.execute()

if __name__ == "__main__":
    RobotState()
