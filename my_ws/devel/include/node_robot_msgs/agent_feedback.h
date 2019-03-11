// Generated by gencpp from file node_robot_msgs/agent_feedback.msg
// DO NOT EDIT!


#ifndef NODE_ROBOT_MSGS_MESSAGE_AGENT_FEEDBACK_H
#define NODE_ROBOT_MSGS_MESSAGE_AGENT_FEEDBACK_H


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
struct agent_feedback_
{
  typedef agent_feedback_<ContainerAllocator> Type;

  agent_feedback_()
    : robot_id()
    , working_task_id()
    , robot_state()  {
    }
  agent_feedback_(const ContainerAllocator& _alloc)
    : robot_id(_alloc)
    , working_task_id(_alloc)
    , robot_state(_alloc)  {
  (void)_alloc;
    }



   typedef std::vector<uint32_t, typename ContainerAllocator::template rebind<uint32_t>::other >  _robot_id_type;
  _robot_id_type robot_id;

   typedef std::vector<uint32_t, typename ContainerAllocator::template rebind<uint32_t>::other >  _working_task_id_type;
  _working_task_id_type working_task_id;

   typedef std::vector<std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other > , typename ContainerAllocator::template rebind<std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other > >::other >  _robot_state_type;
  _robot_state_type robot_state;





  typedef boost::shared_ptr< ::node_robot_msgs::agent_feedback_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::node_robot_msgs::agent_feedback_<ContainerAllocator> const> ConstPtr;

}; // struct agent_feedback_

typedef ::node_robot_msgs::agent_feedback_<std::allocator<void> > agent_feedback;

typedef boost::shared_ptr< ::node_robot_msgs::agent_feedback > agent_feedbackPtr;
typedef boost::shared_ptr< ::node_robot_msgs::agent_feedback const> agent_feedbackConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::node_robot_msgs::agent_feedback_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::node_robot_msgs::agent_feedback_<ContainerAllocator> >::stream(s, "", v);
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
struct IsFixedSize< ::node_robot_msgs::agent_feedback_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::node_robot_msgs::agent_feedback_<ContainerAllocator> const>
  : FalseType
  { };

template <class ContainerAllocator>
struct IsMessage< ::node_robot_msgs::agent_feedback_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::node_robot_msgs::agent_feedback_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::node_robot_msgs::agent_feedback_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::node_robot_msgs::agent_feedback_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::node_robot_msgs::agent_feedback_<ContainerAllocator> >
{
  static const char* value()
  {
    return "663b43d5db7457c250c4018720b5440d";
  }

  static const char* value(const ::node_robot_msgs::agent_feedback_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x663b43d5db7457c2ULL;
  static const uint64_t static_value2 = 0x50c4018720b5440dULL;
};

template<class ContainerAllocator>
struct DataType< ::node_robot_msgs::agent_feedback_<ContainerAllocator> >
{
  static const char* value()
  {
    return "node_robot_msgs/agent_feedback";
  }

  static const char* value(const ::node_robot_msgs::agent_feedback_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::node_robot_msgs::agent_feedback_<ContainerAllocator> >
{
  static const char* value()
  {
    return "uint32[]  robot_id\n\
uint32[]  working_task_id \n\
string[]  robot_state\n\
\n\
";
  }

  static const char* value(const ::node_robot_msgs::agent_feedback_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::node_robot_msgs::agent_feedback_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.robot_id);
      stream.next(m.working_task_id);
      stream.next(m.robot_state);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct agent_feedback_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::node_robot_msgs::agent_feedback_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::node_robot_msgs::agent_feedback_<ContainerAllocator>& v)
  {
    s << indent << "robot_id[]" << std::endl;
    for (size_t i = 0; i < v.robot_id.size(); ++i)
    {
      s << indent << "  robot_id[" << i << "]: ";
      Printer<uint32_t>::stream(s, indent + "  ", v.robot_id[i]);
    }
    s << indent << "working_task_id[]" << std::endl;
    for (size_t i = 0; i < v.working_task_id.size(); ++i)
    {
      s << indent << "  working_task_id[" << i << "]: ";
      Printer<uint32_t>::stream(s, indent + "  ", v.working_task_id[i]);
    }
    s << indent << "robot_state[]" << std::endl;
    for (size_t i = 0; i < v.robot_state.size(); ++i)
    {
      s << indent << "  robot_state[" << i << "]: ";
      Printer<std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other > >::stream(s, indent + "  ", v.robot_state[i]);
    }
  }
};

} // namespace message_operations
} // namespace ros

#endif // NODE_ROBOT_MSGS_MESSAGE_AGENT_FEEDBACK_H
