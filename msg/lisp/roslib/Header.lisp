; Auto-generated. Do not edit!


(in-package roslib-msg)


;//! \htmlinclude Header.msg.html

(defclass <Header> (ros-message)
  ((seq
    :reader seq-val
    :initarg :seq
    :type integer
    :initform 0)
   (stamp
    :reader stamp-val
    :initarg :stamp
    :type real
    :initform 0)
   (frame_id
    :reader frame_id-val
    :initarg :frame_id
    :type string
    :initform ""))
)
(defmethod serialize ((msg <Header>) ostream)
  "Serializes a message object of type '<Header>"
    (write-byte (ldb (byte 8 0) (slot-value msg 'seq)) ostream)
  (write-byte (ldb (byte 8 8) (slot-value msg 'seq)) ostream)
  (write-byte (ldb (byte 8 16) (slot-value msg 'seq)) ostream)
  (write-byte (ldb (byte 8 24) (slot-value msg 'seq)) ostream)
  (let ((__sec (floor (slot-value msg 'stamp)))
        (__nsec (round (* 1e9 (- (slot-value msg 'stamp) (floor (slot-value msg 'stamp)))))))
    (write-byte (ldb (byte 8 0) __sec) ostream)
    (write-byte (ldb (byte 8 8) __sec) ostream)
    (write-byte (ldb (byte 8 16) __sec) ostream)
    (write-byte (ldb (byte 8 24) __sec) ostream)
    (write-byte (ldb (byte 8 0) __nsec) ostream)
    (write-byte (ldb (byte 8 8) __nsec) ostream)
    (write-byte (ldb (byte 8 16) __nsec) ostream)
    (write-byte (ldb (byte 8 24) __nsec) ostream))
  (let ((__ros_str_len (length (slot-value msg 'frame_id))))
    (write-byte (ldb (byte 8 0) __ros_str_len) ostream)
    (write-byte (ldb (byte 8 8) __ros_str_len) ostream)
    (write-byte (ldb (byte 8 16) __ros_str_len) ostream)
    (write-byte (ldb (byte 8 24) __ros_str_len) ostream))
  (map nil #'(lambda (c) (write-byte (char-code c) ostream)) (slot-value msg 'frame_id))
)
(defmethod deserialize ((msg <Header>) istream)
  "Deserializes a message object of type '<Header>"
  (setf (ldb (byte 8 0) (slot-value msg 'seq)) (read-byte istream))
  (setf (ldb (byte 8 8) (slot-value msg 'seq)) (read-byte istream))
  (setf (ldb (byte 8 16) (slot-value msg 'seq)) (read-byte istream))
  (setf (ldb (byte 8 24) (slot-value msg 'seq)) (read-byte istream))
  (let ((__sec 0) (__nsec 0))
    (setf (ldb (byte 8 0) __sec) (read-byte istream))
    (setf (ldb (byte 8 8) __sec) (read-byte istream))
    (setf (ldb (byte 8 16) __sec) (read-byte istream))
    (setf (ldb (byte 8 24) __sec) (read-byte istream))
    (setf (ldb (byte 8 0) __nsec) (read-byte istream))
    (setf (ldb (byte 8 8) __nsec) (read-byte istream))
    (setf (ldb (byte 8 16) __nsec) (read-byte istream))
    (setf (ldb (byte 8 24) __nsec) (read-byte istream))
    (setf (slot-value msg 'stamp) (+ (coerce __sec 'double-float) (/ __nsec 1e9))))
  (let ((__ros_str_len 0))
    (setf (ldb (byte 8 0) __ros_str_len) (read-byte istream))
    (setf (ldb (byte 8 8) __ros_str_len) (read-byte istream))
    (setf (ldb (byte 8 16) __ros_str_len) (read-byte istream))
    (setf (ldb (byte 8 24) __ros_str_len) (read-byte istream))
    (setf (slot-value msg 'frame_id) (make-string __ros_str_len))
    (dotimes (__ros_str_idx __ros_str_len msg)
      (setf (char (slot-value msg 'frame_id) __ros_str_idx) (code-char (read-byte istream)))))
  msg
)
(defmethod ros-datatype ((msg (eql '<Header>)))
  "Returns string type for a message object of type '<Header>"
  "roslib/Header")
(defmethod md5sum ((type (eql '<Header>)))
  "Returns md5sum for a message object of type '<Header>"
  "2176decaecbce78abc3b96ef049fabed")
(defmethod message-definition ((type (eql '<Header>)))
  "Returns full string definition for message of type '<Header>"
  (format nil "# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.secs: seconds (stamp_secs) since epoch~%# * stamp.nsecs: nanoseconds since stamp_secs~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%~%"))
(defmethod serialization-length ((msg <Header>))
  (+ 0
     4
     8
     4 (length (slot-value msg 'frame_id))
))
(defmethod ros-message-to-list ((msg <Header>))
  "Converts a ROS message object to a list"
  (list '<Header>
    (cons ':seq (seq-val msg))
    (cons ':stamp (stamp-val msg))
    (cons ':frame_id (frame_id-val msg))
))
