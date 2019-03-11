#include <stdio.h>
#include <string.h>
#include <stdlib.h>
#include <unistd.h>
#include <string.h>
#include <iostream>
#include <stdint.h>

#include "ros/ros.h"
#include "node_robot_msgs/agent_task_1.h"
#include "node_robot_msgs/agent_task_2.h"
#include "node_robot_msgs/agent_feedback.h"

using namespace std;

class Mini_factory
{
public:
	Mini_factory();
	~Mini_factory();

	int task_num;
	

private:
        vector<unsigned int> working_task_id;
        vector<unsigned int> robot_id;
	vector<string> robot_state;

	ros::NodeHandle  m_handle;

	node_robot_msgs::agent_task_1 task_1_srv;
	node_robot_msgs::agent_task_2 task_2_srv;
	
	ros::ServiceClient  task_1_client;	
	ros::ServiceClient  task_2_client;	
	ros::Subscriber  feedback_sub;
	
	
	void  run();
	void feedback_callback(const node_robot_msgs::agent_feedback msg);	
	

}; 
