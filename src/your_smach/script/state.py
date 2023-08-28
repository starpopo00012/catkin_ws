#!/usr/bin/env python3

import rospy
import smach
import smach_ros
from your_package.srv import *
from your_smach.srv import GoToPosition, GoToPositionRequest

class GoToPosition1(smach.State):
    def __init__(self, outcomes=['success', 'fail']):
        super().__init__(outcomes)
        self.gotopos = rospy.ServiceProxy('/nav/nav_to_location', NavToLocation)
    
    def execute(self, ud):
        rospy.loginfo("Executing state GoToPosition")
        req = NavToLocationRequest()
        req.location_name = 'home'
        self.gotopos(req)
        return 'success' 

class RobotState(object):
    def __init__(self) -> None:
        rospy.init_node('robot_state', anonymous=True)
        sm = smach.StateMachine(outcomes=['---finish---'])

        with sm:
            smach.StateMachine.add('Gotoposition', GoToPosition1(), 
                                transitions={'success':'Gotoposition', 'fail':'Gotoposition'})
        outcome = sm.execute()

if __name__ == "__main__":
    RobotState()
