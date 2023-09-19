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

class triggerRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
    }
    else {
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type triggerRequest
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type triggerRequest
    let len;
    let data = new triggerRequest(null);
    return data;
  }

  static getMessageSize(object) {
    return 0;
  }

  static datatype() {
    // Returns string type for a service object
    return 'your_smach/triggerRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'd41d8cd98f00b204e9800998ecf8427e';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new triggerRequest(null);
    return resolved;
    }
};

class triggerResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.ans = null;
    }
    else {
      if (initObj.hasOwnProperty('ans')) {
        this.ans = initObj.ans
      }
      else {
        this.ans = '';
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type triggerResponse
    // Serialize message field [ans]
    bufferOffset = _serializer.string(obj.ans, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type triggerResponse
    let len;
    let data = new triggerResponse(null);
    // Deserialize message field [ans]
    data.ans = _deserializer.string(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += _getByteLength(object.ans);
    return length + 4;
  }

  static datatype() {
    // Returns string type for a service object
    return 'your_smach/triggerResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '65c770945c83e7be8dd04ade02be6046';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    string ans
    
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new triggerResponse(null);
    if (msg.ans !== undefined) {
      resolved.ans = msg.ans;
    }
    else {
      resolved.ans = ''
    }

    return resolved;
    }
};

module.exports = {
  Request: triggerRequest,
  Response: triggerResponse,
  md5sum() { return '65c770945c83e7be8dd04ade02be6046'; },
  datatype() { return 'your_smach/trigger'; }
};
