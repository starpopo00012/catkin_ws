// Auto-generated. Do not edit!

// (in-package your_package.srv)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------


//-----------------------------------------------------------

class SaveLocationRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.location_name = null;
    }
    else {
      if (initObj.hasOwnProperty('location_name')) {
        this.location_name = initObj.location_name
      }
      else {
        this.location_name = '';
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type SaveLocationRequest
    // Serialize message field [location_name]
    bufferOffset = _serializer.string(obj.location_name, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type SaveLocationRequest
    let len;
    let data = new SaveLocationRequest(null);
    // Deserialize message field [location_name]
    data.location_name = _deserializer.string(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += _getByteLength(object.location_name);
    return length + 4;
  }

  static datatype() {
    // Returns string type for a service object
    return 'your_package/SaveLocationRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '73faf335e0992a31df2e9630ffb73b0b';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    string location_name
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new SaveLocationRequest(null);
    if (msg.location_name !== undefined) {
      resolved.location_name = msg.location_name;
    }
    else {
      resolved.location_name = ''
    }

    return resolved;
    }
};

class SaveLocationResponse {
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
    // Serializes a message object of type SaveLocationResponse
    // Serialize message field [success]
    bufferOffset = _serializer.bool(obj.success, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type SaveLocationResponse
    let len;
    let data = new SaveLocationResponse(null);
    // Deserialize message field [success]
    data.success = _deserializer.bool(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 1;
  }

  static datatype() {
    // Returns string type for a service object
    return 'your_package/SaveLocationResponse';
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
    const resolved = new SaveLocationResponse(null);
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
  Request: SaveLocationRequest,
  Response: SaveLocationResponse,
  md5sum() { return '3a4956001e76e70331ffcf62ffc6a8d5'; },
  datatype() { return 'your_package/SaveLocation'; }
};
