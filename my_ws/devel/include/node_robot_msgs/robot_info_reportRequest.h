// Generated by gencpp from file node_robot_msgs/robot_info_reportRequest.msg
// DO NOT EDIT!


#ifndef NODE_ROBOT_MSGS_MESSAGE_ROBOT_INFO_REPORTREQUEST_H
#define NODE_ROBOT_MSGS_MESSAGE_ROBOT_INFO_REPORTREQUEST_H


#include <string>
#include <vector>
#include <map>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>


namespace node_robot_msgs
{
template <class ContainerAllocator>
struct robot_info_reportRequest_
{
  typedef robot_info_reportRequest_<ContainerAllocator> Type;

  robot_info_reportRequest_()
    : robot_id(0)
    , working_task_id(0)
    , robot_state()  {
    }
  robot_info_reportRequest_(const ContainerAllocator& _alloc)
    : robot_id(0)
    , working_task_id(0)
    , robot_state(_alloc)  {
  (void)_alloc;
    }



   typedef uint32_t _robot_id_type;
  _robot_id_type robot_id;

   typedef uint32_t _working_task_id_type;
  _working_task_id_type working_task_id;

   typedef std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other >  _robot_state_type;
  _robot_state_type robot_state;





  typedef boost::shared_ptr< ::node_robot_msgs::robot_info_reportRequest_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::node_robot_msgs::robot_info_reportRequest_<ContainerAllocator> const> ConstPtr;

}; // struct robot_info_reportRequest_

typedef ::node_robot_msgs::robot_info_reportRequest_<std::allocator<void> > robot_info_reportRequest;

typedef boost::shared_ptr< ::node_robot_msgs::robot_info_reportRequest > robot_info_reportRequestPtr;
typedef boost::shared_ptr< ::node_robot_msgs::robot_info_reportRequest const> robot_info_reportRequestConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::node_robot_msgs::robot_info_reportRequest_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::node_robot_msgs::robot_info_reportRequest_<ContainerAllocator> >::stream(s, "", v);
return s;
}

} // namespace node_robot_msgs

namespace ros
{
namespace message_traits
{



// BOOLTRAITS {'IsFixedSize': False, 'IsMessage': True, 'HasHeader': False}
// {'node_robot_msgs': ['/home/apeng/yp/privatespace/my_ws/src/node_robot_msgs/msg'], 'std_msgs': ['/opt/ros/kinetic/share/std_msgs/cmake/../msg']}

// !!!!!!!!!!! ['__class__', '__delattr__', '__dict__', '__doc__', '__eq__', '__format__', '__getattribute__', '__hash__', '__init__', '__module__', '__ne__', '__new__', '__reduce__', '__reduce_ex__', '__repr__', '__setattr__', '__sizeof__', '__str__', '__subclasshook__', '__weakref__', '_parsed_fields', 'constants', 'fields', 'full_name', 'has_header', 'header_present', 'names', 'package', 'parsed_fields', 'short_name', 'text', 'types']




template <class ContainerAllocator>
struct IsFixedSize< ::node_robot_msgs::robot_info_reportRequest_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::node_robot_msgs::robot_info_reportRequest_<ContainerAllocator> const>
  : FalseType
  { };

template <class ContainerAllocator>
struct IsMessage< ::node_robot_msgs::robot_info_reportRequest_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::node_robot_msgs::robot_info_reportRequest_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::node_robot_msgs::robot_info_reportRequest_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::node_robot_msgs::robot_info_reportRequest_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::node_robot_msgs::robot_info_reportRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "fb76705367fabc2ea54b34b76e34371d";
  }

  static const char* value(const ::node_robot_msgs::robot_info_reportRequest_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0xfb76705367fabc2eULL;
  static const uint64_t static_value2 = 0xa54b34b76e34371dULL;
};

template<class ContainerAllocator>
struct DataType< ::node_robot_msgs::robot_info_reportRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "node_robot_msgs/robot_info_reportRequest";
  }

  static const char* value(const ::node_robot_msgs::robot_info_reportRequest_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::node_robot_msgs::robot_info_reportRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "uint32 robot_id\n\
uint32 working_task_id\n\
string robot_state\n\
";
  }

  static const char* value(const ::node_robot_msgs::robot_info_reportRequest_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::node_robot_msgs::robot_info_reportRequest_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.robot_id);
      stream.next(m.working_task_id);
      stream.next(m.robot_state);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct robot_info_reportRequest_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::node_robot_msgs::robot_info_reportRequest_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::node_robot_msgs::robot_info_reportRequest_<ContainerAllocator>& v)
  {
    s << indent << "robot_id: ";
    Printer<uint32_t>::stream(s, indent + "  ", v.robot_id);
    s << indent << "working_task_id: ";
    Printer<uint32_t>::stream(s, indent + "  ", v.working_task_id);
    s << indent << "robot_state: ";
    Printer<std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other > >::stream(s, indent + "  ", v.robot_state);
  }
};

} // namespace message_operations
} // namespace ros

#endif // NODE_ROBOT_MSGS_MESSAGE_ROBOT_INFO_REPORTREQUEST_H
