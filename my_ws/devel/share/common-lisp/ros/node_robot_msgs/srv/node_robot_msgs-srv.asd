
(cl:in-package :asdf)

(defsystem "node_robot_msgs-srv"
  :depends-on (:roslisp-msg-protocol :roslisp-utils )
  :components ((:file "_package")
    (:file "agent_task_1" :depends-on ("_package_agent_task_1"))
    (:file "_package_agent_task_1" :depends-on ("_package"))
    (:file "agent_task_2" :depends-on ("_package_agent_task_2"))
    (:file "_package_agent_task_2" :depends-on ("_package"))
    (:file "robot_info_report" :depends-on ("_package_robot_info_report"))
    (:file "_package_robot_info_report" :depends-on ("_package"))
  ))