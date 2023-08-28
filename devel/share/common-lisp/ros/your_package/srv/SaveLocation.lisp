; Auto-generated. Do not edit!


(cl:in-package your_package-srv)


;//! \htmlinclude SaveLocation-request.msg.html

(cl:defclass <SaveLocation-request> (roslisp-msg-protocol:ros-message)
  ((location_name
    :reader location_name
    :initarg :location_name
    :type cl:string
    :initform ""))
)

(cl:defclass SaveLocation-request (<SaveLocation-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <SaveLocation-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'SaveLocation-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name your_package-srv:<SaveLocation-request> is deprecated: use your_package-srv:SaveLocation-request instead.")))

(cl:ensure-generic-function 'location_name-val :lambda-list '(m))
(cl:defmethod location_name-val ((m <SaveLocation-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader your_package-srv:location_name-val is deprecated.  Use your_package-srv:location_name instead.")
  (location_name m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <SaveLocation-request>) ostream)
  "Serializes a message object of type '<SaveLocation-request>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'location_name))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'location_name))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <SaveLocation-request>) istream)
  "Deserializes a message object of type '<SaveLocation-request>"
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
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<SaveLocation-request>)))
  "Returns string type for a service object of type '<SaveLocation-request>"
  "your_package/SaveLocationRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SaveLocation-request)))
  "Returns string type for a service object of type 'SaveLocation-request"
  "your_package/SaveLocationRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<SaveLocation-request>)))
  "Returns md5sum for a message object of type '<SaveLocation-request>"
  "3a4956001e76e70331ffcf62ffc6a8d5")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'SaveLocation-request)))
  "Returns md5sum for a message object of type 'SaveLocation-request"
  "3a4956001e76e70331ffcf62ffc6a8d5")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<SaveLocation-request>)))
  "Returns full string definition for message of type '<SaveLocation-request>"
  (cl:format cl:nil "string location_name~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'SaveLocation-request)))
  "Returns full string definition for message of type 'SaveLocation-request"
  (cl:format cl:nil "string location_name~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <SaveLocation-request>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'location_name))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <SaveLocation-request>))
  "Converts a ROS message object to a list"
  (cl:list 'SaveLocation-request
    (cl:cons ':location_name (location_name msg))
))
;//! \htmlinclude SaveLocation-response.msg.html

(cl:defclass <SaveLocation-response> (roslisp-msg-protocol:ros-message)
  ((success
    :reader success
    :initarg :success
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass SaveLocation-response (<SaveLocation-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <SaveLocation-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'SaveLocation-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name your_package-srv:<SaveLocation-response> is deprecated: use your_package-srv:SaveLocation-response instead.")))

(cl:ensure-generic-function 'success-val :lambda-list '(m))
(cl:defmethod success-val ((m <SaveLocation-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader your_package-srv:success-val is deprecated.  Use your_package-srv:success instead.")
  (success m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <SaveLocation-response>) ostream)
  "Serializes a message object of type '<SaveLocation-response>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'success) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <SaveLocation-response>) istream)
  "Deserializes a message object of type '<SaveLocation-response>"
    (cl:setf (cl:slot-value msg 'success) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<SaveLocation-response>)))
  "Returns string type for a service object of type '<SaveLocation-response>"
  "your_package/SaveLocationResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SaveLocation-response)))
  "Returns string type for a service object of type 'SaveLocation-response"
  "your_package/SaveLocationResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<SaveLocation-response>)))
  "Returns md5sum for a message object of type '<SaveLocation-response>"
  "3a4956001e76e70331ffcf62ffc6a8d5")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'SaveLocation-response)))
  "Returns md5sum for a message object of type 'SaveLocation-response"
  "3a4956001e76e70331ffcf62ffc6a8d5")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<SaveLocation-response>)))
  "Returns full string definition for message of type '<SaveLocation-response>"
  (cl:format cl:nil "bool success~%~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'SaveLocation-response)))
  "Returns full string definition for message of type 'SaveLocation-response"
  (cl:format cl:nil "bool success~%~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <SaveLocation-response>))
  (cl:+ 0
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <SaveLocation-response>))
  "Converts a ROS message object to a list"
  (cl:list 'SaveLocation-response
    (cl:cons ':success (success msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'SaveLocation)))
  'SaveLocation-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'SaveLocation)))
  'SaveLocation-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SaveLocation)))
  "Returns string type for a service object of type '<SaveLocation>"
  "your_package/SaveLocation")