; Auto-generated. Do not edit!


(cl:in-package your_package-srv)


;//! \htmlinclude NavToLocation-request.msg.html

(cl:defclass <NavToLocation-request> (roslisp-msg-protocol:ros-message)
  ((location_name
    :reader location_name
    :initarg :location_name
    :type cl:string
    :initform ""))
)

(cl:defclass NavToLocation-request (<NavToLocation-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <NavToLocation-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'NavToLocation-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name your_package-srv:<NavToLocation-request> is deprecated: use your_package-srv:NavToLocation-request instead.")))

(cl:ensure-generic-function 'location_name-val :lambda-list '(m))
(cl:defmethod location_name-val ((m <NavToLocation-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader your_package-srv:location_name-val is deprecated.  Use your_package-srv:location_name instead.")
  (location_name m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <NavToLocation-request>) ostream)
  "Serializes a message object of type '<NavToLocation-request>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'location_name))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'location_name))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <NavToLocation-request>) istream)
  "Deserializes a message object of type '<NavToLocation-request>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'location_name) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'location_name) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<NavToLocation-request>)))
  "Returns string type for a service object of type '<NavToLocation-request>"
  "your_package/NavToLocationRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'NavToLocation-request)))
  "Returns string type for a service object of type 'NavToLocation-request"
  "your_package/NavToLocationRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<NavToLocation-request>)))
  "Returns md5sum for a message object of type '<NavToLocation-request>"
  "3a4956001e76e70331ffcf62ffc6a8d5")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'NavToLocation-request)))
  "Returns md5sum for a message object of type 'NavToLocation-request"
  "3a4956001e76e70331ffcf62ffc6a8d5")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<NavToLocation-request>)))
  "Returns full string definition for message of type '<NavToLocation-request>"
  (cl:format cl:nil "string location_name~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'NavToLocation-request)))
  "Returns full string definition for message of type 'NavToLocation-request"
  (cl:format cl:nil "string location_name~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <NavToLocation-request>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'location_name))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <NavToLocation-request>))
  "Converts a ROS message object to a list"
  (cl:list 'NavToLocation-request
    (cl:cons ':location_name (location_name msg))
))
;//! \htmlinclude NavToLocation-response.msg.html

(cl:defclass <NavToLocation-response> (roslisp-msg-protocol:ros-message)
  ((success
    :reader success
    :initarg :success
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass NavToLocation-response (<NavToLocation-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <NavToLocation-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'NavToLocation-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name your_package-srv:<NavToLocation-response> is deprecated: use your_package-srv:NavToLocation-response instead.")))

(cl:ensure-generic-function 'success-val :lambda-list '(m))
(cl:defmethod success-val ((m <NavToLocation-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader your_package-srv:success-val is deprecated.  Use your_package-srv:success instead.")
  (success m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <NavToLocation-response>) ostream)
  "Serializes a message object of type '<NavToLocation-response>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'success) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <NavToLocation-response>) istream)
  "Deserializes a message object of type '<NavToLocation-response>"
    (cl:setf (cl:slot-value msg 'success) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<NavToLocation-response>)))
  "Returns string type for a service object of type '<NavToLocation-response>"
  "your_package/NavToLocationResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'NavToLocation-response)))
  "Returns string type for a service object of type 'NavToLocation-response"
  "your_package/NavToLocationResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<NavToLocation-response>)))
  "Returns md5sum for a message object of type '<NavToLocation-response>"
  "3a4956001e76e70331ffcf62ffc6a8d5")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'NavToLocation-response)))
  "Returns md5sum for a message object of type 'NavToLocation-response"
  "3a4956001e76e70331ffcf62ffc6a8d5")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<NavToLocation-response>)))
  "Returns full string definition for message of type '<NavToLocation-response>"
  (cl:format cl:nil "bool success~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'NavToLocation-response)))
  "Returns full string definition for message of type 'NavToLocation-response"
  (cl:format cl:nil "bool success~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <NavToLocation-response>))
  (cl:+ 0
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <NavToLocation-response>))
  "Converts a ROS message object to a list"
  (cl:list 'NavToLocation-response
    (cl:cons ':success (success msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'NavToLocation)))
  'NavToLocation-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'NavToLocation)))
  'NavToLocation-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'NavToLocation)))
  "Returns string type for a service object of type '<NavToLocation>"
  "your_package/NavToLocation")