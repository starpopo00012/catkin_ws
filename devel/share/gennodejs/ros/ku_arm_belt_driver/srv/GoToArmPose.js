// Auto-generated. Do not edit!

// (in-package ku_arm_belt_driver.srv)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------


//-----------------------------------------------------------

class GoToArmPoseRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.pose_name = null;
    }
    else {
      if (initObj.hasOwnProperty('pose_name')) {
        this.pose_name = initObj.pose_name
      }
      else {
        this.pose_name = '';
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type GoToArmPoseRequest
    // Serialize message field [pose_name]
    bufferOffset = _serializer.string(obj.pose_name, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type GoToArmPoseRequest
    let len;
    let data = new GoToArmPoseRequest(null);
    // Deserialize message field [pose_name]
    data.pose_name = _deserializer.string(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += _getByteLength(object.pose_name);
    return length + 4;
  }

  static datatype() {
    // Returns string type for a service object
    return 'ku_arm_belt_driver/GoToArmPoseRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'e6184073e8e665fb2bf0be194fc36541';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    string pose_name
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new GoToArmPoseRequest(null);
    if (msg.pose_name !== undefined) {
      resolved.pose_name = msg.pose_name;
    }
    else {
      resolved.pose_name = ''
    }

    return resolved;
    }
};

class GoToArmPoseResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.success = null;
    }
    else {
      if (initObj.hasOwnProperty('success')) {
        this.success = initObj.success
      }
      else {
        this.success = false;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type GoToArmPoseResponse
    // Serialize message field [success]
    bufferOffset = _serializer.bool(obj.success, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type GoToArmPoseResponse
    let len;
    let data = new GoToArmPoseResponse(null);
    // Deserialize message field [success]
    data.success = _deserializer.bool(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 1;
  }

  static datatype() {
    // Returns string type for a service object
    return 'ku_arm_belt_driver/GoToArmPoseResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '358e233cde0c8a8bcfea4ce193f8fc15';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    bool success
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new GoToArmPoseResponse(null);
    if (msg.success !== undefined) {
      resolved.success = msg.success;
    }
    else {
      resolved.success = false
    }

    return resolved;
    }
};

module.exports = {
  Request: GoToArmPoseRequest,
  Response: GoToArmPoseResponse,
  md5sum() { return '79d88096a3ed8bf571f433b49f30cb27'; },
  datatype() { return 'ku_arm_belt_driver/GoToArmPose'; }
};
