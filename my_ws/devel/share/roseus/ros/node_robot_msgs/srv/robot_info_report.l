;; Auto-generated. Do not edit!


(when (boundp 'node_robot_msgs::robot_info_report)
  (if (not (find-package "NODE_ROBOT_MSGS"))
    (make-package "NODE_ROBOT_MSGS"))
  (shadow 'robot_info_report (find-package "NODE_ROBOT_MSGS")))
(unless (find-package "NODE_ROBOT_MSGS::ROBOT_INFO_REPORT")
  (make-package "NODE_ROBOT_MSGS::ROBOT_INFO_REPORT"))
(unless (find-package "NODE_ROBOT_MSGS::ROBOT_INFO_REPORTREQUEST")
  (make-package "NODE_ROBOT_MSGS::ROBOT_INFO_REPORTREQUEST"))
(unless (find-package "NODE_ROBOT_MSGS::ROBOT_INFO_REPORTRESPONSE")
  (make-package "NODE_ROBOT_MSGS::ROBOT_INFO_REPORTRESPONSE"))

(in-package "ROS")





(defclass node_robot_msgs::robot_info_reportRequest
  :super ros::object
  :slots (_robot_id _working_task_id _robot_state ))

(defmethod node_robot_msgs::robot_info_reportRequest
  (:init
   (&key
    ((:robot_id __robot_id) 0)
    ((:working_task_id __working_task_id) 0)
    ((:robot_state __robot_state) "")
    )
   (send-super :init)
   (setq _robot_id (round __robot_id))
   (setq _working_task_id (round __working_task_id))
   (setq _robot_state (string __robot_state))
   self)
  (:robot_id
   (&optional __robot_id)
   (if __robot_id (setq _robot_id __robot_id)) _robot_id)
  (:working_task_id
   (&optional __working_task_id)
   (if __working_task_id (setq _working_task_id __working_task_id)) _working_task_id)
  (:robot_state
   (&optional __robot_state)
   (if __robot_state (setq _robot_state __robot_state)) _robot_state)
  (:serialization-length
   ()
   (+
    ;; uint32 _robot_id
    4
    ;; uint32 _working_task_id
    4
    ;; string _robot_state
    4 (length _robot_state)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; uint32 _robot_id
       (write-long _robot_id s)
     ;; uint32 _working_task_id
       (write-long _working_task_id s)
     ;; string _robot_state
       (write-long (length _robot_state) s) (princ _robot_state s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; uint32 _robot_id
     (setq _robot_id (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; uint32 _working_task_id
     (setq _working_task_id (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; string _robot_state
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _robot_state (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(defclass node_robot_msgs::robot_info_reportResponse
  :super ros::object
  :slots (_ret ))

(defmethod node_robot_msgs::robot_info_reportResponse
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

(defclass node_robot_msgs::robot_info_report
  :super ros::object
  :slots ())

(setf (get node_robot_msgs::robot_info_report :md5sum-) "64872e7e5a7ad222489d3e9f403efca1")
(setf (get node_robot_msgs::robot_info_report :datatype-) "node_robot_msgs/robot_info_report")
(setf (get node_robot_msgs::robot_info_report :request) node_robot_msgs::robot_info_reportRequest)
(setf (get node_robot_msgs::robot_info_report :response) node_robot_msgs::robot_info_reportResponse)

(defmethod node_robot_msgs::robot_info_reportRequest
  (:response () (instance node_robot_msgs::robot_info_reportResponse :init)))

(setf (get node_robot_msgs::robot_info_reportRequest :md5sum-) "64872e7e5a7ad222489d3e9f403efca1")
(setf (get node_robot_msgs::robot_info_reportRequest :datatype-) "node_robot_msgs/robot_info_reportRequest")
(setf (get node_robot_msgs::robot_info_reportRequest :definition-)
      "uint32 robot_id
uint32 working_task_id
string robot_state
---
bool ret

")

(setf (get node_robot_msgs::robot_info_reportResponse :md5sum-) "64872e7e5a7ad222489d3e9f403efca1")
(setf (get node_robot_msgs::robot_info_reportResponse :datatype-) "node_robot_msgs/robot_info_reportResponse")
(setf (get node_robot_msgs::robot_info_reportResponse :definition-)
      "uint32 robot_id
uint32 working_task_id
string robot_state
---
bool ret

")



(provide :node_robot_msgs/robot_info_report "64872e7e5a7ad222489d3e9f403efca1")


