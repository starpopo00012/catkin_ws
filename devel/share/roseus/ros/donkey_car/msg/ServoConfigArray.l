;; Auto-generated. Do not edit!


(when (boundp 'donkey_car::ServoConfigArray)
  (if (not (find-package "DONKEY_CAR"))
    (make-package "DONKEY_CAR"))
  (shadow 'ServoConfigArray (find-package "DONKEY_CAR")))
(unless (find-package "DONKEY_CAR::SERVOCONFIGARRAY")
  (make-package "DONKEY_CAR::SERVOCONFIGARRAY"))

(in-package "ROS")
;;//! \htmlinclude ServoConfigArray.msg.html


(defclass donkey_car::ServoConfigArray
  :super ros::object
  :slots (_servos ))

(defmethod donkey_car::ServoConfigArray
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

(setf (get donkey_car::ServoConfigArray :md5sum-) "8f9c43713b493f265aec1e926dd292b8")
(setf (get donkey_car::ServoConfigArray :datatype-) "donkey_car/ServoConfigArray")
(setf (get donkey_car::ServoConfigArray :definition-)
      "# the ServoConfigArray message is used to handle multiple assignments
# of config data to servos. the data is needed to normalize servos to
# common values to isolate variations from the rest of the user's
# robot motion code. 

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

")



(provide :donkey_car/ServoConfigArray "8f9c43713b493f265aec1e926dd292b8")


