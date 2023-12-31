// Generated by gencpp from file donkey_car/StopServosResponse.msg
// DO NOT EDIT!


#ifndef DONKEY_CAR_MESSAGE_STOPSERVOSRESPONSE_H
#define DONKEY_CAR_MESSAGE_STOPSERVOSRESPONSE_H


#include <string>
#include <vector>
#include <memory>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>


namespace donkey_car
{
template <class ContainerAllocator>
struct StopServosResponse_
{
  typedef StopServosResponse_<ContainerAllocator> Type;

  StopServosResponse_()
    {
    }
  StopServosResponse_(const ContainerAllocator& _alloc)
    {
  (void)_alloc;
    }







  typedef boost::shared_ptr< ::donkey_car::StopServosResponse_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::donkey_car::StopServosResponse_<ContainerAllocator> const> ConstPtr;

}; // struct StopServosResponse_

typedef ::donkey_car::StopServosResponse_<std::allocator<void> > StopServosResponse;

typedef boost::shared_ptr< ::donkey_car::StopServosResponse > StopServosResponsePtr;
typedef boost::shared_ptr< ::donkey_car::StopServosResponse const> StopServosResponseConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::donkey_car::StopServosResponse_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::donkey_car::StopServosResponse_<ContainerAllocator> >::stream(s, "", v);
return s;
}


} // namespace donkey_car

namespace ros
{
namespace message_traits
{





template <class ContainerAllocator>
struct IsMessage< ::donkey_car::StopServosResponse_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::donkey_car::StopServosResponse_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::donkey_car::StopServosResponse_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::donkey_car::StopServosResponse_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::donkey_car::StopServosResponse_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::donkey_car::StopServosResponse_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::donkey_car::StopServosResponse_<ContainerAllocator> >
{
  static const char* value()
  {
    return "d41d8cd98f00b204e9800998ecf8427e";
  }

  static const char* value(const ::donkey_car::StopServosResponse_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0xd41d8cd98f00b204ULL;
  static const uint64_t static_value2 = 0xe9800998ecf8427eULL;
};

template<class ContainerAllocator>
struct DataType< ::donkey_car::StopServosResponse_<ContainerAllocator> >
{
  static const char* value()
  {
    return "donkey_car/StopServosResponse";
  }

  static const char* value(const ::donkey_car::StopServosResponse_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::donkey_car::StopServosResponse_<ContainerAllocator> >
{
  static const char* value()
  {
    return "\n"
;
  }

  static const char* value(const ::donkey_car::StopServosResponse_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::donkey_car::StopServosResponse_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream&, T)
    {}

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct StopServosResponse_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::donkey_car::StopServosResponse_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream&, const std::string&, const ::donkey_car::StopServosResponse_<ContainerAllocator>&)
  {}
};

} // namespace message_operations
} // namespace ros

#endif // DONKEY_CAR_MESSAGE_STOPSERVOSRESPONSE_H
