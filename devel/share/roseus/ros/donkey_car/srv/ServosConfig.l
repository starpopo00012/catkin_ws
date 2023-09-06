;; Auto-generated. Do not edit!


(when (boundp 'donkey_car::ServosConfig)
  (if (not (find-package "DONKEY_CAR"))
    (make-package "DONKEY_CAR"))
  (shadow 'ServosConfig (find-package "DONKEY_CAR")))
(unless (find-package "DONKEY_CAR::SERVOSCONFIG")
  (make-package "DONKEY_CAR::SERVOSCONFIG"))
(unless (find-package "DONKEY_CAR::SERVOSCONFIGREQUEST")
  (make-package "DONKEY_CAR::SERVOSCONFIGREQUEST"))
(unless (find-package "DONKEY_CAR::SERVOSCONFIGRESPONSE")
  (make-package "DONKEY_CAR::SERVOSCONFIGRESPONSE"))

(in-package "ROS")





(defclass donkey_car::ServosConfigRequest
  :super ros::object
  :slots (_servos ))

(defmethod donkey_car::ServosConfigRequest
  (:init
   (&key
    ((:servos __servos) ())
    )
   (send-super :init)
   (setq _servos __servos)
   self)
  (:servos
   (&rest __servos)
   (if (keywordp (car __servos))
       (send* _servos __servos)
     (progn
       (if __servos (setq _servos (car __servos)))
       _servos)))
  (:serialization-length
   ()
   (+
    ;; donkey_car/ServoConfig[] _servos
    (apply #'+ (send-all _servos :serialization-length)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; donkey_car/ServoConfig[] _servos
     (write-long (length _servos) s)
     (dolist (elem _servos)
       (send elem :serialize s)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; donkey_car/ServoConfig[] _servos
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _servos (let (r) (dotimes (i n) (push (instance donkey_car::ServoConfig :init) r)) r))
     (dolist (elem- _servos)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;;
   self)
  )

(defclass donkey_car::ServosConfigResponse
  :super ros::object
  :slots (_error ))

(defmethod donkey_car::ServosConfigResponse
  (:init
   (&key
    ((:error __error) 0)
    )
   (send-super :init)
   (setq _error (round __error))
   self)
  (:error
   (&optional __error)
   (if __error (setq _error __error)) _error)
  (:serialization-length
   ()
   (+
    ;; int16 _error
    2
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int16 _error
       (write-word _error s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int16 _error
     (setq _error (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;;
   self)
  )

(defclass donkey_car::ServosConfig
  :super ros::object
  :slots ())

(setf (get donkey_car::ServosConfig :md5sum-) "29a8ed89c4fc7505dd84e9625c298b65")
(setf (get donkey_car::ServosConfig :datatype-) "donkey_car/ServosConfig")
(setf (get donkey_car::ServosConfig :request) donkey_car::ServosConfigRequest)
(setf (get donkey_car::ServosConfig :response) donkey_car::ServosConfigResponse)

(defmethod donkey_car::ServosConfigRequest
  (:response () (instance donkey_car::ServosConfigResponse :init)))

(setf (get donkey_car::ServosConfigRequest :md5sum-) "29a8ed89c4fc7505dd84e9625c298b65")
(setf (get donkey_car::ServosConfigRequest :datatype-) "donkey_car/ServosConfigRequest")
(setf (get donkey_car::ServosConfigRequest :definition-)
      "# the servos_config service is used to assign useful configuration data to servos
# the tollerance of electronis varies in RC servos so it is important to calibate
# each servo, indicating its PWM value for direction of rotation, centering, and
# range which is used to scale servo motion a standard ±1000 scale

ServoConfig[] servos

================================================================================
MSG: donkey_car/ServoConfig
# the ServoConfig message is used to assign specific configuration
# data to a servo. the data is needed to normalize servos to
# common values to isolate variations from the rest of the user's
# robot motion code. 

int16 servo
int16 center
int16 range
int16 direction
---
int16 error

")

(setf (get donkey_car::ServosConfigResponse :md5sum-) "29a8ed89c4fc7505dd84e9625c298b65")
(setf (get donkey_car::ServosConfigResponse :datatype-) "donkey_car/ServosConfigResponse")
(setf (get donkey_car::ServosConfigResponse :definition-)
      "# the servos_config service is used to assign useful configuration data to servos
# the tollerance of electronis varies in RC servos so it is important to calibate
# each servo, indicating its PWM value for direction of rotation, centering, and
# range which is used to scale servo motion a standard ±1000 scale

ServoConfig[] servos

================================================================================
MSG: donkey_car/ServoConfig
# the ServoConfig message is used to assign specific configuration
# data to a servo. the data is needed to normalize servos to
# common values to isolate variations from the rest of the user's
# robot motion code. 

int16 servo
int16 center
int16 range
int16 direction
---
int16 error

")



(provide :donkey_car/ServosConfig "29a8ed89c4fc7505dd84e9625c298b65")


