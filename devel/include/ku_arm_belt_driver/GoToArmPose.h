// Generated by gencpp from file ku_arm_belt_driver/GoToArmPose.msg
// DO NOT EDIT!


#ifndef KU_ARM_BELT_DRIVER_MESSAGE_GOTOARMPOSE_H
#define KU_ARM_BELT_DRIVER_MESSAGE_GOTOARMPOSE_H

#include <ros/service_traits.h>


#include <ku_arm_belt_driver/GoToArmPoseRequest.h>
#include <ku_arm_belt_driver/GoToArmPoseResponse.h>


namespace ku_arm_belt_driver
{

struct GoToArmPose
{

typedef GoToArmPoseRequest Request;
typedef GoToArmPoseResponse Response;
Request request;
Response response;

typedef Request RequestType;
typedef Response ResponseType;

}; // struct GoToArmPose
} // namespace ku_arm_belt_driver


namespace ros
{
namespace service_traits
{


template<>
struct MD5Sum< ::ku_arm_belt_driver::GoToArmPose > {
  static const char* value()
  {
    return "79d88096a3ed8bf571f433b49f30cb27";
  }

  static const char* value(const ::ku_arm_belt_driver::GoToArmPose&) { return value(); }
};

template<>
struct DataType< ::ku_arm_belt_driver::GoToArmPose > {
  static const char* value()
  {
    return "ku_arm_belt_driver/GoToArmPose";
  }

  static const char* value(const ::ku_arm_belt_driver::GoToArmPose&) { return value(); }
};


// service_traits::MD5Sum< ::ku_arm_belt_driver::GoToArmPoseRequest> should match
// service_traits::MD5Sum< ::ku_arm_belt_driver::GoToArmPose >
template<>
struct MD5Sum< ::ku_arm_belt_driver::GoToArmPoseRequest>
{
  static const char* value()
  {
    return MD5Sum< ::ku_arm_belt_driver::GoToArmPose >::value();
  }
  static const char* value(const ::ku_arm_belt_driver::GoToArmPoseRequest&)
  {
    return value();
  }
};

// service_traits::DataType< ::ku_arm_belt_driver::GoToArmPoseRequest> should match
// service_traits::DataType< ::ku_arm_belt_driver::GoToArmPose >
template<>
struct DataType< ::ku_arm_belt_driver::GoToArmPoseRequest>
{
  static const char* value()
  {
    return DataType< ::ku_arm_belt_driver::GoToArmPose >::value();
  }
  static const char* value(const ::ku_arm_belt_driver::GoToArmPoseRequest&)
  {
    return value();
  }
};

// service_traits::MD5Sum< ::ku_arm_belt_driver::GoToArmPoseResponse> should match
// service_traits::MD5Sum< ::ku_arm_belt_driver::GoToArmPose >
template<>
struct MD5Sum< ::ku_arm_belt_driver::GoToArmPoseResponse>
{
  static const char* value()
  {
    return MD5Sum< ::ku_arm_belt_driver::GoToArmPose >::value();
  }
  static const char* value(const ::ku_arm_belt_driver::GoToArmPoseResponse&)
  {
    return value();
  }
};

// service_traits::DataType< ::ku_arm_belt_driver::GoToArmPoseResponse> should match
// service_traits::DataType< ::ku_arm_belt_driver::GoToArmPose >
template<>
struct DataType< ::ku_arm_belt_driver::GoToArmPoseResponse>
{
  static const char* value()
  {
    return DataType< ::ku_arm_belt_driver::GoToArmPose >::value();
  }
  static const char* value(const ::ku_arm_belt_driver::GoToArmPoseResponse&)
  {
    return value();
  }
};

} // namespace service_traits
} // namespace ros

#endif // KU_ARM_BELT_DRIVER_MESSAGE_GOTOARMPOSE_H
