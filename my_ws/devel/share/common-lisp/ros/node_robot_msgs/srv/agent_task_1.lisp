; Auto-generated. Do not edit!


(cl:in-package node_robot_msgs-srv)


;//! \htmlinclude agent_task_1-request.msg.html

(cl:defclass <agent_task_1-request> (roslisp-msg-protocol:ros-message)
  ((task_id
    :reader task_id
    :initarg :task_id
    :type cl:integer
    :initform 0))
)

(cl:defclass agent_task_1-request (<agent_task_1-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <agent_task_1-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'agent_task_1-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name node_robot_msgs-srv:<agent_task_1-request> is deprecated: use node_robot_msgs-srv:agent_task_1-request instead.")))

(cl:ensure-generic-function 'task_id-val :lambda-list '(m))
(cl:defmethod task_id-val ((m <agent_task_1-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader node_robot_msgs-srv:task_id-val is deprecated.  Use node_robot_msgs-srv:task_id instead.")
  (task_id m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <agent_task_1-request>) ostream)
  "Serializes a message object of type '<agent_task_1-request>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'task_id)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'task_id)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'task_id)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'task_id)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <agent_task_1-request>) istream)
  "Deserializes a message object of type '<agent_task_1-request>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'task_id)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'task_id)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'task_id)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'task_id)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<agent_task_1-request>)))
  "Returns string type for a service object of type '<agent_task_1-request>"
  "node_robot_msgs/agent_task_1Request")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'agent_task_1-request)))
  "Returns string type for a service object of type 'agent_task_1-request"
  "node_robot_msgs/agent_task_1Request")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<agent_task_1-request>)))
  "Returns md5sum for a message object of type '<agent_task_1-request>"
  "507b103286c30709359161b3b51d9c4a")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'agent_task_1-request)))
  "Returns md5sum for a message object of type 'agent_task_1-request"
  "507b103286c30709359161b3b51d9c4a")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<agent_task_1-request>)))
  "Returns full string definition for message of type '<agent_task_1-request>"
  (cl:format cl:nil "uint32 task_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'agent_task_1-request)))
  "Returns full string definition for message of type 'agent_task_1-request"
  (cl:format cl:nil "uint32 task_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <agent_task_1-request>))
  (cl:+ 0
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <agent_task_1-request>))
  "Converts a ROS message object to a list"
  (cl:list 'agent_task_1-request
    (cl:cons ':task_id (task_id msg))
))
;//! \htmlinclude agent_task_1-response.msg.html

(cl:defclass <agent_task_1-response> (roslisp-msg-protocol:ros-message)
  ((ret
    :reader ret
    :initarg :ret
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass agent_task_1-response (<agent_task_1-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <agent_task_1-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'agent_task_1-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name node_robot_msgs-srv:<agent_task_1-response> is deprecated: use node_robot_msgs-srv:agent_task_1-response instead.")))

(cl:ensure-generic-function 'ret-val :lambda-list '(m))
(cl:defmethod ret-val ((m <agent_task_1-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader node_robot_msgs-srv:ret-val is deprecated.  Use node_robot_msgs-srv:ret instead.")
  (ret m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <agent_task_1-response>) ostream)
  "Serializes a message object of type '<agent_task_1-response>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'ret) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <agent_task_1-response>) istream)
  "Deserializes a message object of type '<agent_task_1-response>"
    (cl:setf (cl:slot-value msg 'ret) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<agent_task_1-response>)))
  "Returns string type for a service object of type '<agent_task_1-response>"
  "node_robot_msgs/agent_task_1Response")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'agent_task_1-response)))
  "Returns string type for a service object of type 'agent_task_1-response"
  "node_robot_msgs/agent_task_1Response")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<agent_task_1-response>)))
  "Returns md5sum for a message object of type '<agent_task_1-response>"
  "507b103286c30709359161b3b51d9c4a")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'agent_task_1-response)))
  "Returns md5sum for a message object of type 'agent_task_1-response"
  "507b103286c30709359161b3b51d9c4a")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<agent_task_1-response>)))
  "Returns full string definition for message of type '<agent_task_1-response>"
  (cl:format cl:nil "bool  ret~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'agent_task_1-response)))
  "Returns full string definition for message of type 'agent_task_1-response"
  (cl:format cl:nil "bool  ret~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <agent_task_1-response>))
  (cl:+ 0
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <agent_task_1-response>))
  "Converts a ROS message object to a list"
  (cl:list 'agent_task_1-response
    (cl:cons ':ret (ret msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'agent_task_1)))
  'agent_task_1-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'agent_task_1)))
  'agent_task_1-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'agent_task_1)))
  "Returns string type for a service object of type '<agent_task_1>"
  "node_robot_msgs/agent_task_1")