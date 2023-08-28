
(cl:in-package :asdf)

(defsystem "your_package-srv"
  :depends-on (:roslisp-msg-protocol :roslisp-utils )
  :components ((:file "_package")
    (:file "NavToLocation" :depends-on ("_package_NavToLocation"))
    (:file "_package_NavToLocation" :depends-on ("_package"))
    (:file "SaveLocation" :depends-on ("_package_SaveLocation"))
    (:file "_package_SaveLocation" :depends-on ("_package"))
  ))