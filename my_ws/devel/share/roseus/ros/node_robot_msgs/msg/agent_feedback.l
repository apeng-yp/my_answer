;; Auto-generated. Do not edit!


(when (boundp 'node_robot_msgs::agent_feedback)
  (if (not (find-package "NODE_ROBOT_MSGS"))
    (make-package "NODE_ROBOT_MSGS"))
  (shadow 'agent_feedback (find-package "NODE_ROBOT_MSGS")))
(unless (find-package "NODE_ROBOT_MSGS::AGENT_FEEDBACK")
  (make-package "NODE_ROBOT_MSGS::AGENT_FEEDBACK"))

(in-package "ROS")
;;//! \htmlinclude agent_feedback.msg.html


(defclass node_robot_msgs::agent_feedback
  :super ros::object
  :slots (_robot_id _working_task_id _robot_state ))

(defmethod node_robot_msgs::agent_feedback
  (:init
   (&key
    ((:robot_id __robot_id) (make-array 0 :initial-element 0 :element-type :integer))
    ((:working_task_id __working_task_id) (make-array 0 :initial-element 0 :element-type :integer))
    ((:robot_state __robot_state) (let (r) (dotimes (i 0) (push "" r)) r))
    )
   (send-super :init)
   (setq _robot_id __robot_id)
   (setq _working_task_id __working_task_id)
   (setq _robot_state __robot_state)
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
    ;; uint32[] _robot_id
    (* 4    (length _robot_id)) 4
    ;; uint32[] _working_task_id
    (* 4    (length _working_task_id)) 4
    ;; string[] _robot_state
    (apply #'+ (mapcar #'(lambda (x) (+ 4 (length x))) _robot_state)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; uint32[] _robot_id
     (write-long (length _robot_id) s)
     (dotimes (i (length _robot_id))
       (write-long (elt _robot_id i) s)
       )
     ;; uint32[] _working_task_id
     (write-long (length _working_task_id) s)
     (dotimes (i (length _working_task_id))
       (write-long (elt _working_task_id i) s)
       )
     ;; string[] _robot_state
     (write-long (length _robot_state) s)
     (dolist (elem _robot_state)
       (write-long (length elem) s) (princ elem s)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; uint32[] _robot_id
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _robot_id (instantiate integer-vector n))
     (dotimes (i n)
     (setf (elt _robot_id i) (sys::peek buf ptr- :integer)) (incf ptr- 4)
     ))
   ;; uint32[] _working_task_id
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _working_task_id (instantiate integer-vector n))
     (dotimes (i n)
     (setf (elt _working_task_id i) (sys::peek buf ptr- :integer)) (incf ptr- 4)
     ))
   ;; string[] _robot_state
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _robot_state (make-list n))
     (dotimes (i n)
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setf (elt _robot_state i) (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
     ))
   ;;
   self)
  )

(setf (get node_robot_msgs::agent_feedback :md5sum-) "663b43d5db7457c250c4018720b5440d")
(setf (get node_robot_msgs::agent_feedback :datatype-) "node_robot_msgs/agent_feedback")
(setf (get node_robot_msgs::agent_feedback :definition-)
      "uint32[]  robot_id
uint32[]  working_task_id 
string[]  robot_state


")



(provide :node_robot_msgs/agent_feedback "663b43d5db7457c250c4018720b5440d")


