// Generated by gencpp from file donkey_car/DriveModeRequest.msg
// DO NOT EDIT!


#ifndef DONKEY_CAR_MESSAGE_DRIVEMODEREQUEST_H
#define DONKEY_CAR_MESSAGE_DRIVEMODEREQUEST_H


#include <string>
#include <vector>
#include <memory>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>

#include <donkey_car/Position.h>

namespace donkey_car
{
template <class ContainerAllocator>
struct DriveModeRequest_
{
  typedef DriveModeRequest_<ContainerAllocator> Type;

  DriveModeRequest_()
    : mode()
    , rpm(0.0)
    , radius(0.0)
    , track(0.0)
    , scale(0.0)
    , servos()  {
    }
  DriveModeRequest_(const ContainerAllocator& _alloc)
    : mode(_alloc)
    , rpm(0.0)
    , radius(0.0)
    , track(0.0)
    , scale(0.0)
    , servos(_alloc)  {
  (void)_alloc;
    }



   typedef std::basic_string<char, std::char_traits<char>, typename std::allocator_traits<ContainerAllocator>::template rebind_alloc<char>> _mode_type;
  _mode_type mode;

   typedef float _rpm_type;
  _rpm_type rpm;

   typedef float _radius_type;
  _radius_type radius;

   typedef float _track_type;
  _track_type track;

   typedef float _scale_type;
  _scale_type scale;

   typedef std::vector< ::donkey_car::Position_<ContainerAllocator> , typename std::allocator_traits<ContainerAllocator>::template rebind_alloc< ::donkey_car::Position_<ContainerAllocator> >> _servos_type;
  _servos_type servos;





  typedef boost::shared_ptr< ::donkey_car::DriveModeRequest_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::donkey_car::DriveModeRequest_<ContainerAllocator> const> ConstPtr;

}; // struct DriveModeRequest_

typedef ::donkey_car::DriveModeRequest_<std::allocator<void> > DriveModeRequest;

typedef boost::shared_ptr< ::donkey_car::DriveModeRequest > DriveModeRequestPtr;
typedef boost::shared_ptr< ::donkey_car::DriveModeRequest const> DriveModeRequestConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::donkey_car::DriveModeRequest_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::donkey_car::DriveModeRequest_<ContainerAllocator> >::stream(s, "", v);
return s;
}


template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator==(const ::donkey_car::DriveModeRequest_<ContainerAllocator1> & lhs, const ::donkey_car::DriveModeRequest_<ContainerAllocator2> & rhs)
{
  return lhs.mode == rhs.mode &&
    lhs.rpm == rhs.rpm &&
    lhs.radius == rhs.radius &&
    lhs.track == rhs.track &&
    lhs.scale == rhs.scale &&
    lhs.servos == rhs.servos;
}

template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator!=(const ::donkey_car::DriveModeRequest_<ContainerAllocator1> & lhs, const ::donkey_car::DriveModeRequest_<ContainerAllocator2> & rhs)
{
  return !(lhs == rhs);
}


} // namespace donkey_car

namespace ros
{
namespace message_traits
{





template <class ContainerAllocator>
struct IsMessage< ::donkey_car::DriveModeRequest_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::donkey_car::DriveModeRequest_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::donkey_car::DriveModeRequest_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::donkey_car::DriveModeRequest_<ContainerAllocator> const>
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::donkey_car::DriveModeRequest_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::donkey_car::DriveModeRequest_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::donkey_car::DriveModeRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "8696ff83760d5f4079edcd8ccb545ea0";
  }

  static const char* value(const ::donkey_car::DriveModeRequest_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x8696ff83760d5f40ULL;
  static const uint64_t static_value2 = 0x79edcd8ccb545ea0ULL;
};

template<class ContainerAllocator>
struct DataType< ::donkey_car::DriveModeRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "donkey_car/DriveModeRequest";
  }

  static const char* value(const ::donkey_car::DriveModeRequest_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::donkey_car::DriveModeRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "# the drive_mode service is used to assigned servos to various drive modes\n"
"# the drive modes determine how the assigned servos respond to geometry_msgs::Twist messages\n"
"# drive modes are one of: ackerman, differential, or mecanum\n"
"# to accurately convert velocity in m/s the controller needs to know three values:\n"
"#   the RPM    - the maximum output speed available from the drive motors\n"
"#   the radius - the drive wheel radius in meters\n"
"#   the track  - the distance between the left and right wheels in meters\n"
"# use the scale value to adjust incoming Twist values as needed to match the servo/motor capability\n"
"\n"
"\n"
"string mode\n"
"float32 rpm\n"
"float32 radius\n"
"float32 track\n"
"float32 scale\n"
"Position[] servos\n"
"\n"
"================================================================================\n"
"MSG: donkey_car/Position\n"
"# the position message is used when configuring drive mode to\n"
"# assign a  servo to a specific wheel positon in the drive system\n"
"# postions are specific toe the desired drive mode\n"
"# ackerman has only one position\n"
"# 1 = drive\n"
"# differential has two positons\n"
"# 1 = left, 2 = right\n"
"# mecanum has four positions\n"
"# 1 = front left, 2 = front right, 3 = rear left, 4 = rear right\n"
"# multiple servos/motors may be used for each positon\n"
"\n"
"int16 servo\n"
"int16 position\n"
;
  }

  static const char* value(const ::donkey_car::DriveModeRequest_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::donkey_car::DriveModeRequest_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.mode);
      stream.next(m.rpm);
      stream.next(m.radius);
      stream.next(m.track);
      stream.next(m.scale);
      stream.next(m.servos);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct DriveModeRequest_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::donkey_car::DriveModeRequest_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::donkey_car::DriveModeRequest_<ContainerAllocator>& v)
  {
    s << indent << "mode: ";
    Printer<std::basic_string<char, std::char_traits<char>, typename std::allocator_traits<ContainerAllocator>::template rebind_alloc<char>>>::stream(s, indent + "  ", v.mode);
    s << indent << "rpm: ";
    Printer<float>::stream(s, indent + "  ", v.rpm);
    s << indent << "radius: ";
    Printer<float>::stream(s, indent + "  ", v.radius);
    s << indent << "track: ";
    Printer<float>::stream(s, indent + "  ", v.track);
    s << indent << "scale: ";
    Printer<float>::stream(s, indent + "  ", v.scale);
    s << indent << "servos[]" << std::endl;
    for (size_t i = 0; i < v.servos.size(); ++i)
    {
      s << indent << "  servos[" << i << "]: ";
      s << std::endl;
      s << indent;
      Printer< ::donkey_car::Position_<ContainerAllocator> >::stream(s, indent + "    ", v.servos[i]);
    }
  }
};

} // namespace message_operations
} // namespace ros

#endif // DONKEY_CAR_MESSAGE_DRIVEMODEREQUEST_H