#include "node_robot_1.h"

Robot_1::Robot_1()
{
	robot_id = 1;
	robot_state = "ready";
	work_task_id = 0;

        robot_1_info_client = m_handle.serviceClient<node_robot_msgs::robot_info_report>("robot_info");
	agent_task_1_server = m_handle.advertiseService("agent_task_1",&Robot_1::server_deal,this);
	
	run();
}

Robot_1::~Robot_1()
{



}

bool Robot_1::server_deal(node_robot_msgs::agent_task_1::Request &req,node_robot_msgs::agent_task_1::Response &res)
{
	//cout<<"----task_id is "<<req.task_id<<endl;
	if(req.task_id != 0){
		robot_state = "executing";
		work_task_id = req.task_id;
	}
		
	res.ret = true;
	return true;
}

void  Robot_1::run()
{
	bool start_flag = false;
	ros::Rate loop(50);
	while(ros::ok()){
                if(robot_state == "executing"){
			if(start_flag == false){
    				last_time = ros::Time::now();
				start_flag = true;	
			}
                        if((current_time - last_time).toSec() >= 5){
                                robot_state = "ready";
				start_flag = false;
				//cout<<"hahdhahahahahahahhahahaa"<<endl;
                        }
    			current_time = ros::Time::now();
			//cout<<">>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>"<<(current_time - last_time).toSec()<<endl;
                }

		//cout<<">>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>"<<robot_state<<endl;
		robot_1_srv.request.robot_id = robot_id;
		robot_1_srv.request.robot_state = robot_state;
		robot_1_srv.request.working_task_id = work_task_id;
		robot_1_info_client.call(robot_1_srv);

		ros::spinOnce();
		loop.sleep();
	}

}

int main(int argc ,char**argv)
{
	ros::init(argc,argv,"robot_1");
	Robot_1  robot_1;
	

	ros::spin();
}
