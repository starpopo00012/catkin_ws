; Auto-generated. Do not edit!


(cl:in-package ku_arm_belt_driver-srv)


;//! \htmlinclude GoToArmPose-request.msg.html

(cl:defclass <GoToArmPose-request> (roslisp-msg-protocol:ros-message)
  ((pose_name
    :reader pose_name
    :initarg :pose_name
    :type cl:string
    :initform ""))
)

(cl:defclass GoToArmPose-request (<GoToArmPose-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <GoToArmPose-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'GoToArmPose-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name ku_arm_belt_driver-srv:<GoToArmPose-request> is deprecated: use ku_arm_belt_driver-srv:GoToArmPose-request instead.")))

(cl:ensure-generic-function 'pose_name-val :lambda-list '(m))
(cl:defmethod pose_name-val ((m <GoToArmPose-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ku_arm_belt_driver-srv:pose_name-val is deprecated.  Use ku_arm_belt_driver-srv:pose_name instead.")
  (pose_name m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <GoToArmPose-request>) ostream)
  "Serializes a message object of type '<GoToArmPose-request>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'pose_name))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'pose_name))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <GoToArmPose-request>) istream)
  "Deserializes a message object of type '<GoToArmPose-request>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'pose_name) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'pose_name) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<GoToArmPose-request>)))
  "Returns string type for a service object of type '<GoToArmPose-request>"
  "ku_arm_belt_driver/GoToArmPoseRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'GoToArmPose-request)))
  "Returns string type for a service object of type 'GoToArmPose-request"
  "ku_arm_belt_driver/GoToArmPoseRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<GoToArmPose-request>)))
  "Returns md5sum for a message object of type '<GoToArmPose-request>"
  "79d88096a3ed8bf571f433b49f30cb27")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'GoToArmPose-request)))
  "Returns md5sum for a message object of type 'GoToArmPose-request"
  "79d88096a3ed8bf571f433b49f30cb27")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<GoToArmPose-request>)))
  "Returns full string definition for message of type '<GoToArmPose-request>"
  (cl:format cl:nil "string pose_name~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'GoToArmPose-request)))
  "Returns full string definition for message of type 'GoToArmPose-request"
  (cl:format cl:nil "string pose_name~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <GoToArmPose-request>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'pose_name))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <GoToArmPose-request>))
  "Converts a ROS message object to a list"
  (cl:list 'GoToArmPose-request
    (cl:cons ':pose_name (pose_name msg))
))
;//! \htmlinclude GoToArmPose-response.msg.html

(cl:defclass <GoToArmPose-response> (roslisp-msg-protocol:ros-message)
  ((success
    :reader success
    :initarg :success
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass GoToArmPose-response (<GoToArmPose-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <GoToArmPose-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'GoToArmPose-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name ku_arm_belt_driver-srv:<GoToArmPose-response> is deprecated: use ku_arm_belt_driver-srv:GoToArmPose-response instead.")))

(cl:ensure-generic-function 'success-val :lambda-list '(m))
(cl:defmethod success-val ((m <GoToArmPose-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ku_arm_belt_driver-srv:success-val is deprecated.  Use ku_arm_belt_driver-srv:success instead.")
  (success m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <GoToArmPose-response>) ostream)
  "Serializes a message object of type '<GoToArmPose-response>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'success) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <GoToArmPose-response>) istream)
  "Deserializes a message object of type '<GoToArmPose-response>"
    (cl:setf (cl:slot-value msg 'success) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<GoToArmPose-response>)))
  "Returns string type for a service object of type '<GoToArmPose-response>"
  "ku_arm_belt_driver/GoToArmPoseResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'GoToArmPose-response)))
  "Returns string type for a service object of type 'GoToArmPose-response"
  "ku_arm_belt_driver/GoToArmPoseResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<GoToArmPose-response>)))
  "Returns md5sum for a message object of type '<GoToArmPose-response>"
  "79d88096a3ed8bf571f433b49f30cb27")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'GoToArmPose-response)))
  "Returns md5sum for a message object of type 'GoToArmPose-response"
  "79d88096a3ed8bf571f433b49f30cb27")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<GoToArmPose-response>)))
  "Returns full string definition for message of type '<GoToArmPose-response>"
  (cl:format cl:nil "bool success~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'GoToArmPose-response)))
  "Returns full string definition for message of type 'GoToArmPose-response"
  (cl:format cl:nil "bool success~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <GoToArmPose-response>))
  (cl:+ 0
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <GoToArmPose-response>))
  "Converts a ROS message object to a list"
  (cl:list 'GoToArmPose-response
    (cl:cons ':success (success msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'GoToArmPose)))
  'GoToArmPose-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'GoToArmPose)))
  'GoToArmPose-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'GoToArmPose)))
  "Returns string type for a service object of type '<GoToArmPose>"
  "ku_arm_belt_driver/GoToArmPose")