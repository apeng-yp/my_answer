#include <stdio.h>
#include <string.h>
#include <stdlib.h>
#include <unistd.h>
#include <string.h>
#include <iostream>
#include <stdint.h>

#include "ros/ros.h"
#include "node_robot_msgs/robot_info_report.h"
#include "node_robot_msgs/agent_feedback.h"

using namespace std;

class Robot_monitor
{
public:
	Robot_monitor();
	~Robot_monitor();

	void run();
private:
	unsigned int robot_num;
	vector<unsigned int> work_task_id;
	vector<unsigned int> id;
	vector<string> state;
	node_robot_msgs::agent_feedback  monitor_info;
	
	ros::NodeHandle  m_handle;
	ros::ServiceServer robot_info_server;
	ros::Publisher  robot_info_pub;
	
	bool server_deal(node_robot_msgs::robot_info_report::Request &req,node_robot_msgs::robot_info_report::Response &res);


};
