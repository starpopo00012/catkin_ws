// Generated by gencpp from file donkey_car/ServosConfig.msg
// DO NOT EDIT!


#ifndef DONKEY_CAR_MESSAGE_SERVOSCONFIG_H
#define DONKEY_CAR_MESSAGE_SERVOSCONFIG_H

#include <ros/service_traits.h>


#include <donkey_car/ServosConfigRequest.h>
#include <donkey_car/ServosConfigResponse.h>


namespace donkey_car
{

struct ServosConfig
{

typedef ServosConfigRequest Request;
typedef ServosConfigResponse Response;
Request request;
Response response;

typedef Request RequestType;
typedef Response ResponseType;

}; // struct ServosConfig
} // namespace donkey_car


namespace ros
{
namespace service_traits
{


template<>
struct MD5Sum< ::donkey_car::ServosConfig > {
  static const char* value()
  {
    return "29a8ed89c4fc7505dd84e9625c298b65";
  }

  static const char* value(const ::donkey_car::ServosConfig&) { return value(); }
};

template<>
struct DataType< ::donkey_car::ServosConfig > {
  static const char* value()
  {
    return "donkey_car/ServosConfig";
  }

  static const char* value(const ::donkey_car::ServosConfig&) { return value(); }
};


// service_traits::MD5Sum< ::donkey_car::ServosConfigRequest> should match
// service_traits::MD5Sum< ::donkey_car::ServosConfig >
template<>
struct MD5Sum< ::donkey_car::ServosConfigRequest>
{
  static const char* value()
  {
    return MD5Sum< ::donkey_car::ServosConfig >::value();
  }
  static const char* value(const ::donkey_car::ServosConfigRequest&)
  {
    return value();
  }
};

// service_traits::DataType< ::donkey_car::ServosConfigRequest> should match
// service_traits::DataType< ::donkey_car::ServosConfig >
template<>
struct DataType< ::donkey_car::ServosConfigRequest>
{
  static const char* value()
  {
    return DataType< ::donkey_car::ServosConfig >::value();
  }
  static const char* value(const ::donkey_car::ServosConfigRequest&)
  {
    return value();
  }
};

// service_traits::MD5Sum< ::donkey_car::ServosConfigResponse> should match
// service_traits::MD5Sum< ::donkey_car::ServosConfig >
template<>
struct MD5Sum< ::donkey_car::ServosConfigResponse>
{
  static const char* value()
  {
    return MD5Sum< ::donkey_car::ServosConfig >::value();
  }
  static const char* value(const ::donkey_car::ServosConfigResponse&)
  {
    return value();
  }
};

// service_traits::DataType< ::donkey_car::ServosConfigResponse> should match
// service_traits::DataType< ::donkey_car::ServosConfig >
template<>
struct DataType< ::donkey_car::ServosConfigResponse>
{
  static const char* value()
  {
    return DataType< ::donkey_car::ServosConfig >::value();
  }
  static const char* value(const ::donkey_car::ServosConfigResponse&)
  {
    return value();
  }
};

} // namespace service_traits
} // namespace ros

#endif // DONKEY_CAR_MESSAGE_SERVOSCONFIG_H
