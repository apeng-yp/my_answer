; Auto-generated. Do not edit!


(cl:in-package node_robot_msgs-srv)


;//! \htmlinclude robot_info_report-request.msg.html

(cl:defclass <robot_info_report-request> (roslisp-msg-protocol:ros-message)
  ((robot_id
    :reader robot_id
    :initarg :robot_id
    :type cl:integer
    :initform 0)
   (working_task_id
    :reader working_task_id
    :initarg :working_task_id
    :type cl:integer
    :initform 0)
   (robot_state
    :reader robot_state
    :initarg :robot_state
    :type cl:string
    :initform ""))
)

(cl:defclass robot_info_report-request (<robot_info_report-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <robot_info_report-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'robot_info_report-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name node_robot_msgs-srv:<robot_info_report-request> is deprecated: use node_robot_msgs-srv:robot_info_report-request instead.")))

(cl:ensure-generic-function 'robot_id-val :lambda-list '(m))
(cl:defmethod robot_id-val ((m <robot_info_report-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader node_robot_msgs-srv:robot_id-val is deprecated.  Use node_robot_msgs-srv:robot_id instead.")
  (robot_id m))

(cl:ensure-generic-function 'working_task_id-val :lambda-list '(m))
(cl:defmethod working_task_id-val ((m <robot_info_report-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader node_robot_msgs-srv:working_task_id-val is deprecated.  Use node_robot_msgs-srv:working_task_id instead.")
  (working_task_id m))

(cl:ensure-generic-function 'robot_state-val :lambda-list '(m))
(cl:defmethod robot_state-val ((m <robot_info_report-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader node_robot_msgs-srv:robot_state-val is deprecated.  Use node_robot_msgs-srv:robot_state instead.")
  (robot_state m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <robot_info_report-request>) ostream)
  "Serializes a message object of type '<robot_info_report-request>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'robot_id)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'robot_id)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'robot_id)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'robot_id)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'working_task_id)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'working_task_id)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'working_task_id)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'working_task_id)) ostream)
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'robot_state))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'robot_state))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <robot_info_report-request>) istream)
  "Deserializes a message object of type '<robot_info_report-request>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'robot_id)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'robot_id)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'robot_id)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'robot_id)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'working_task_id)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'working_task_id)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'working_task_id)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'working_task_id)) (cl:read-byte istream))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'robot_state) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'robot_state) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<robot_info_report-request>)))
  "Returns string type for a service object of type '<robot_info_report-request>"
  "node_robot_msgs/robot_info_reportRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'robot_info_report-request)))
  "Returns string type for a service object of type 'robot_info_report-request"
  "node_robot_msgs/robot_info_reportRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<robot_info_report-request>)))
  "Returns md5sum for a message object of type '<robot_info_report-request>"
  "64872e7e5a7ad222489d3e9f403efca1")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'robot_info_report-request)))
  "Returns md5sum for a message object of type 'robot_info_report-request"
  "64872e7e5a7ad222489d3e9f403efca1")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<robot_info_report-request>)))
  "Returns full string definition for message of type '<robot_info_report-request>"
  (cl:format cl:nil "uint32 robot_id~%uint32 working_task_id~%string robot_state~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'robot_info_report-request)))
  "Returns full string definition for message of type 'robot_info_report-request"
  (cl:format cl:nil "uint32 robot_id~%uint32 working_task_id~%string robot_state~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <robot_info_report-request>))
  (cl:+ 0
     4
     4
     4 (cl:length (cl:slot-value msg 'robot_state))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <robot_info_report-request>))
  "Converts a ROS message object to a list"
  (cl:list 'robot_info_report-request
    (cl:cons ':robot_id (robot_id msg))
    (cl:cons ':working_task_id (working_task_id msg))
    (cl:cons ':robot_state (robot_state msg))
))
;//! \htmlinclude robot_info_report-response.msg.html

(cl:defclass <robot_info_report-response> (roslisp-msg-protocol:ros-message)
  ((ret
    :reader ret
    :initarg :ret
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass robot_info_report-response (<robot_info_report-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <robot_info_report-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'robot_info_report-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name node_robot_msgs-srv:<robot_info_report-response> is deprecated: use node_robot_msgs-srv:robot_info_report-response instead.")))

(cl:ensure-generic-function 'ret-val :lambda-list '(m))
(cl:defmethod ret-val ((m <robot_info_report-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader node_robot_msgs-srv:ret-val is deprecated.  Use node_robot_msgs-srv:ret instead.")
  (ret m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <robot_info_report-response>) ostream)
  "Serializes a message object of type '<robot_info_report-response>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'ret) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <robot_info_report-response>) istream)
  "Deserializes a message object of type '<robot_info_report-response>"
    (cl:setf (cl:slot-value msg 'ret) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<robot_info_report-response>)))
  "Returns string type for a service object of type '<robot_info_report-response>"
  "node_robot_msgs/robot_info_reportResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'robot_info_report-response)))
  "Returns string type for a service object of type 'robot_info_report-response"
  "node_robot_msgs/robot_info_reportResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<robot_info_report-response>)))
  "Returns md5sum for a message object of type '<robot_info_report-response>"
  "64872e7e5a7ad222489d3e9f403efca1")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'robot_info_report-response)))
  "Returns md5sum for a message object of type 'robot_info_report-response"
  "64872e7e5a7ad222489d3e9f403efca1")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<robot_info_report-response>)))
  "Returns full string definition for message of type '<robot_info_report-response>"
  (cl:format cl:nil "bool ret~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'robot_info_report-response)))
  "Returns full string definition for message of type 'robot_info_report-response"
  (cl:format cl:nil "bool ret~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <robot_info_report-response>))
  (cl:+ 0
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <robot_info_report-response>))
  "Converts a ROS message object to a list"
  (cl:list 'robot_info_report-response
    (cl:cons ':ret (ret msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'robot_info_report)))
  'robot_info_report-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'robot_info_report)))
  'robot_info_report-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'robot_info_report)))
  "Returns string type for a service object of type '<robot_info_report>"
  "node_robot_msgs/robot_info_report")