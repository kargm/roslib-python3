
(in-package :asdf)

(defsystem "roslib-msg"
  :depends-on (:roslisp-msg-protocol :roslisp-utils)
  :components ((:file "_package")
    (:file "Clock" :depends-on ("_package"))
    (:file "_package_Clock" :depends-on ("_package"))
    (:file "Header" :depends-on ("_package"))
    (:file "_package_Header" :depends-on ("_package"))
    (:file "Log" :depends-on ("_package"))
    (:file "_package_Log" :depends-on ("_package"))
    ))
