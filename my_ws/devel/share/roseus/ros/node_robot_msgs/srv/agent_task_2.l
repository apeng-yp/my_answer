;; Auto-generated. Do not edit!


(when (boundp 'node_robot_msgs::agent_task_2)
  (if (not (find-package "NODE_ROBOT_MSGS"))
    (make-package "NODE_ROBOT_MSGS"))
  (shadow 'agent_task_2 (find-package "NODE_ROBOT_MSGS")))
(unless (find-package "NODE_ROBOT_MSGS::AGENT_TASK_2")
  (make-package "NODE_ROBOT_MSGS::AGENT_TASK_2"))
(unless (find-package "NODE_ROBOT_MSGS::AGENT_TASK_2REQUEST")
  (make-package "NODE_ROBOT_MSGS::AGENT_TASK_2REQUEST"))
(unless (find-package "NODE_ROBOT_MSGS::AGENT_TASK_2RESPONSE")
  (make-package "NODE_ROBOT_MSGS::AGENT_TASK_2RESPONSE"))

(in-package "ROS")





(defclass node_robot_msgs::agent_task_2Request
  :super ros::object
  :slots (_task_id ))

(defmethod node_robot_msgs::agent_task_2Request
  (:init
   (&key
    ((:task_id __task_id) 0)
    )
   (send-super :init)
   (setq _task_id (round __task_id))
   self)
  (:task_id
   (&optional __task_id)
   (if __task_id (setq _task_id __task_id)) _task_id)
  (:serialization-length
   ()
   (+
    ;; uint32 _task_id
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; uint32 _task_id
       (write-long _task_id s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; uint32 _task_id
     (setq _task_id (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;;
   self)
  )

(defclass node_robot_msgs::agent_task_2Response
  :super ros::object
  :slots (_ret ))

(defmethod node_robot_msgs::agent_task_2Response
  (:init
   (&key
    ((:ret __ret) nil)
    )
   (send-super :init)
   (setq _ret __ret)
   self)
  (:ret
   (&optional __ret)
   (if __ret (setq _ret __ret)) _ret)
  (:serialization-length
   ()
   (+
    ;; bool _ret
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; bool _ret
       (if _ret (write-byte -1 s) (write-byte 0 s))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; bool _ret
     (setq _ret (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;;
   self)
  )

(defclass node_robot_msgs::agent_task_2
  :super ros::object
  :slots ())

(setf (get node_robot_msgs::agent_task_2 :md5sum-) "507b103286c30709359161b3b51d9c4a")
(setf (get node_robot_msgs::agent_task_2 :datatype-) "node_robot_msgs/agent_task_2")
(setf (get node_robot_msgs::agent_task_2 :request) node_robot_msgs::agent_task_2Request)
(setf (get node_robot_msgs::agent_task_2 :response) node_robot_msgs::agent_task_2Response)

(defmethod node_robot_msgs::agent_task_2Request
  (:response () (instance node_robot_msgs::agent_task_2Response :init)))

(setf (get node_robot_msgs::agent_task_2Request :md5sum-) "507b103286c30709359161b3b51d9c4a")
(setf (get node_robot_msgs::agent_task_2Request :datatype-) "node_robot_msgs/agent_task_2Request")
(setf (get node_robot_msgs::agent_task_2Request :definition-)
      "uint32  task_id
---
bool ret

")

(setf (get node_robot_msgs::agent_task_2Response :md5sum-) "507b103286c30709359161b3b51d9c4a")
(setf (get node_robot_msgs::agent_task_2Response :datatype-) "node_robot_msgs/agent_task_2Response")
(setf (get node_robot_msgs::agent_task_2Response :definition-)
      "uint32  task_id
---
bool ret

")



(provide :node_robot_msgs/agent_task_2 "507b103286c30709359161b3b51d9c4a")


