
(cl:in-package :asdf)

(defsystem "node_robot_msgs-msg"
  :depends-on (:roslisp-msg-protocol :roslisp-utils )
  :components ((:file "_package")
    (:file "agent_feedback" :depends-on ("_package_agent_feedback"))
    (:file "_package_agent_feedback" :depends-on ("_package"))
  ))