;; Auto-generated. Do not edit!


(when (boundp 'your_smach::GoToPosition)
  (if (not (find-package "YOUR_SMACH"))
    (make-package "YOUR_SMACH"))
  (shadow 'GoToPosition (find-package "YOUR_SMACH")))
(unless (find-package "YOUR_SMACH::GOTOPOSITION")
  (make-package "YOUR_SMACH::GOTOPOSITION"))
(unless (find-package "YOUR_SMACH::GOTOPOSITIONREQUEST")
  (make-package "YOUR_SMACH::GOTOPOSITIONREQUEST"))
(unless (find-package "YOUR_SMACH::GOTOPOSITIONRESPONSE")
  (make-package "YOUR_SMACH::GOTOPOSITIONRESPONSE"))

(in-package "ROS")





(defclass your_smach::GoToPositionRequest
  :super ros::object
  :slots (_position_name ))

(defmethod your_smach::GoToPositionRequest
  (:init
   (&key
    ((:position_name __position_name) "")
    )
   (send-super :init)
   (setq _position_name (string __position_name))
   self)
  (:position_name
   (&optional __position_name)
   (if __position_name (setq _position_name __position_name)) _position_name)
  (:serialization-length
   ()
   (+
    ;; string _position_name
    4 (length _position_name)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _position_name
       (write-long (length _position_name) s) (princ _position_name s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _position_name
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _position_name (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(defclass your_smach::GoToPositionResponse
  :super ros::object
  :slots (_success ))

(defmethod your_smach::GoToPositionResponse
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

(defclass your_smach::GoToPosition
  :super ros::object
  :slots ())

(setf (get your_smach::GoToPosition :md5sum-) "b2053259e93d06245bdd1477ed5595a1")
(setf (get your_smach::GoToPosition :datatype-) "your_smach/GoToPosition")
(setf (get your_smach::GoToPosition :request) your_smach::GoToPositionRequest)
(setf (get your_smach::GoToPosition :response) your_smach::GoToPositionResponse)

(defmethod your_smach::GoToPositionRequest
  (:response () (instance your_smach::GoToPositionResponse :init)))

(setf (get your_smach::GoToPositionRequest :md5sum-) "b2053259e93d06245bdd1477ed5595a1")
(setf (get your_smach::GoToPositionRequest :datatype-) "your_smach/GoToPositionRequest")
(setf (get your_smach::GoToPositionRequest :definition-)
      "string position_name
---
bool success

")

(setf (get your_smach::GoToPositionResponse :md5sum-) "b2053259e93d06245bdd1477ed5595a1")
(setf (get your_smach::GoToPositionResponse :datatype-) "your_smach/GoToPositionResponse")
(setf (get your_smach::GoToPositionResponse :definition-)
      "string position_name
---
bool success

")



(provide :your_smach/GoToPosition "b2053259e93d06245bdd1477ed5595a1")


