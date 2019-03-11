// Auto-generated. Do not edit!

// (in-package node_robot_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------

class agent_feedback {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.robot_id = null;
      this.working_task_id = null;
      this.robot_state = null;
    }
    else {
      if (initObj.hasOwnProperty('robot_id')) {
        this.robot_id = initObj.robot_id
      }
      else {
        this.robot_id = [];
      }
      if (initObj.hasOwnProperty('working_task_id')) {
        this.working_task_id = initObj.working_task_id
      }
      else {
        this.working_task_id = [];
      }
      if (initObj.hasOwnProperty('robot_state')) {
        this.robot_state = initObj.robot_state
      }
      else {
        this.robot_state = [];
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type agent_feedback
    // Serialize message field [robot_id]
    bufferOffset = _arraySerializer.uint32(obj.robot_id, buffer, bufferOffset, null);
    // Serialize message field [working_task_id]
    bufferOffset = _arraySerializer.uint32(obj.working_task_id, buffer, bufferOffset, null);
    // Serialize message field [robot_state]
    bufferOffset = _arraySerializer.string(obj.robot_state, buffer, bufferOffset, null);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type agent_feedback
    let len;
    let data = new agent_feedback(null);
    // Deserialize message field [robot_id]
    data.robot_id = _arrayDeserializer.uint32(buffer, bufferOffset, null)
    // Deserialize message field [working_task_id]
    data.working_task_id = _arrayDeserializer.uint32(buffer, bufferOffset, null)
    // Deserialize message field [robot_state]
    data.robot_state = _arrayDeserializer.string(buffer, bufferOffset, null)
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += 4 * object.robot_id.length;
    length += 4 * object.working_task_id.length;
    object.robot_state.forEach((val) => {
      length += 4 + val.length;
    });
    return length + 12;
  }

  static datatype() {
    // Returns string type for a message object
    return 'node_robot_msgs/agent_feedback';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '663b43d5db7457c250c4018720b5440d';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    uint32[]  robot_id
    uint32[]  working_task_id 
    string[]  robot_state
    
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new agent_feedback(null);
    if (msg.robot_id !== undefined) {
      resolved.robot_id = msg.robot_id;
    }
    else {
      resolved.robot_id = []
    }

    if (msg.working_task_id !== undefined) {
      resolved.working_task_id = msg.working_task_id;
    }
    else {
      resolved.working_task_id = []
    }

    if (msg.robot_state !== undefined) {
      resolved.robot_state = msg.robot_state;
    }
    else {
      resolved.robot_state = []
    }

    return resolved;
    }
};

module.exports = agent_feedback;
