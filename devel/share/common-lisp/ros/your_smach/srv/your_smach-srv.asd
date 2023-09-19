
(cl:in-package :asdf)

(defsystem "your_smach-srv"
  :depends-on (:roslisp-msg-protocol :roslisp-utils )
  :components ((:file "_package")
    (:file "GoToPosition" :depends-on ("_package_GoToPosition"))
    (:file "_package_GoToPosition" :depends-on ("_package"))
    (:file "trigger" :depends-on ("_package_trigger"))
    (:file "_package_trigger" :depends-on ("_package"))
  ))