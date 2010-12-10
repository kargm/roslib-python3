FILE(REMOVE_RECURSE
  "CMakeFiles/ROSBUILD_genmsg_py"
  "../src/roslib/msg/__init__.py"
  "../src/roslib/msg/_Clock.py"
  "../src/roslib/msg/_Header.py"
  "../src/roslib/msg/_Log.py"
)

# Per-language clean rules from dependency scanning.
FOREACH(lang)
  INCLUDE(CMakeFiles/ROSBUILD_genmsg_py.dir/cmake_clean_${lang}.cmake OPTIONAL)
ENDFOREACH(lang)
