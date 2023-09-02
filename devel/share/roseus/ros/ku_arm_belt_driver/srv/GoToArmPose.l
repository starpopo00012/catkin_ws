;; Auto-generated. Do not edit!


(when (boundp 'ku_arm_belt_driver::GoToArmPose)
  (if (not (find-package "KU_ARM_BELT_DRIVER"))
    (make-package "KU_ARM_BELT_DRIVER"))
  (shadow 'GoToArmPose (find-package "KU_ARM_BELT_DRIVER")))
(unless (find-package "KU_ARM_BELT_DRIVER::GOTOARMPOSE")
  (make-package "KU_ARM_BELT_DRIVER::GOTOARMPOSE"))
(unless (find-package "KU_ARM_BELT_DRIVER::GOTOARMPOSEREQUEST")
  (make-package "KU_ARM_BELT_DRIVER::GOTOARMPOSEREQUEST"))
(unless (find-package "KU_ARM_BELT_DRIVER::GOTOARMPOSERESPONSE")
  (make-package "KU_ARM_BELT_DRIVER::GOTOARMPOSERESPONSE"))

(in-package "ROS")





(defclass ku_arm_belt_driver::GoToArmPoseRequest
  :super ros::object
  :slots (_pose_name ))

(defmethod ku_arm_belt_driver::GoToArmPoseRequest
  (:init
   (&key
    ((:pose_name __pose_name) "")
    )
   (send-super :init)
   (setq _pose_name (string __pose_name))
   self)
  (:pose_name
   (&optional __pose_name)
   (if __pose_name (setq _pose_name __pose_name)) _pose_name)
  (:serialization-length
   ()
   (+
    ;; string _pose_name
    4 (length _pose_name)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _pose_name
       (write-long (length _pose_name) s) (princ _pose_name s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _pose_name
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _pose_name (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(defclass ku_arm_belt_driver::GoToArmPoseResponse
  :super ros::object
  :slots (_success ))

(defmethod ku_arm_belt_driver::GoToArmPoseResponse
  (:init
   (&key
    ((:success __success) nil)
    )
   (send-super :init)
   (setq _success __success)
   self)
  (:success
   (&optional (__success :null))
   (if (not (eq __success :null)) (setq _success __success)) _success)
  (:serialization-length
   ()
   (+
    ;; bool _success
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; bool _success
       (if _success (write-byte -1 s) (write-byte 0 s))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; bool _success
     (setq _success (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;;
   self)
  )

(defclass ku_arm_belt_driver::GoToArmPose
  :super ros::object
  :slots ())

(setf (get ku_arm_belt_driver::GoToArmPose :md5sum-) "79d88096a3ed8bf571f433b49f30cb27")
(setf (get ku_arm_belt_driver::GoToArmPose :datatype-) "ku_arm_belt_driver/GoToArmPose")
(setf (get ku_arm_belt_driver::GoToArmPose :request) ku_arm_belt_driver::GoToArmPoseRequest)
(setf (get ku_arm_belt_driver::GoToArmPose :response) ku_arm_belt_driver::GoToArmPoseResponse)

(defmethod ku_arm_belt_driver::GoToArmPoseRequest
  (:response () (instance ku_arm_belt_driver::GoToArmPoseResponse :init)))

(setf (get ku_arm_belt_driver::GoToArmPoseRequest :md5sum-) "79d88096a3ed8bf571f433b49f30cb27")
(setf (get ku_arm_belt_driver::GoToArmPoseRequest :datatype-) "ku_arm_belt_driver/GoToArmPoseRequest")
(setf (get ku_arm_belt_driver::GoToArmPoseRequest :definition-)
      "string pose_name
---
bool success
")

(setf (get ku_arm_belt_driver::GoToArmPoseResponse :md5sum-) "79d88096a3ed8bf571f433b49f30cb27")
(setf (get ku_arm_belt_driver::GoToArmPoseResponse :datatype-) "ku_arm_belt_driver/GoToArmPoseResponse")
(setf (get ku_arm_belt_driver::GoToArmPoseResponse :definition-)
      "string pose_name
---
bool success
")



(provide :ku_arm_belt_driver/GoToArmPose "79d88096a3ed8bf571f433b49f30cb27")


