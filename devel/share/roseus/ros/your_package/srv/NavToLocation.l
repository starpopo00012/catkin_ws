;; Auto-generated. Do not edit!


(when (boundp 'your_package::NavToLocation)
  (if (not (find-package "YOUR_PACKAGE"))
    (make-package "YOUR_PACKAGE"))
  (shadow 'NavToLocation (find-package "YOUR_PACKAGE")))
(unless (find-package "YOUR_PACKAGE::NAVTOLOCATION")
  (make-package "YOUR_PACKAGE::NAVTOLOCATION"))
(unless (find-package "YOUR_PACKAGE::NAVTOLOCATIONREQUEST")
  (make-package "YOUR_PACKAGE::NAVTOLOCATIONREQUEST"))
(unless (find-package "YOUR_PACKAGE::NAVTOLOCATIONRESPONSE")
  (make-package "YOUR_PACKAGE::NAVTOLOCATIONRESPONSE"))

(in-package "ROS")





(defclass your_package::NavToLocationRequest
  :super ros::object
  :slots (_location_name ))

(defmethod your_package::NavToLocationRequest
  (:init
   (&key
    ((:location_name __location_name) "")
    )
   (send-super :init)
   (setq _location_name (string __location_name))
   self)
  (:location_name
   (&optional __location_name)
   (if __location_name (setq _location_name __location_name)) _location_name)
  (:serialization-length
   ()
   (+
    ;; string _location_name
    4 (length _location_name)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _location_name
       (write-long (length _location_name) s) (princ _location_name s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _location_name
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _location_name (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(defclass your_package::NavToLocationResponse
  :super ros::object
  :slots (_success ))

(defmethod your_package::NavToLocationResponse
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

(defclass your_package::NavToLocation
  :super ros::object
  :slots ())

(setf (get your_package::NavToLocation :md5sum-) "3a4956001e76e70331ffcf62ffc6a8d5")
(setf (get your_package::NavToLocation :datatype-) "your_package/NavToLocation")
(setf (get your_package::NavToLocation :request) your_package::NavToLocationRequest)
(setf (get your_package::NavToLocation :response) your_package::NavToLocationResponse)

(defmethod your_package::NavToLocationRequest
  (:response () (instance your_package::NavToLocationResponse :init)))

(setf (get your_package::NavToLocationRequest :md5sum-) "3a4956001e76e70331ffcf62ffc6a8d5")
(setf (get your_package::NavToLocationRequest :datatype-) "your_package/NavToLocationRequest")
(setf (get your_package::NavToLocationRequest :definition-)
      "string location_name
---
bool success

")

(setf (get your_package::NavToLocationResponse :md5sum-) "3a4956001e76e70331ffcf62ffc6a8d5")
(setf (get your_package::NavToLocationResponse :datatype-) "your_package/NavToLocationResponse")
(setf (get your_package::NavToLocationResponse :definition-)
      "string location_name
---
bool success

")



(provide :your_package/NavToLocation "3a4956001e76e70331ffcf62ffc6a8d5")


