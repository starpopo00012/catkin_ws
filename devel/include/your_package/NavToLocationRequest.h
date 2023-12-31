// Generated by gencpp from file your_package/NavToLocationRequest.msg
// DO NOT EDIT!


#ifndef YOUR_PACKAGE_MESSAGE_NAVTOLOCATIONREQUEST_H
#define YOUR_PACKAGE_MESSAGE_NAVTOLOCATIONREQUEST_H


#include <string>
#include <vector>
#include <memory>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>


namespace your_package
{
template <class ContainerAllocator>
struct NavToLocationRequest_
{
  typedef NavToLocationRequest_<ContainerAllocator> Type;

  NavToLocationRequest_()
    : location_name()  {
    }
  NavToLocationRequest_(const ContainerAllocator& _alloc)
    : location_name(_alloc)  {
  (void)_alloc;
    }



   typedef std::basic_string<char, std::char_traits<char>, typename std::allocator_traits<ContainerAllocator>::template rebind_alloc<char>> _location_name_type;
  _location_name_type location_name;





  typedef boost::shared_ptr< ::your_package::NavToLocationRequest_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::your_package::NavToLocationRequest_<ContainerAllocator> const> ConstPtr;

}; // struct NavToLocationRequest_

typedef ::your_package::NavToLocationRequest_<std::allocator<void> > NavToLocationRequest;

typedef boost::shared_ptr< ::your_package::NavToLocationRequest > NavToLocationRequestPtr;
typedef boost::shared_ptr< ::your_package::NavToLocationRequest const> NavToLocationRequestConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::your_package::NavToLocationRequest_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::your_package::NavToLocationRequest_<ContainerAllocator> >::stream(s, "", v);
return s;
}


template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator==(const ::your_package::NavToLocationRequest_<ContainerAllocator1> & lhs, const ::your_package::NavToLocationRequest_<ContainerAllocator2> & rhs)
{
  return lhs.location_name == rhs.location_name;
}

template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator!=(const ::your_package::NavToLocationRequest_<ContainerAllocator1> & lhs, const ::your_package::NavToLocationRequest_<ContainerAllocator2> & rhs)
{
  return !(lhs == rhs);
}


} // namespace your_package

namespace ros
{
namespace message_traits
{





template <class ContainerAllocator>
struct IsMessage< ::your_package::NavToLocationRequest_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::your_package::NavToLocationRequest_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::your_package::NavToLocationRequest_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::your_package::NavToLocationRequest_<ContainerAllocator> const>
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::your_package::NavToLocationRequest_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::your_package::NavToLocationRequest_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::your_package::NavToLocationRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "73faf335e0992a31df2e9630ffb73b0b";
  }

  static const char* value(const ::your_package::NavToLocationRequest_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x73faf335e0992a31ULL;
  static const uint64_t static_value2 = 0xdf2e9630ffb73b0bULL;
};

template<class ContainerAllocator>
struct DataType< ::your_package::NavToLocationRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "your_package/NavToLocationRequest";
  }

  static const char* value(const ::your_package::NavToLocationRequest_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::your_package::NavToLocationRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "string location_name\n"
;
  }

  static const char* value(const ::your_package::NavToLocationRequest_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::your_package::NavToLocationRequest_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.location_name);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct NavToLocationRequest_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::your_package::NavToLocationRequest_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::your_package::NavToLocationRequest_<ContainerAllocator>& v)
  {
    s << indent << "location_name: ";
    Printer<std::basic_string<char, std::char_traits<char>, typename std::allocator_traits<ContainerAllocator>::template rebind_alloc<char>>>::stream(s, indent + "  ", v.location_name);
  }
};

} // namespace message_operations
} // namespace ros

#endif // YOUR_PACKAGE_MESSAGE_NAVTOLOCATIONREQUEST_H
