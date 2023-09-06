;; Auto-generated. Do not edit!


(when (boundp 'donkey_car::Position)
  (if (not (find-package "DONKEY_CAR"))
    (make-package "DONKEY_CAR"))
  (shadow 'Position (find-package "DONKEY_CAR")))
(unless (find-package "DONKEY_CAR::POSITION")
  (make-package "DONKEY_CAR::POSITION"))

(in-package "ROS")
;;//! \htmlinclude Position.msg.html


(defclass donkey_car::Position
  :super ros::object
  :slots (_servo _position ))

(defmethod donkey_car::Position
  (:init
   (&key
    ((:servo __servo) 0)
    ((:position __position) 0)
    )
   (send-super :init)
   (setq _servo (round __servo))
   (setq _position (round __position))
   self)
  (:servo
   (&optional __servo)
   (if __servo (setq _servo __servo)) _servo)
  (:position
   (&optional __position)
   (if __position (setq _position __position)) _position)
  (:serialization-length
   ()
   (+
    ;; int16 _servo
    2
    ;; int16 _position
    2
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int16 _servo
       (write-word _servo s)
     ;; int16 _position
       (write-word _position s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int16 _servo
     (setq _servo (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; int16 _position
     (setq _position (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;;
   self)
  )

(setf (get donkey_car::Position :md5sum-) "46d1769fd9d3e30e5c4274bd2f84d885")
(setf (get donkey_car::Position :datatype-) "donkey_car/Position")
(setf (get donkey_car::Position :definition-)
      "# the position message is used when configuring drive mode to
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



(provide :donkey_car/Position "46d1769fd9d3e30e5c4274bd2f84d885")


