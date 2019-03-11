#include "node_robot_monitor.h"

Robot_monitor::Robot_monitor()
{
	robot_num = 0;
	monitor_info.robot_id.resize(2);
	monitor_info.robot_state.resize(2);
	monitor_info.working_task_id.resize(2);
	monitor_info.robot_id.empty();
	monitor_info.robot_state.empty();
	monitor_info.working_task_id.empty();

	robot_info_pub = m_handle.advertise<node_robot_msgs::agent_feedback>("agent_feedback",1);
	robot_info_server = m_handle.advertiseService("robot_info",&Robot_monitor::server_deal,this);
	
	run();

}

Robot_monitor::~Robot_monitor()
{


}

bool Robot_monitor::server_deal(node_robot_msgs::robot_info_report::Request &req,node_robot_msgs::robot_info_report::Response &res)
{
//	int i;
//	for(i=0;i<id.size();i++){
//		if(req.robot_id == id[i]){
//			state[i] = req.robot_state;
//			work_task_id[i] = req.working_task_id;
//		        //cout<<"==============="<<endl;
//			break;
//		}
//	}
//	if(i == id.size()){
//		id.push_back(req.robot_id);
//		state.push_back(req.robot_state);	
//		work_task_id.push_back(req.working_task_id);	
//	}
	if(req.robot_id == 1){
		monitor_info.robot_id[0] = 1;
		monitor_info.robot_state[0] = req.robot_state;
		monitor_info.working_task_id[0] = req.working_task_id;
	}
	else if(req.robot_id == 2){
		monitor_info.robot_id[1] = 2;
		monitor_info.robot_state[1] = req.robot_state;
		monitor_info.working_task_id[1] = req.working_task_id;
	}
	

	res.ret = true;	
	return true;

}

void Robot_monitor::run()
{			
	ros::Rate loop(20);
	while(ros::ok()){
//		monitor_info.robot_id = id;
//		monitor_info.robot_state = state;
//		monitor_info.working_task_id = work_task_id;
		//cout<<"------------------------------->>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>"<<monitor_info.robot_state[0]<<endl;;
		robot_info_pub.publish(monitor_info);

		ros::spinOnce();
		loop.sleep();
	}

}

int main(int argc,char** argv)
{
	ros::init(argc,argv,"robot_monitor");
	Robot_monitor  robot_monitor;

	ros::spin();

}

