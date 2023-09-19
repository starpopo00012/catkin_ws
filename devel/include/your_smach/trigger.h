// Generated by gencpp from file your_smach/trigger.msg
// DO NOT EDIT!


#ifndef YOUR_SMACH_MESSAGE_TRIGGER_H
#define YOUR_SMACH_MESSAGE_TRIGGER_H

#include <ros/service_traits.h>


#include <your_smach/triggerRequest.h>
#include <your_smach/triggerResponse.h>


namespace your_smach
{

struct trigger
{

typedef triggerRequest Request;
typedef triggerResponse Response;
Request request;
Response response;

typedef Request RequestType;
typedef Response ResponseType;

}; // struct trigger
} // namespace your_smach


namespace ros
{
namespace service_traits
{


template<>
struct MD5Sum< ::your_smach::trigger > {
  static const char* value()
  {
    return "65c770945c83e7be8dd04ade02be6046";
  }

  static const char* value(const ::your_smach::trigger&) { return value(); }
};

template<>
struct DataType< ::your_smach::trigger > {
  static const char* value()
  {
    return "your_smach/trigger";
  }

  static const char* value(const ::your_smach::trigger&) { return value(); }
};


// service_traits::MD5Sum< ::your_smach::triggerRequest> should match
// service_traits::MD5Sum< ::your_smach::trigger >
template<>
struct MD5Sum< ::your_smach::triggerRequest>
{
  static const char* value()
  {
    return MD5Sum< ::your_smach::trigger >::value();
  }
  static const char* value(const ::your_smach::triggerRequest&)
  {
    return value();
  }
};

// service_traits::DataType< ::your_smach::triggerRequest> should match
// service_traits::DataType< ::your_smach::trigger >
template<>
struct DataType< ::your_smach::triggerRequest>
{
  static const char* value()
  {
    return DataType< ::your_smach::trigger >::value();
  }
  static const char* value(const ::your_smach::triggerRequest&)
  {
    return value();
  }
};

// service_traits::MD5Sum< ::your_smach::triggerResponse> should match
// service_traits::MD5Sum< ::your_smach::trigger >
template<>
struct MD5Sum< ::your_smach::triggerResponse>
{
  static const char* value()
  {
    return MD5Sum< ::your_smach::trigger >::value();
  }
  static const char* value(const ::your_smach::triggerResponse&)
  {
    return value();
  }
};

// service_traits::DataType< ::your_smach::triggerResponse> should match
// service_traits::DataType< ::your_smach::trigger >
template<>
struct DataType< ::your_smach::triggerResponse>
{
  static const char* value()
  {
    return DataType< ::your_smach::trigger >::value();
  }
  static const char* value(const ::your_smach::triggerResponse&)
  {
    return value();
  }
};

} // namespace service_traits
} // namespace ros

#endif // YOUR_SMACH_MESSAGE_TRIGGER_H