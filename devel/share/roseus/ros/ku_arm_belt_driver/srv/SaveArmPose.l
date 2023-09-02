;; Auto-generated. Do not edit!


(when (boundp 'ku_arm_belt_driver::SaveArmPose)
  (if (not (find-package "KU_ARM_BELT_DRIVER"))
    (make-package "KU_ARM_BELT_DRIVER"))
  (shadow 'SaveArmPose (find-package "KU_ARM_BELT_DRIVER")))
(unless (find-package "KU_ARM_BELT_DRIVER::SAVEARMPOSE")
  (make-package "KU_ARM_BELT_DRIVER::SAVEARMPOSE"))
(unless (find-package "KU_ARM_BELT_DRIVER::SAVEARMPOSEREQUEST")
  (make-package "KU_ARM_BELT_DRIVER::SAVEARMPOSEREQUEST"))
(unless (find-package "KU_ARM_BELT_DRIVER::SAVEARMPOSERESPONSE")
  (make-package "KU_ARM_BELT_DRIVER::SAVEARMPOSERESPONSE"))

(in-package "ROS")





(defclass ku_arm_belt_driver::SaveArmPoseRequest
  :super ros::object
  :slots (_pose_name ))

(defmethod ku_arm_belt_driver::SaveArmPoseRequest
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

(defclass ku_arm_belt_driver::SaveArmPoseResponse
  :super ros::object
  :slots (_success ))

(defmethod ku_arm_belt_driver::SaveArmPoseResponse
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

(defclass ku_arm_belt_driver::SaveArmPose
  :super ros::object
  :slots ())

(setf (get ku_arm_belt_driver::SaveArmPose :md5sum-) "79d88096a3ed8bf571f433b49f30cb27")
(setf (get ku_arm_belt_driver::SaveArmPose :datatype-) "ku_arm_belt_driver/SaveArmPose")
(setf (get ku_arm_belt_driver::SaveArmPose :request) ku_arm_belt_driver::SaveArmPoseRequest)
(setf (get ku_arm_belt_driver::SaveArmPose :response) ku_arm_belt_driver::SaveArmPoseResponse)

(defmethod ku_arm_belt_driver::SaveArmPoseRequest
  (:response () (instance ku_arm_belt_driver::SaveArmPoseResponse :init)))

(setf (get ku_arm_belt_driver::SaveArmPoseRequest :md5sum-) "79d88096a3ed8bf571f433b49f30cb27")
(setf (get ku_arm_belt_driver::SaveArmPoseRequest :datatype-) "ku_arm_belt_driver/SaveArmPoseRequest")
(setf (get ku_arm_belt_driver::SaveArmPoseRequest :definition-)
      "string pose_name
---
bool success
")

(setf (get ku_arm_belt_driver::SaveArmPoseResponse :md5sum-) "79d88096a3ed8bf571f433b49f30cb27")
(setf (get ku_arm_belt_driver::SaveArmPoseResponse :datatype-) "ku_arm_belt_driver/SaveArmPoseResponse")
(setf (get ku_arm_belt_driver::SaveArmPoseResponse :definition-)
      "string pose_name
---
bool success
")



(provide :ku_arm_belt_driver/SaveArmPose "79d88096a3ed8bf571f433b49f30cb27")


