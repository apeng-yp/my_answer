; Auto-generated. Do not edit!


(cl:in-package node_robot_msgs-msg)


;//! \htmlinclude agent_feedback.msg.html

(cl:defclass <agent_feedback> (roslisp-msg-protocol:ros-message)
  ((robot_id
    :reader robot_id
    :initarg :robot_id
    :type (cl:vector cl:integer)
   :initform (cl:make-array 0 :element-type 'cl:integer :initial-element 0))
   (working_task_id
    :reader working_task_id
    :initarg :working_task_id
    :type (cl:vector cl:integer)
   :initform (cl:make-array 0 :element-type 'cl:integer :initial-element 0))
   (robot_state
    :reader robot_state
    :initarg :robot_state
    :type (cl:vector cl:string)
   :initform (cl:make-array 0 :element-type 'cl:string :initial-element "")))
)

(cl:defclass agent_feedback (<agent_feedback>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <agent_feedback>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'agent_feedback)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name node_robot_msgs-msg:<agent_feedback> is deprecated: use node_robot_msgs-msg:agent_feedback instead.")))

(cl:ensure-generic-function 'robot_id-val :lambda-list '(m))
(cl:defmethod robot_id-val ((m <agent_feedback>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader node_robot_msgs-msg:robot_id-val is deprecated.  Use node_robot_msgs-msg:robot_id instead.")
  (robot_id m))

(cl:ensure-generic-function 'working_task_id-val :lambda-list '(m))
(cl:defmethod working_task_id-val ((m <agent_feedback>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader node_robot_msgs-msg:working_task_id-val is deprecated.  Use node_robot_msgs-msg:working_task_id instead.")
  (working_task_id m))

(cl:ensure-generic-function 'robot_state-val :lambda-list '(m))
(cl:defmethod robot_state-val ((m <agent_feedback>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader node_robot_msgs-msg:robot_state-val is deprecated.  Use node_robot_msgs-msg:robot_state instead.")
  (robot_state m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <agent_feedback>) ostream)
  "Serializes a message object of type '<agent_feedback>"
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'robot_id))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:write-byte (cl:ldb (cl:byte 8 0) ele) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) ele) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) ele) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) ele) ostream))
   (cl:slot-value msg 'robot_id))
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'working_task_id))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:write-byte (cl:ldb (cl:byte 8 0) ele) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) ele) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) ele) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) ele) ostream))
   (cl:slot-value msg 'working_task_id))
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'robot_state))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:let ((__ros_str_len (cl:length ele)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) ele))
   (cl:slot-value msg 'robot_state))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <agent_feedback>) istream)
  "Deserializes a message object of type '<agent_feedback>"
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'robot_id) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'robot_id)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:aref vals i)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:aref vals i)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:aref vals i)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:aref vals i)) (cl:read-byte istream)))))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'working_task_id) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'working_task_id)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:aref vals i)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:aref vals i)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:aref vals i)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:aref vals i)) (cl:read-byte istream)))))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'robot_state) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'robot_state)))
    (cl:dotimes (i __ros_arr_len)
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:aref vals i) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:aref vals i) __ros_str_idx) (cl:code-char (cl:read-byte istream))))))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<agent_feedback>)))
  "Returns string type for a message object of type '<agent_feedback>"
  "node_robot_msgs/agent_feedback")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'agent_feedback)))
  "Returns string type for a message object of type 'agent_feedback"
  "node_robot_msgs/agent_feedback")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<agent_feedback>)))
  "Returns md5sum for a message object of type '<agent_feedback>"
  "663b43d5db7457c250c4018720b5440d")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'agent_feedback)))
  "Returns md5sum for a message object of type 'agent_feedback"
  "663b43d5db7457c250c4018720b5440d")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<agent_feedback>)))
  "Returns full string definition for message of type '<agent_feedback>"
  (cl:format cl:nil "uint32[]  robot_id~%uint32[]  working_task_id ~%string[]  robot_state~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'agent_feedback)))
  "Returns full string definition for message of type 'agent_feedback"
  (cl:format cl:nil "uint32[]  robot_id~%uint32[]  working_task_id ~%string[]  robot_state~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <agent_feedback>))
  (cl:+ 0
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'robot_id) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 4)))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'working_task_id) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 4)))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'robot_state) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 4 (cl:length ele))))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <agent_feedback>))
  "Converts a ROS message object to a list"
  (cl:list 'agent_feedback
    (cl:cons ':robot_id (robot_id msg))
    (cl:cons ':working_task_id (working_task_id msg))
    (cl:cons ':robot_state (robot_state msg))
))
