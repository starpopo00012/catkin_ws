// Generated by gencpp from file your_smach/GoToPositionRequest.msg
// DO NOT EDIT!


#ifndef YOUR_SMACH_MESSAGE_GOTOPOSITIONREQUEST_H
#define YOUR_SMACH_MESSAGE_GOTOPOSITIONREQUEST_H


#include <string>
#include <vector>
#include <memory>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>


namespace your_smach
{
template <class ContainerAllocator>
struct GoToPositionRequest_
{
  typedef GoToPositionRequest_<ContainerAllocator> Type;

  GoToPositionRequest_()
    : position_name()  {
    }
  GoToPositionRequest_(const ContainerAllocator& _alloc)
    : position_name(_alloc)  {
  (void)_alloc;
    }



   typedef std::basic_string<char, std::char_traits<char>, typename std::allocator_traits<ContainerAllocator>::template rebind_alloc<char>> _position_name_type;
  _position_name_type position_name;





  typedef boost::shared_ptr< ::your_smach::GoToPositionRequest_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::your_smach::GoToPositionRequest_<ContainerAllocator> const> ConstPtr;

}; // struct GoToPositionRequest_

typedef ::your_smach::GoToPositionRequest_<std::allocator<void> > GoToPositionRequest;

typedef boost::shared_ptr< ::your_smach::GoToPositionRequest > GoToPositionRequestPtr;
typedef boost::shared_ptr< ::your_smach::GoToPositionRequest const> GoToPositionRequestConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::your_smach::GoToPositionRequest_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::your_smach::GoToPositionRequest_<ContainerAllocator> >::stream(s, "", v);
return s;
}


template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator==(const ::your_smach::GoToPositionRequest_<ContainerAllocator1> & lhs, const ::your_smach::GoToPositionRequest_<ContainerAllocator2> & rhs)
{
  return lhs.position_name == rhs.position_name;
}

template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator!=(const ::your_smach::GoToPositionRequest_<ContainerAllocator1> & lhs, const ::your_smach::GoToPositionRequest_<ContainerAllocator2> & rhs)
{
  return !(lhs == rhs);
}


} // namespace your_smach

namespace ros
{
namespace message_traits
{





template <class ContainerAllocator>
struct IsMessage< ::your_smach::GoToPositionRequest_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::your_smach::GoToPositionRequest_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::your_smach::GoToPositionRequest_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::your_smach::GoToPositionRequest_<ContainerAllocator> const>
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::your_smach::GoToPositionRequest_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::your_smach::GoToPositionRequest_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::your_smach::GoToPositionRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "ecb356fc9af4af2f61c120c1f36d1d78";
  }

  static const char* value(const ::your_smach::GoToPositionRequest_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0xecb356fc9af4af2fULL;
  static const uint64_t static_value2 = 0x61c120c1f36d1d78ULL;
};

template<class ContainerAllocator>
struct DataType< ::your_smach::GoToPositionRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "your_smach/GoToPositionRequest";
  }

  static const char* value(const ::your_smach::GoToPositionRequest_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::your_smach::GoToPositionRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "string position_name\n"
;
  }

  static const char* value(const ::your_smach::GoToPositionRequest_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::your_smach::GoToPositionRequest_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.position_name);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct GoToPositionRequest_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::your_smach::GoToPositionRequest_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::your_smach::GoToPositionRequest_<ContainerAllocator>& v)
  {
    s << indent << "position_name: ";
    Printer<std::basic_string<char, std::char_traits<char>, typename std::allocator_traits<ContainerAllocator>::template rebind_alloc<char>>>::stream(s, indent + "  ", v.position_name);
  }
};

} // namespace message_operations
} // namespace ros

#endif // YOUR_SMACH_MESSAGE_GOTOPOSITIONREQUEST_H
