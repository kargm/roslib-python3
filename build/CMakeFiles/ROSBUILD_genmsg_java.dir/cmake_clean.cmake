FILE(REMOVE_RECURSE
  "CMakeFiles/ROSBUILD_genmsg_java"
  "../msg/java/ros/pkg/roslib/msg/Clock.java"
  "../msg/java/ros/pkg/roslib/msg/Header.java"
  "../msg/java/ros/pkg/roslib/msg/Log.java"
)

# Per-language clean rules from dependency scanning.
FOREACH(lang)
  INCLUDE(CMakeFiles/ROSBUILD_genmsg_java.dir/cmake_clean_${lang}.cmake OPTIONAL)
ENDFOREACH(lang)
