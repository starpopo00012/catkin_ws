#!/usr/bin/env python

import rospy
from your_smach.srv import *  # Import the service message type

def call_fuel_service():
    rospy.wait_for_service("/fuel_ask")  # Wait for the service to become available
    try:
        # Create a service proxy
        fuel_service = rospy.ServiceProxy("/fuel_ask", trigger)

        # Create a request message (if required)
        request = triggerRequest()
        # Fill in request fields if necessary

        # Call the service
        response = fuel_service(request)

        print(response) # Print the result given by the service called
    except rospy.ServiceException as e:
        rospy.logerr("Service call failed: %s", e)

if __name__ == "__main__":
    rospy.init_node("fuel_service_client")
    call_fuel_service()
