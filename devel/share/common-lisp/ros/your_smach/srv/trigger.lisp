; Auto-generated. Do not edit!


(cl:in-package your_smach-srv)


;//! \htmlinclude trigger-request.msg.html

(cl:defclass <trigger-request> (roslisp-msg-protocol:ros-message)
  ()
)

(cl:defclass trigger-request (<trigger-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <trigger-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'trigger-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name your_smach-srv:<trigger-request> is deprecated: use your_smach-srv:trigger-request instead.")))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <trigger-request>) ostream)
  "Serializes a message object of type '<trigger-request>"
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <trigger-request>) istream)
  "Deserializes a message object of type '<trigger-request>"
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<trigger-request>)))
  "Returns string type for a service object of type '<trigger-request>"
  "your_smach/triggerRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'trigger-request)))
  "Returns string type for a service object of type 'trigger-request"
  "your_smach/triggerRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<trigger-request>)))
  "Returns md5sum for a message object of type '<trigger-request>"
  "65c770945c83e7be8dd04ade02be6046")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'trigger-request)))
  "Returns md5sum for a message object of type 'trigger-request"
  "65c770945c83e7be8dd04ade02be6046")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<trigger-request>)))
  "Returns full string definition for message of type '<trigger-request>"
  (cl:format cl:nil "~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'trigger-request)))
  "Returns full string definition for message of type 'trigger-request"
  (cl:format cl:nil "~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <trigger-request>))
  (cl:+ 0
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <trigger-request>))
  "Converts a ROS message object to a list"
  (cl:list 'trigger-request
))
;//! \htmlinclude trigger-response.msg.html

(cl:defclass <trigger-response> (roslisp-msg-protocol:ros-message)
  ((ans
    :reader ans
    :initarg :ans
    :type cl:string
    :initform ""))
)

(cl:defclass trigger-response (<trigger-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <trigger-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'trigger-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name your_smach-srv:<trigger-response> is deprecated: use your_smach-srv:trigger-response instead.")))

(cl:ensure-generic-function 'ans-val :lambda-list '(m))
(cl:defmethod ans-val ((m <trigger-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader your_smach-srv:ans-val is deprecated.  Use your_smach-srv:ans instead.")
  (ans m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <trigger-response>) ostream)
  "Serializes a message object of type '<trigger-response>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'ans))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'ans))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <trigger-response>) istream)
  "Deserializes a message object of type '<trigger-response>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'ans) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'ans) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<trigger-response>)))
  "Returns string type for a service object of type '<trigger-response>"
  "your_smach/triggerResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'trigger-response)))
  "Returns string type for a service object of type 'trigger-response"
  "your_smach/triggerResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<trigger-response>)))
  "Returns md5sum for a message object of type '<trigger-response>"
  "65c770945c83e7be8dd04ade02be6046")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'trigger-response)))
  "Returns md5sum for a message object of type 'trigger-response"
  "65c770945c83e7be8dd04ade02be6046")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<trigger-response>)))
  "Returns full string definition for message of type '<trigger-response>"
  (cl:format cl:nil "string ans~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'trigger-response)))
  "Returns full string definition for message of type 'trigger-response"
  (cl:format cl:nil "string ans~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <trigger-response>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'ans))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <trigger-response>))
  "Converts a ROS message object to a list"
  (cl:list 'trigger-response
    (cl:cons ':ans (ans msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'trigger)))
  'trigger-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'trigger)))
  'trigger-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'trigger)))
  "Returns string type for a service object of type '<trigger>"
  "your_smach/trigger")