
(cl:in-package :asdf)

(defsystem "ku_arm_belt_driver-srv"
  :depends-on (:roslisp-msg-protocol :roslisp-utils )
  :components ((:file "_package")
    (:file "GoToArmPose" :depends-on ("_package_GoToArmPose"))
    (:file "_package_GoToArmPose" :depends-on ("_package"))
    (:file "SaveArmPose" :depends-on ("_package_SaveArmPose"))
    (:file "_package_SaveArmPose" :depends-on ("_package"))
  ))