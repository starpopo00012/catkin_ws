;; Auto-generated. Do not edit!


(when (boundp 'your_smach::trigger)
  (if (not (find-package "YOUR_SMACH"))
    (make-package "YOUR_SMACH"))
  (shadow 'trigger (find-package "YOUR_SMACH")))
(unless (find-package "YOUR_SMACH::TRIGGER")
  (make-package "YOUR_SMACH::TRIGGER"))
(unless (find-package "YOUR_SMACH::TRIGGERREQUEST")
  (make-package "YOUR_SMACH::TRIGGERREQUEST"))
(unless (find-package "YOUR_SMACH::TRIGGERRESPONSE")
  (make-package "YOUR_SMACH::TRIGGERRESPONSE"))

(in-package "ROS")





(defclass your_smach::triggerRequest
  :super ros::object
  :slots ())

(defmethod your_smach::triggerRequest
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

(defclass your_smach::triggerResponse
  :super ros::object
  :slots (_ans ))

(defmethod your_smach::triggerResponse
  (:init
   (&key
    ((:ans __ans) "")
    )
   (send-super :init)
   (setq _ans (string __ans))
   self)
  (:ans
   (&optional __ans)
   (if __ans (setq _ans __ans)) _ans)
  (:serialization-length
   ()
   (+
    ;; string _ans
    4 (length _ans)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _ans
       (write-long (length _ans) s) (princ _ans s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _ans
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _ans (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(defclass your_smach::trigger
  :super ros::object
  :slots ())

(setf (get your_smach::trigger :md5sum-) "65c770945c83e7be8dd04ade02be6046")
(setf (get your_smach::trigger :datatype-) "your_smach/trigger")
(setf (get your_smach::trigger :request) your_smach::triggerRequest)
(setf (get your_smach::trigger :response) your_smach::triggerResponse)

(defmethod your_smach::triggerRequest
  (:response () (instance your_smach::triggerResponse :init)))

(setf (get your_smach::triggerRequest :md5sum-) "65c770945c83e7be8dd04ade02be6046")
(setf (get your_smach::triggerRequest :datatype-) "your_smach/triggerRequest")
(setf (get your_smach::triggerRequest :definition-)
      "---
string ans

")

(setf (get your_smach::triggerResponse :md5sum-) "65c770945c83e7be8dd04ade02be6046")
(setf (get your_smach::triggerResponse :datatype-) "your_smach/triggerResponse")
(setf (get your_smach::triggerResponse :definition-)
      "---
string ans

")



(provide :your_smach/trigger "65c770945c83e7be8dd04ade02be6046")


