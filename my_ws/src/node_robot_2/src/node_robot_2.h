#include <stdio.h>
#include <string.h>
#include <stdlib.h>
#include <unistd.h>
#include <string.h>
#include <iostream>

#include "ros/ros.h"
#include "node_robot_msgs/robot_info_report.h"
#include "node_robot_msgs/agent_task_2.h"

using namespace std;

class Robot_2{

public:
	Robot_2();
	~Robot_2();

	void run();

private:
	unsigned int work_task_id;
	unsigned int robot_id;
	string robot_state;	
	node_robot_msgs::robot_info_report robot_2_srv;
	
        ros::Time current_time;
        ros::Time  last_time;
	ros::NodeHandle  m_handle;
	ros::ServiceClient robot_2_info_client;
	ros::ServiceServer agent_task_2_server; 	
	bool server_deal(node_robot_msgs::agent_task_2::Request &req,node_robot_msgs::agent_task_2::Response &res);

};


