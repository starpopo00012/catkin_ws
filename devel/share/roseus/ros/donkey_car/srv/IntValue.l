;; Auto-generated. Do not edit!


(when (boundp 'donkey_car::IntValue)
  (if (not (find-package "DONKEY_CAR"))
    (make-package "DONKEY_CAR"))
  (shadow 'IntValue (find-package "DONKEY_CAR")))
(unless (find-package "DONKEY_CAR::INTVALUE")
  (make-package "DONKEY_CAR::INTVALUE"))
(unless (find-package "DONKEY_CAR::INTVALUEREQUEST")
  (make-package "DONKEY_CAR::INTVALUEREQUEST"))
(unless (find-package "DONKEY_CAR::INTVALUERESPONSE")
  (make-package "DONKEY_CAR::INTVALUERESPONSE"))

(in-package "ROS")





(defclass donkey_car::IntValueRequest
  :super ros::object
  :slots (_value ))

(defmethod donkey_car::IntValueRequest
  (:init
   (&key
    ((:value __value) 0)
    )
   (send-super :init)
   (setq _value (round __value))
   self)
  (:value
   (&optional __value)
   (if __value (setq _value __value)) _value)
  (:serialization-length
   ()
   (+
    ;; int16 _value
    2
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int16 _value
       (write-word _value s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int16 _value
     (setq _value (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;;
   self)
  )

(defclass donkey_car::IntValueResponse
  :super ros::object
  :slots (_error ))

(defmethod donkey_car::IntValueResponse
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

(defclass donkey_car::IntValue
  :super ros::object
  :slots ())

(setf (get donkey_car::IntValue :md5sum-) "0f0a503a6dfd41f41ab6b6db4044064a")
(setf (get donkey_car::IntValue :datatype-) "donkey_car/IntValue")
(setf (get donkey_car::IntValue :request) donkey_car::IntValueRequest)
(setf (get donkey_car::IntValue :response) donkey_car::IntValueResponse)

(defmethod donkey_car::IntValueRequest
  (:response () (instance donkey_car::IntValueResponse :init)))

(setf (get donkey_car::IntValueRequest :md5sum-) "0f0a503a6dfd41f41ab6b6db4044064a")
(setf (get donkey_car::IntValueRequest :datatype-) "donkey_car/IntValueRequest")
(setf (get donkey_car::IntValueRequest :definition-)
      "# there are a few services whic take a single integer as input
# these services share the IntValue service definition

int16 value
---
int16 error


")

(setf (get donkey_car::IntValueResponse :md5sum-) "0f0a503a6dfd41f41ab6b6db4044064a")
(setf (get donkey_car::IntValueResponse :datatype-) "donkey_car/IntValueResponse")
(setf (get donkey_car::IntValueResponse :definition-)
      "# there are a few services whic take a single integer as input
# these services share the IntValue service definition

int16 value
---
int16 error


")



(provide :donkey_car/IntValue "0f0a503a6dfd41f41ab6b6db4044064a")


