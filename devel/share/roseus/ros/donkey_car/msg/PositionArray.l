;; Auto-generated. Do not edit!


(when (boundp 'donkey_car::PositionArray)
  (if (not (find-package "DONKEY_CAR"))
    (make-package "DONKEY_CAR"))
  (shadow 'PositionArray (find-package "DONKEY_CAR")))
(unless (find-package "DONKEY_CAR::POSITIONARRAY")
  (make-package "DONKEY_CAR::POSITIONARRAY"))

(in-package "ROS")
;;//! \htmlinclude PositionArray.msg.html


(defclass donkey_car::PositionArray
  :super ros::object
  :slots (_servos ))

(defmethod donkey_car::PositionArray
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
    ;; donkey_car/Position[] _servos
    (apply #'+ (send-all _servos :serialization-length)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; donkey_car/Position[] _servos
     (write-long (length _servos) s)
     (dolist (elem _servos)
       (send elem :serialize s)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; donkey_car/Position[] _servos
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _servos (let (r) (dotimes (i n) (push (instance donkey_car::Position :init) r)) r))
     (dolist (elem- _servos)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;;
   self)
  )

(setf (get donkey_car::PositionArray :md5sum-) "06b5be802f78af7b5ec929fe386952bb")
(setf (get donkey_car::PositionArray :datatype-) "donkey_car/PositionArray")
(setf (get donkey_car::PositionArray :definition-)
      "# the PositionArray message handles multiple position assignments
# of servos.

Position[] servos

================================================================================
MSG: donkey_car/Position
# the position message is used when configuring drive mode to
# assign a  servo to a specific wheel positon in the drive system
# postions are specific toe the desired drive mode
# ackerman has only one position
# 1 = drive
# differential has two positons
# 1 = left, 2 = right
# mecanum has four positions
# 1 = front left, 2 = front right, 3 = rear left, 4 = rear right
# multiple servos/motors may be used for each positon

int16 servo
int16 position

")



(provide :donkey_car/PositionArray "06b5be802f78af7b5ec929fe386952bb")


