// Auto-generated. Do not edit!

// (in-package your_smach.srv)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------


//-----------------------------------------------------------

class GoToPositionRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.position_name = null;
    }
    else {
      if (initObj.hasOwnProperty('position_name')) {
        this.position_name = initObj.position_name
      }
      else {
        this.position_name = '';
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type GoToPositionRequest
    // Serialize message field [position_name]
    bufferOffset = _serializer.string(obj.position_name, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type GoToPositionRequest
    let len;
    let data = new GoToPositionRequest(null);
    // Deserialize message field [position_name]
    data.position_name = _deserializer.string(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += _getByteLength(object.position_name);
    return length + 4;
  }

  static datatype() {
    // Returns string type for a service object
    return 'your_smach/GoToPositionRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'ecb356fc9af4af2f61c120c1f36d1d78';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    string position_name
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new GoToPositionRequest(null);
    if (msg.position_name !== undefined) {
      resolved.position_name = msg.position_name;
    }
    else {
      resolved.position_name = ''
    }

    return resolved;
    }
};

class GoToPositionResponse {
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
    // Serializes a message object of type GoToPositionResponse
    // Serialize message field [success]
    bufferOffset = _serializer.bool(obj.success, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type GoToPositionResponse
    let len;
    let data = new GoToPositionResponse(null);
    // Deserialize message field [success]
    data.success = _deserializer.bool(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 1;
  }

  static datatype() {
    // Returns string type for a service object
    return 'your_smach/GoToPositionResponse';
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
    const resolved = new GoToPositionResponse(null);
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
  Request: GoToPositionRequest,
  Response: GoToPositionResponse,
  md5sum() { return 'b2053259e93d06245bdd1477ed5595a1'; },
  datatype() { return 'your_smach/GoToPosition'; }
};
