; Auto-generated. Do not edit!


(in-package roslib-msg)


;//! \htmlinclude Clock.msg.html

(defclass <Clock> (ros-message)
  ((clock
    :reader clock-val
    :initarg :clock
    :type real
    :initform 0))
)
(defmethod serialize ((msg <Clock>) ostream)
  "Serializes a message object of type '<Clock>"
  (let ((__sec (floor (slot-value msg 'clock)))
        (__nsec (round (* 1e9 (- (slot-value msg 'clock) (floor (slot-value msg 'clock)))))))
    (write-byte (ldb (byte 8 0) __sec) ostream)
    (write-byte (ldb (byte 8 8) __sec) ostream)
    (write-byte (ldb (byte 8 16) __sec) ostream)
    (write-byte (ldb (byte 8 24) __sec) ostream)
    (write-byte (ldb (byte 8 0) __nsec) ostream)
    (write-byte (ldb (byte 8 8) __nsec) ostream)
    (write-byte (ldb (byte 8 16) __nsec) ostream)
    (write-byte (ldb (byte 8 24) __nsec) ostream))
)
(defmethod deserialize ((msg <Clock>) istream)
  "Deserializes a message object of type '<Clock>"
  (let ((__sec 0) (__nsec 0))
    (setf (ldb (byte 8 0) __sec) (read-byte istream))
    (setf (ldb (byte 8 8) __sec) (read-byte istream))
    (setf (ldb (byte 8 16) __sec) (read-byte istream))
    (setf (ldb (byte 8 24) __sec) (read-byte istream))
    (setf (ldb (byte 8 0) __nsec) (read-byte istream))
    (setf (ldb (byte 8 8) __nsec) (read-byte istream))
    (setf (ldb (byte 8 16) __nsec) (read-byte istream))
    (setf (ldb (byte 8 24) __nsec) (read-byte istream))
    (setf (slot-value msg 'clock) (+ (coerce __sec 'double-float) (/ __nsec 1e9))))
  msg
)
(defmethod ros-datatype ((msg (eql '<Clock>)))
  "Returns string type for a message object of type '<Clock>"
  "roslib/Clock")
(defmethod md5sum ((type (eql '<Clock>)))
  "Returns md5sum for a message object of type '<Clock>"
  "a9c97c1d230cfc112e270351a944ee47")
(defmethod message-definition ((type (eql '<Clock>)))
  "Returns full string definition for message of type '<Clock>"
  (format nil "# roslib/Clock is used for publishing simulated time in ROS. ~%# This message simply communicates the current time.~%# For more information, see http://www.ros.org/wiki/Clock~%time clock~%~%~%"))
(defmethod serialization-length ((msg <Clock>))
  (+ 0
     8
))
(defmethod ros-message-to-list ((msg <Clock>))
  "Converts a ROS message object to a list"
  (list '<Clock>
    (cons ':clock (clock-val msg))
))
