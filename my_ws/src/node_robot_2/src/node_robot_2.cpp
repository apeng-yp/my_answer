#include "node_robot_2.h"

Robot_2::Robot_2()
{
	robot_id = 2;
	robot_state = "ready";
	work_task_id = 0;

	robot_2_info_client = m_handle.serviceClient<node_robot_msgs::robot_info_report>("robot_info");
	agent_task_2_server = m_handle.advertiseService("agent_task_2",&Robot_2::server_deal,this);

	run();
}

Robot_2::~Robot_2()
{



}

bool Robot_2::server_deal(node_robot_msgs::agent_task_2::Request &req,node_robot_msgs::agent_task_2::Response &res)
{
	//cout<<"++++++++++++task id  is"<<req.task_id<<endl;
	if(req.task_id != 0){
		robot_state = "executing";
		work_task_id = req.task_id;
	}
		
	
	res.ret = true;
	
	return true;
}

void  Robot_2::run()
{
        bool start_flag = false;
	ros::Rate loop(50);
	while(ros::ok()){
                if(robot_state == "executing"){
                        if(start_flag == false){
                                last_time = ros::Time::now();
                                start_flag = true;
                        }
                        if((current_time - last_time).toSec() >= 3){
                                robot_state = "ready";
                                start_flag = false;
				//cout<<"heehehehehehehehehehehehehehehe"<<endl;
                        }
                        current_time = ros::Time::now();
                        //cout<<">><<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<"<<(current_time - last_time).toSec()<<endl;

                }
		robot_2_srv.request.robot_id = robot_id;
		robot_2_srv.request.robot_state = robot_state;
		robot_2_srv.request.working_task_id = work_task_id;
		robot_2_info_client.call(robot_2_srv);

		ros::spinOnce();
		loop.sleep();
	}

}

int main(int argc ,char**argv)
{
	ros::init(argc,argv,"robot_2");
	Robot_2  robot_2;
	

	ros::spin();
}
