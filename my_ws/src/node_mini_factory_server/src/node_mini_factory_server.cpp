#include <node_mini_factory_server.h>

Mini_factory::Mini_factory()
{
	task_num = 1;
        robot_id.resize(2);
        robot_state.resize(2);
        working_task_id.resize(2);

	robot_id.empty();
	robot_state.empty();
	working_task_id.empty();

	task_1_client = m_handle.serviceClient<node_robot_msgs::agent_task_1>("agent_task_1");
	task_2_client = m_handle.serviceClient<node_robot_msgs::agent_task_2>("agent_task_2");
	feedback_sub = m_handle.subscribe("agent_feedback",100,&Mini_factory::feedback_callback,this);
	run();
}


Mini_factory::~Mini_factory()
{


}

void Mini_factory::feedback_callback(const node_robot_msgs::agent_feedback msg)
{
	//cout<<"++++++++++++++++++++++++>>>>>>>>>>>>>>>>>>>>>>>"<<msg.robot_state[0]<<endl;
	for(int a=0;a<msg.robot_id.size();a++){
		if(msg.robot_id[a] == 1){
			robot_id[0] = msg.robot_id[a];
			robot_state[0] = msg.robot_state[a];
			working_task_id[0] = msg.working_task_id[a];
		}
		else if(msg.robot_id[a] == 2){
			robot_id[1] = msg.robot_id[a];
			robot_state[1] = msg.robot_state[a];
			working_task_id[1] = msg.working_task_id[a];
		}
	}

}


void Mini_factory::run()
{
	ros::Rate loop(1);
	while(ros::ok()){
		cout<<"--------------------"<<endl;
		for(int k=0;k<robot_id.size();k++){
			if(robot_state[k] == "ready"){
				ROS_INFO("robot %d is ready",robot_id[k]);
			}
			else if(robot_state[k] == "executing"){
				ROS_INFO("robot %d is executing, task %d is doing!!",robot_id[k],working_task_id[k]);
			}

		}
		if(task_num < 6){
			for(int i=0;i<robot_id.size();i++){
				if(robot_state[i] == "ready"){
					if(robot_id[i] == 1){
						task_1_srv.request.task_id = task_num;
						task_1_client.call(task_1_srv);
					}

					else if(robot_id[i] == 2){
						task_2_srv.request.task_id = task_num;
						task_2_client.call(task_2_srv);
					}
					else{
						ROS_INFO("all  robot   is  busy");

					}
					task_num++;
					break;
				}

			}	

		}

		ros::spinOnce();
		loop.sleep();	

	}

}



int main(int argc,char** argv)
{
	ros::init(argc,argv,"mini_factory");
	
	Mini_factory mini_factory;

	ros::spin();
}
