;; Auto-generated. Do not edit!


(when (boundp 'your_package::SaveLocation)
  (if (not (find-package "YOUR_PACKAGE"))
    (make-package "YOUR_PACKAGE"))
  (shadow 'SaveLocation (find-package "YOUR_PACKAGE")))
(unless (find-package "YOUR_PACKAGE::SAVELOCATION")
  (make-package "YOUR_PACKAGE::SAVELOCATION"))
(unless (find-package "YOUR_PACKAGE::SAVELOCATIONREQUEST")
  (make-package "YOUR_PACKAGE::SAVELOCATIONREQUEST"))
(unless (find-package "YOUR_PACKAGE::SAVELOCATIONRESPONSE")
  (make-package "YOUR_PACKAGE::SAVELOCATIONRESPONSE"))

(in-package "ROS")





(defclass your_package::SaveLocationRequest
  :super ros::object
  :slots (_location_name ))

(defmethod your_package::SaveLocationRequest
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

(defclass your_package::SaveLocationResponse
  :super ros::object
  :slots (_success ))

(defmethod your_package::SaveLocationResponse
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

(defclass your_package::SaveLocation
  :super ros::object
  :slots ())

(setf (get your_package::SaveLocation :md5sum-) "3a4956001e76e70331ffcf62ffc6a8d5")
(setf (get your_package::SaveLocation :datatype-) "your_package/SaveLocation")
(setf (get your_package::SaveLocation :request) your_package::SaveLocationRequest)
(setf (get your_package::SaveLocation :response) your_package::SaveLocationResponse)

(defmethod your_package::SaveLocationRequest
  (:response () (instance your_package::SaveLocationResponse :init)))

(setf (get your_package::SaveLocationRequest :md5sum-) "3a4956001e76e70331ffcf62ffc6a8d5")
(setf (get your_package::SaveLocationRequest :datatype-) "your_package/SaveLocationRequest")
(setf (get your_package::SaveLocationRequest :definition-)
      "string location_name
---
bool success


")

(setf (get your_package::SaveLocationResponse :md5sum-) "3a4956001e76e70331ffcf62ffc6a8d5")
(setf (get your_package::SaveLocationResponse :datatype-) "your_package/SaveLocationResponse")
(setf (get your_package::SaveLocationResponse :definition-)
      "string location_name
---
bool success


")



(provide :your_package/SaveLocation "3a4956001e76e70331ffcf62ffc6a8d5")


