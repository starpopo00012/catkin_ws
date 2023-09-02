; Auto-generated. Do not edit!


(cl:in-package ku_arm_belt_driver-srv)


;//! \htmlinclude SaveArmPose-request.msg.html

(cl:defclass <SaveArmPose-request> (roslisp-msg-protocol:ros-message)
  ((pose_name
    :reader pose_name
    :initarg :pose_name
    :type cl:string
    :initform ""))
)

(cl:defclass SaveArmPose-request (<SaveArmPose-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <SaveArmPose-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'SaveArmPose-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name ku_arm_belt_driver-srv:<SaveArmPose-request> is deprecated: use ku_arm_belt_driver-srv:SaveArmPose-request instead.")))

(cl:ensure-generic-function 'pose_name-val :lambda-list '(m))
(cl:defmethod pose_name-val ((m <SaveArmPose-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ku_arm_belt_driver-srv:pose_name-val is deprecated.  Use ku_arm_belt_driver-srv:pose_name instead.")
  (pose_name m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <SaveArmPose-request>) ostream)
  "Serializes a message object of type '<SaveArmPose-request>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'pose_name))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'pose_name))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <SaveArmPose-request>) istream)
  "Deserializes a message object of type '<SaveArmPose-request>"
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
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<SaveArmPose-request>)))
  "Returns string type for a service object of type '<SaveArmPose-request>"
  "ku_arm_belt_driver/SaveArmPoseRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SaveArmPose-request)))
  "Returns string type for a service object of type 'SaveArmPose-request"
  "ku_arm_belt_driver/SaveArmPoseRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<SaveArmPose-request>)))
  "Returns md5sum for a message object of type '<SaveArmPose-request>"
  "79d88096a3ed8bf571f433b49f30cb27")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'SaveArmPose-request)))
  "Returns md5sum for a message object of type 'SaveArmPose-request"
  "79d88096a3ed8bf571f433b49f30cb27")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<SaveArmPose-request>)))
  "Returns full string definition for message of type '<SaveArmPose-request>"
  (cl:format cl:nil "string pose_name~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'SaveArmPose-request)))
  "Returns full string definition for message of type 'SaveArmPose-request"
  (cl:format cl:nil "string pose_name~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <SaveArmPose-request>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'pose_name))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <SaveArmPose-request>))
  "Converts a ROS message object to a list"
  (cl:list 'SaveArmPose-request
    (cl:cons ':pose_name (pose_name msg))
))
;//! \htmlinclude SaveArmPose-response.msg.html

(cl:defclass <SaveArmPose-response> (roslisp-msg-protocol:ros-message)
  ((success
    :reader success
    :initarg :success
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass SaveArmPose-response (<SaveArmPose-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <SaveArmPose-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'SaveArmPose-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name ku_arm_belt_driver-srv:<SaveArmPose-response> is deprecated: use ku_arm_belt_driver-srv:SaveArmPose-response instead.")))

(cl:ensure-generic-function 'success-val :lambda-list '(m))
(cl:defmethod success-val ((m <SaveArmPose-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ku_arm_belt_driver-srv:success-val is deprecated.  Use ku_arm_belt_driver-srv:success instead.")
  (success m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <SaveArmPose-response>) ostream)
  "Serializes a message object of type '<SaveArmPose-response>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'success) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <SaveArmPose-response>) istream)
  "Deserializes a message object of type '<SaveArmPose-response>"
    (cl:setf (cl:slot-value msg 'success) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<SaveArmPose-response>)))
  "Returns string type for a service object of type '<SaveArmPose-response>"
  "ku_arm_belt_driver/SaveArmPoseResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SaveArmPose-response)))
  "Returns string type for a service object of type 'SaveArmPose-response"
  "ku_arm_belt_driver/SaveArmPoseResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<SaveArmPose-response>)))
  "Returns md5sum for a message object of type '<SaveArmPose-response>"
  "79d88096a3ed8bf571f433b49f30cb27")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'SaveArmPose-response)))
  "Returns md5sum for a message object of type 'SaveArmPose-response"
  "79d88096a3ed8bf571f433b49f30cb27")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<SaveArmPose-response>)))
  "Returns full string definition for message of type '<SaveArmPose-response>"
  (cl:format cl:nil "bool success~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'SaveArmPose-response)))
  "Returns full string definition for message of type 'SaveArmPose-response"
  (cl:format cl:nil "bool success~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <SaveArmPose-response>))
  (cl:+ 0
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <SaveArmPose-response>))
  "Converts a ROS message object to a list"
  (cl:list 'SaveArmPose-response
    (cl:cons ':success (success msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'SaveArmPose)))
  'SaveArmPose-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'SaveArmPose)))
  'SaveArmPose-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SaveArmPose)))
  "Returns string type for a service object of type '<SaveArmPose>"
  "ku_arm_belt_driver/SaveArmPose")