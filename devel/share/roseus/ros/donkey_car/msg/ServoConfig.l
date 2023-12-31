;; Auto-generated. Do not edit!


(when (boundp 'donkey_car::ServoConfig)
  (if (not (find-package "DONKEY_CAR"))
    (make-package "DONKEY_CAR"))
  (shadow 'ServoConfig (find-package "DONKEY_CAR")))
(unless (find-package "DONKEY_CAR::SERVOCONFIG")
  (make-package "DONKEY_CAR::SERVOCONFIG"))

(in-package "ROS")
;;//! \htmlinclude ServoConfig.msg.html


(defclass donkey_car::ServoConfig
  :super ros::object
  :slots (_servo _center _range _direction ))

(defmethod donkey_car::ServoConfig
  (:init
   (&key
    ((:servo __servo) 0)
    ((:center __center) 0)
    ((:range __range) 0)
    ((:direction __direction) 0)
    )
   (send-super :init)
   (setq _servo (round __servo))
   (setq _center (round __center))
   (setq _range (round __range))
   (setq _direction (round __direction))
   self)
  (:servo
   (&optional __servo)
   (if __servo (setq _servo __servo)) _servo)
  (:center
   (&optional __center)
   (if __center (setq _center __center)) _center)
  (:range
   (&optional __range)
   (if __range (setq _range __range)) _range)
  (:direction
   (&optional __direction)
   (if __direction (setq _direction __direction)) _direction)
  (:serialization-length
   ()
   (+
    ;; int16 _servo
    2
    ;; int16 _center
    2
    ;; int16 _range
    2
    ;; int16 _direction
    2
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int16 _servo
       (write-word _servo s)
     ;; int16 _center
       (write-word _center s)
     ;; int16 _range
       (write-word _range s)
     ;; int16 _direction
       (write-word _direction s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int16 _servo
     (setq _servo (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; int16 _center
     (setq _center (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; int16 _range
     (setq _range (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; int16 _direction
     (setq _direction (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;;
   self)
  )

(setf (get donkey_car::ServoConfig :md5sum-) "d258bdc7108a9660981de680cfa4372d")
(setf (get donkey_car::ServoConfig :datatype-) "donkey_car/ServoConfig")
(setf (get donkey_car::ServoConfig :definition-)
      "# the ServoConfig message is used to assign specific configuration
# data to a servo. the data is needed to normalize servos to
# common values to isolate variations from the rest of the user's
# robot motion code. 

int16 servo
int16 center
int16 range
int16 direction

")



(provide :donkey_car/ServoConfig "d258bdc7108a9660981de680cfa4372d")


