; Auto-generated. Do not edit!


(in-package roslib-msg)


;//! \htmlinclude Log.msg.html

(defclass <Log> (ros-message)
  ((header
    :reader header-val
    :initarg :header
    :type roslib-msg:<Header>
    :initform (make-instance 'roslib-msg:<Header>))
   (level
    :reader level-val
    :initarg :level
    :type integer
    :initform 0)
   (name
    :reader name-val
    :initarg :name
    :type string
    :initform "")
   (msg
    :reader msg-val
    :initarg :msg
    :type string
    :initform "")
   (file
    :reader file-val
    :initarg :file
    :type string
    :initform "")
   (function
    :reader function-val
    :initarg :function
    :type string
    :initform "")
   (line
    :reader line-val
    :initarg :line
    :type integer
    :initform 0)
   (topics
    :reader topics-val
    :initarg :topics
    :type (vector string)
   :initform (make-array 0 :element-type 'string :initial-element "")))
)
(defmethod symbol-codes ((msg-type (eql '<Log>)))
  "Constants for message type '<Log>"
  '((:DEBUG . 1)
    (:INFO . 2)
    (:WARN . 4)
    (:ERROR . 8)
    (:FATAL . 16))
)
(defmethod serialize ((msg <Log>) ostream)
  "Serializes a message object of type '<Log>"
  (serialize (slot-value msg 'header) ostream)
    (write-byte (ldb (byte 8 0) (slot-value msg 'level)) ostream)
  (let ((__ros_str_len (length (slot-value msg 'name))))
    (write-byte (ldb (byte 8 0) __ros_str_len) ostream)
    (write-byte (ldb (byte 8 8) __ros_str_len) ostream)
    (write-byte (ldb (byte 8 16) __ros_str_len) ostream)
    (write-byte (ldb (byte 8 24) __ros_str_len) ostream))
  (map nil #'(lambda (c) (write-byte (char-code c) ostream)) (slot-value msg 'name))
  (let ((__ros_str_len (length (slot-value msg 'msg))))
    (write-byte (ldb (byte 8 0) __ros_str_len) ostream)
    (write-byte (ldb (byte 8 8) __ros_str_len) ostream)
    (write-byte (ldb (byte 8 16) __ros_str_len) ostream)
    (write-byte (ldb (byte 8 24) __ros_str_len) ostream))
  (map nil #'(lambda (c) (write-byte (char-code c) ostream)) (slot-value msg 'msg))
  (let ((__ros_str_len (length (slot-value msg 'file))))
    (write-byte (ldb (byte 8 0) __ros_str_len) ostream)
    (write-byte (ldb (byte 8 8) __ros_str_len) ostream)
    (write-byte (ldb (byte 8 16) __ros_str_len) ostream)
    (write-byte (ldb (byte 8 24) __ros_str_len) ostream))
  (map nil #'(lambda (c) (write-byte (char-code c) ostream)) (slot-value msg 'file))
  (let ((__ros_str_len (length (slot-value msg 'function))))
    (write-byte (ldb (byte 8 0) __ros_str_len) ostream)
    (write-byte (ldb (byte 8 8) __ros_str_len) ostream)
    (write-byte (ldb (byte 8 16) __ros_str_len) ostream)
    (write-byte (ldb (byte 8 24) __ros_str_len) ostream))
  (map nil #'(lambda (c) (write-byte (char-code c) ostream)) (slot-value msg 'function))
    (write-byte (ldb (byte 8 0) (slot-value msg 'line)) ostream)
  (write-byte (ldb (byte 8 8) (slot-value msg 'line)) ostream)
  (write-byte (ldb (byte 8 16) (slot-value msg 'line)) ostream)
  (write-byte (ldb (byte 8 24) (slot-value msg 'line)) ostream)
  (let ((__ros_arr_len (length (slot-value msg 'topics))))
    (write-byte (ldb (byte 8 0) __ros_arr_len) ostream)
    (write-byte (ldb (byte 8 8) __ros_arr_len) ostream)
    (write-byte (ldb (byte 8 16) __ros_arr_len) ostream)
    (write-byte (ldb (byte 8 24) __ros_arr_len) ostream))
  (map nil #'(lambda (ele) (let ((__ros_str_len (length ele)))
    (write-byte (ldb (byte 8 0) __ros_str_len) ostream)
    (write-byte (ldb (byte 8 8) __ros_str_len) ostream)
    (write-byte (ldb (byte 8 16) __ros_str_len) ostream)
    (write-byte (ldb (byte 8 24) __ros_str_len) ostream))
  (map nil #'(lambda (c) (write-byte (char-code c) ostream)) ele))
    (slot-value msg 'topics))
)
(defmethod deserialize ((msg <Log>) istream)
  "Deserializes a message object of type '<Log>"
  (deserialize (slot-value msg 'header) istream)
  (setf (ldb (byte 8 0) (slot-value msg 'level)) (read-byte istream))
  (let ((__ros_str_len 0))
    (setf (ldb (byte 8 0) __ros_str_len) (read-byte istream))
    (setf (ldb (byte 8 8) __ros_str_len) (read-byte istream))
    (setf (ldb (byte 8 16) __ros_str_len) (read-byte istream))
    (setf (ldb (byte 8 24) __ros_str_len) (read-byte istream))
    (setf (slot-value msg 'name) (make-string __ros_str_len))
    (dotimes (__ros_str_idx __ros_str_len msg)
      (setf (char (slot-value msg 'name) __ros_str_idx) (code-char (read-byte istream)))))
  (let ((__ros_str_len 0))
    (setf (ldb (byte 8 0) __ros_str_len) (read-byte istream))
    (setf (ldb (byte 8 8) __ros_str_len) (read-byte istream))
    (setf (ldb (byte 8 16) __ros_str_len) (read-byte istream))
    (setf (ldb (byte 8 24) __ros_str_len) (read-byte istream))
    (setf (slot-value msg 'msg) (make-string __ros_str_len))
    (dotimes (__ros_str_idx __ros_str_len msg)
      (setf (char (slot-value msg 'msg) __ros_str_idx) (code-char (read-byte istream)))))
  (let ((__ros_str_len 0))
    (setf (ldb (byte 8 0) __ros_str_len) (read-byte istream))
    (setf (ldb (byte 8 8) __ros_str_len) (read-byte istream))
    (setf (ldb (byte 8 16) __ros_str_len) (read-byte istream))
    (setf (ldb (byte 8 24) __ros_str_len) (read-byte istream))
    (setf (slot-value msg 'file) (make-string __ros_str_len))
    (dotimes (__ros_str_idx __ros_str_len msg)
      (setf (char (slot-value msg 'file) __ros_str_idx) (code-char (read-byte istream)))))
  (let ((__ros_str_len 0))
    (setf (ldb (byte 8 0) __ros_str_len) (read-byte istream))
    (setf (ldb (byte 8 8) __ros_str_len) (read-byte istream))
    (setf (ldb (byte 8 16) __ros_str_len) (read-byte istream))
    (setf (ldb (byte 8 24) __ros_str_len) (read-byte istream))
    (setf (slot-value msg 'function) (make-string __ros_str_len))
    (dotimes (__ros_str_idx __ros_str_len msg)
      (setf (char (slot-value msg 'function) __ros_str_idx) (code-char (read-byte istream)))))
  (setf (ldb (byte 8 0) (slot-value msg 'line)) (read-byte istream))
  (setf (ldb (byte 8 8) (slot-value msg 'line)) (read-byte istream))
  (setf (ldb (byte 8 16) (slot-value msg 'line)) (read-byte istream))
  (setf (ldb (byte 8 24) (slot-value msg 'line)) (read-byte istream))
  (let ((__ros_arr_len 0))
    (setf (ldb (byte 8 0) __ros_arr_len) (read-byte istream))
    (setf (ldb (byte 8 8) __ros_arr_len) (read-byte istream))
    (setf (ldb (byte 8 16) __ros_arr_len) (read-byte istream))
    (setf (ldb (byte 8 24) __ros_arr_len) (read-byte istream))
    (setf (slot-value msg 'topics) (make-array __ros_arr_len))
    (let ((vals (slot-value msg 'topics)))
      (dotimes (i __ros_arr_len)
(let ((__ros_str_len 0))
    (setf (ldb (byte 8 0) __ros_str_len) (read-byte istream))
    (setf (ldb (byte 8 8) __ros_str_len) (read-byte istream))
    (setf (ldb (byte 8 16) __ros_str_len) (read-byte istream))
    (setf (ldb (byte 8 24) __ros_str_len) (read-byte istream))
    (setf (aref vals i) (make-string __ros_str_len))
    (dotimes (__ros_str_idx __ros_str_len msg)
      (setf (char (aref vals i) __ros_str_idx) (code-char (read-byte istream))))))))
  msg
)
(defmethod ros-datatype ((msg (eql '<Log>)))
  "Returns string type for a message object of type '<Log>"
  "roslib/Log")
(defmethod md5sum ((type (eql '<Log>)))
  "Returns md5sum for a message object of type '<Log>"
  "acffd30cd6b6de30f120938c17c593fb")
(defmethod message-definition ((type (eql '<Log>)))
  "Returns full string definition for message of type '<Log>"
  (format nil "##~%## Severity level constants~%##~%byte DEBUG=1 #debug level~%byte INFO=2  #general level~%byte WARN=4  #warning level~%byte ERROR=8 #error level~%byte FATAL=16 #fatal/critical level~%##~%## Fields~%##~%Header header~%byte level~%string name # name of the node~%string msg # message ~%string file # file the message came from~%string function # function the message came from~%uint32 line # line the message came from~%string[] topics # topic names that the node publishes~%~%================================================================================~%MSG: roslib/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.secs: seconds (stamp_secs) since epoch~%# * stamp.nsecs: nanoseconds since stamp_secs~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%~%"))
(defmethod serialization-length ((msg <Log>))
  (+ 0
     (serialization-length (slot-value msg 'header))
     1
     4 (length (slot-value msg 'name))
     4 (length (slot-value msg 'msg))
     4 (length (slot-value msg 'file))
     4 (length (slot-value msg 'function))
     4
     4 (reduce #'+ (slot-value msg 'topics) :key #'(lambda (ele) (declare (ignorable ele)) (+ 4 (length ele))))
))
(defmethod ros-message-to-list ((msg <Log>))
  "Converts a ROS message object to a list"
  (list '<Log>
    (cons ':header (header-val msg))
    (cons ':level (level-val msg))
    (cons ':name (name-val msg))
    (cons ':msg (msg-val msg))
    (cons ':file (file-val msg))
    (cons ':function (function-val msg))
    (cons ':line (line-val msg))
    (cons ':topics (topics-val msg))
))
