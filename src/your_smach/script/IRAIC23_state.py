#!/usr/bin/env python3

import rospy
import smach
import time

from std_srvs.srv import *
from geometry_msgs.msg import PoseStamped
from std_msgs.msg import String

# Define a state to go to the first position
class GoToPosition1(smach.State):
    def __init__(self, outcomes=['success', 'fail']):
        super().__init__(outcomes)

    def execute(self, ud):
        pub = rospy.Publisher('chatter', String, queue_size=10)
        rate = rospy.Rate(10) # 10hz
        
        # Loop through two iterations
        for y in range(1, 3):
            x = 'home'
            pub.publish(x)
            rate.sleep()
            print(y)
        time.sleep(10)
        return 'success'

# Define a state to go to the second position
class GoToPosition2(smach.State):
    def __init__(self, outcomes=['success', 'fail']):
        super().__init__(outcomes)

    def execute(self, ud):
        pub = rospy.Publisher('/move_base_simple/goal', PoseStamped, queue_size=10)
        rate = rospy.Rate(1) # 1 Hz
        
        for y in range(1, 3):
            print(y)
            pose = PoseStamped()
            pose.header.stamp = rospy.Time.now()
            pose.header.frame_id = 'map'
            pose.pose.position.x = -1.1142568588256836
            pose.pose.position.y = -0.445844829082489
            pose.pose.position.z = 0.0
            pose.pose.orientation.x = 0.0
            pose.pose.orientation.y = 0.0
            pose.pose.orientation.z = -0.005727137795002615
            pose.pose.orientation.w = 0.9999835998118555
            rospy.loginfo("Pose published!")
            pub.publish(pose)
            rate.sleep()
        time.sleep(15)
        return 'success'

# Define a state to open the grip
class OpenGrip(smach.State):
    def __init__(self, outcomes=['success', 'fail']):
        super().__init__(outcomes)
   
    def execute(self, ud):
        pub = rospy.Publisher('/move_group/fake_controller_joint_states', String, queue_size=10)
        rate = rospy.Rate(10) # 10 Hz
        for y in range(2, 5):
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
            smach.StateMachine.add('GoToPosition1', GoToPosition1(), 
                               transitions={'success':'OpenGrip', 'fail':'GoToPosition1'})
            smach.StateMachine.add('OpenGrip', OpenGrip(), 
                               transitions={'success':'CloseGrip', 'fail':'OpenGrip'})
            smach.StateMachine.add('CloseGrip', CloseGrip(), 
                               transitions={'success':'GoToPosition2', 'fail':'CloseGrip'})
            smach.StateMachine.add('GoToPosition2', GoToPosition2(), 
                               transitions={'success':'Release', 'fail':'GoToPosition2'})
            smach.StateMachine.add('Release', OpenGrip(), 
                               transitions={'success':'---finish---', 'fail':'---finish---'})
        outcome = sm.execute()

if __name__ == "__main__":
    RobotState()
