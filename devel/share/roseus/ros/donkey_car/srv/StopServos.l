;; Auto-generated. Do not edit!


(when (boundp 'donkey_car::StopServos)
  (if (not (find-package "DONKEY_CAR"))
    (make-package "DONKEY_CAR"))
  (shadow 'StopServos (find-package "DONKEY_CAR")))
(unless (find-package "DONKEY_CAR::STOPSERVOS")
  (make-package "DONKEY_CAR::STOPSERVOS"))
(unless (find-package "DONKEY_CAR::STOPSERVOSREQUEST")
  (make-package "DONKEY_CAR::STOPSERVOSREQUEST"))
(unless (find-package "DONKEY_CAR::STOPSERVOSRESPONSE")
  (make-package "DONKEY_CAR::STOPSERVOSRESPONSE"))

(in-package "ROS")





(defclass donkey_car::StopServosRequest
  :super ros::object
  :slots ())

(defmethod donkey_car::StopServosRequest
  (:init
   (&key
    )
   (send-super :init)
   self)
  (:serialization-length
   ()
   (+
    0
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;;
   self)
  )

(defclass donkey_car::StopServosResponse
  :super ros::object
  :slots ())

(defmethod donkey_car::StopServosResponse
  (:init
   (&key
    )
   (send-super :init)
   self)
  (:serialization-length
   ()
   (+
    0
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;;
   self)
  )

(defclass donkey_car::StopServos
  :super ros::object
  :slots ())

(setf (get donkey_car::StopServos :md5sum-) "d41d8cd98f00b204e9800998ecf8427e")
(setf (get donkey_car::StopServos :datatype-) "donkey_car/StopServos")
(setf (get donkey_car::StopServos :request) donkey_car::StopServosRequest)
(setf (get donkey_car::StopServos :response) donkey_car::StopServosResponse)

(defmethod donkey_car::StopServosRequest
  (:response () (instance donkey_car::StopServosResponse :init)))

(setf (get donkey_car::StopServosRequest :md5sum-) "d41d8cd98f00b204e9800998ecf8427e")
(setf (get donkey_car::StopServosRequest :datatype-) "donkey_car/StopServosRequest")
(setf (get donkey_car::StopServosRequest :definition-)
      "

---

")

(setf (get donkey_car::StopServosResponse :md5sum-) "d41d8cd98f00b204e9800998ecf8427e")
(setf (get donkey_car::StopServosResponse :datatype-) "donkey_car/StopServosResponse")
(setf (get donkey_car::StopServosResponse :definition-)
      "

---

")



(provide :donkey_car/StopServos "d41d8cd98f00b204e9800998ecf8427e")


