/* auto-generated by genmsg_cpp from /usr/wiss/kargm/ros/ros/core/roslib/msg/Log.msg.  Do not edit! */
package ros.pkg.roslib.msg;


import java.nio.ByteBuffer;

public  class Log extends ros.communication.Message
{

  public static final byte DEBUG = 1;
  public static final byte INFO = 2;
  public static final byte WARN = 4;
  public static final byte ERROR = 8;
  public static final byte FATAL = 16;
  public ros.pkg.roslib.msg.Header header;
  public byte level;
  public java.lang.String name;
  public java.lang.String msg;
  public java.lang.String file;
  public java.lang.String function;
  public int line;
  public java.lang.String[] topics;

  public Log() {
 super();
    header = new ros.pkg.roslib.msg.Header();
    name = new java.lang.String();
    msg = new java.lang.String();
    file = new java.lang.String();
    function = new java.lang.String();
  topics = new java.lang.String[0];

  }
  public static java.lang.String __s_getDataType() { return "roslib/Log"; }
  public static java.lang.String __s_getMD5Sum() { return "acffd30cd6b6de30f120938c17c593fb"; }
  public static java.lang.String __s_getMessageDefinition()
  {
    return 
    "##\n" + 
    "## Severity level constants\n" + 
    "##\n" + 
    "byte DEBUG=1 #debug level\n" + 
    "byte INFO=2  #general level\n" + 
    "byte WARN=4  #warning level\n" + 
    "byte ERROR=8 #error level\n" + 
    "byte FATAL=16 #fatal/critical level\n" + 
    "##\n" + 
    "## Fields\n" + 
    "##\n" + 
    "Header header\n" + 
    "byte level\n" + 
    "string name # name of the node\n" + 
    "string msg # message \n" + 
    "string file # file the message came from\n" + 
    "string function # function the message came from\n" + 
    "uint32 line # line the message came from\n" + 
    "string[] topics # topic names that the node publishes\n" + 
    "\n" + 
    "================================================================================\n" + 
    "MSG: roslib/Header\n" + 
    "# Standard metadata for higher-level stamped data types.\n" + 
    "# This is generally used to communicate timestamped data \n" + 
    "# in a particular coordinate frame.\n" + 
    "# \n" + 
    "# sequence ID: consecutively increasing ID \n" + 
    "uint32 seq\n" + 
    "#Two-integer timestamp that is expressed as:\n" + 
    "# * stamp.secs: seconds (stamp_secs) since epoch\n" + 
    "# * stamp.nsecs: nanoseconds since stamp_secs\n" + 
    "# time-handling sugar is provided by the client library\n" + 
    "time stamp\n" + 
    "#Frame this data is associated with\n" + 
    "# 0: no frame\n" + 
    "# 1: global frame\n" + 
    "string frame_id\n" + 
    "\n" + 
    "\n" + 
    "";
  }
  public java.lang.String getDataType() { return __s_getDataType(); }
  public java.lang.String getMD5Sum()   { return __s_getMD5Sum(); }
  public java.lang.String getMessageDefinition() { return __s_getMessageDefinition(); }
  public Log clone() {
    Log clone = (Log)super.clone();
      header = (ros.pkg.roslib.msg.Header)header.clone();
      topics =  (java.lang.String[])(clone.topics.clone());
    return clone;
  }

  public static java.util.Map<java.lang.String, java.lang.String> fieldTypes() {
         java.util.HashMap<java.lang.String, java.lang.String> m = new java.util.HashMap<java.lang.String, java.lang.String>  ();      m.put("header", "ros.pkg.roslib.msg.Header");
     m.put("level", "byte");
     m.put("name", "java.lang.String");
     m.put("msg", "java.lang.String");
     m.put("file", "java.lang.String");
     m.put("function", "java.lang.String");
     m.put("line", "int");
     m.put("topics", "java.lang.String[]");
     return m;
  }

  public static java.util.Set<java.lang.String> submessageTypes() {
         java.util.HashSet<java.lang.String> s = new java.util.HashSet<java.lang.String>  ();      s.add("ros.pkg.roslib.msg.Header");
     return s;
  }

  public void setTo(ros.communication.Message __m) {
    if (!(__m instanceof Log)) throw new RuntimeException("Invalid Type");
    Log __m2 = (Log) __m;
    header = __m2.header;
    level = __m2.level;
    name = __m2.name;
    msg = __m2.msg;
    file = __m2.file;
    function = __m2.function;
    line = __m2.line;
    topics = __m2.topics;
    }

  int calc_topics_array_serialization_len() {
    int l = 0;
    for (int i = 0; i < topics.length; i++) 
      l += 4 + topics[i].length();
    return l;
  }
  public int serializationLength() 
  {
    int __l = 0;
    __l += 0; // DEBUG
    __l += 0; // INFO
    __l += 0; // WARN
    __l += 0; // ERROR
    __l += 0; // FATAL
    __l += header.serializationLength(); // header
    __l += 1; // level
    __l += 4 + name.length(); // name
    __l += 4 + msg.length(); // msg
    __l += 4 + file.length(); // file
    __l += 4 + function.length(); // function
    __l += 4; // line
    __l += 4 + calc_topics_array_serialization_len(); // topics
    return __l;
  }
  public void serialize(ByteBuffer bb, int seq) {
    ros.pkg.roslib.msg.Header _ser_header = header;
    boolean __reset_seq = (header.seq == 0);
    if (__reset_seq) _ser_header.seq = seq;
    boolean __reset_timestamp = header.stamp.isZero();
    if (__reset_timestamp)
      _ser_header.stamp = ros.Ros.getInstance().now();
     header.serialize(bb, seq);
    bb.put(level);
    Serialization.writeString(bb, name);
    Serialization.writeString(bb, msg);
    Serialization.writeString(bb, file);
    Serialization.writeString(bb, function);
    bb.putInt(line);
    bb.putInt(topics.length);
    for (java.lang.String x : topics)
      Serialization.writeString(bb, x);
  }
  public void deserialize(ByteBuffer bb)  {
     header.deserialize(bb);
    level = bb.get();
    name = Serialization.readString(bb);
    msg = Serialization.readString(bb);
    file = Serialization.readString(bb);
    function = Serialization.readString(bb);
    line = bb.getInt();
     int topics_len = bb.getInt();
    topics = new java.lang.String[topics_len];
    for(int i = 0; i < topics_len; i++)
      topics[i] = Serialization.readString(bb);
  }
}
