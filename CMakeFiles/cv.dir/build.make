# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 2.8

#=============================================================================
# Special targets provided by cmake.

# Disable implicit rules so canonical targets will work.
.SUFFIXES:

# Remove some rules from gmake that .SUFFIXES does not remove.
SUFFIXES =

.SUFFIXES: .hpux_make_needs_suffix_list

# Suppress display of executed commands.
$(VERBOSE).SILENT:

# A target that is always out of date.
cmake_force:
.PHONY : cmake_force

#=============================================================================
# Set environment variables for the build.

# The shell in which to execute make rules.
SHELL = /bin/sh

# The CMake executable.
CMAKE_COMMAND = /usr/bin/cmake

# The command to remove a file.
RM = /usr/bin/cmake -E remove -f

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /home/viki/groovy_workspace/CamTrap_Viper

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/viki/groovy_workspace/CamTrap_Viper

# Include any dependencies generated for this target.
include CMakeFiles/cv.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/cv.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/cv.dir/flags.make

CMakeFiles/cv.dir/src/node_cv/node_cv.cpp.o: CMakeFiles/cv.dir/flags.make
CMakeFiles/cv.dir/src/node_cv/node_cv.cpp.o: src/node_cv/node_cv.cpp
CMakeFiles/cv.dir/src/node_cv/node_cv.cpp.o: manifest.xml
CMakeFiles/cv.dir/src/node_cv/node_cv.cpp.o: /opt/ros/groovy/share/opencv2/package.xml
CMakeFiles/cv.dir/src/node_cv/node_cv.cpp.o: /opt/ros/groovy/share/cpp_common/package.xml
CMakeFiles/cv.dir/src/node_cv/node_cv.cpp.o: /opt/ros/groovy/share/rostime/package.xml
CMakeFiles/cv.dir/src/node_cv/node_cv.cpp.o: /opt/ros/groovy/share/roscpp_traits/package.xml
CMakeFiles/cv.dir/src/node_cv/node_cv.cpp.o: /opt/ros/groovy/share/roscpp_serialization/package.xml
CMakeFiles/cv.dir/src/node_cv/node_cv.cpp.o: /opt/ros/groovy/share/message_runtime/package.xml
CMakeFiles/cv.dir/src/node_cv/node_cv.cpp.o: /opt/ros/groovy/share/std_msgs/package.xml
CMakeFiles/cv.dir/src/node_cv/node_cv.cpp.o: /opt/ros/groovy/share/geometry_msgs/package.xml
CMakeFiles/cv.dir/src/node_cv/node_cv.cpp.o: /opt/ros/groovy/share/sensor_msgs/package.xml
CMakeFiles/cv.dir/src/node_cv/node_cv.cpp.o: /opt/ros/groovy/share/image_geometry/package.xml
CMakeFiles/cv.dir/src/node_cv/node_cv.cpp.o: /opt/ros/groovy/share/rosconsole/package.xml
CMakeFiles/cv.dir/src/node_cv/node_cv.cpp.o: /opt/ros/groovy/share/cv_bridge/package.xml
CMakeFiles/cv.dir/src/node_cv/node_cv.cpp.o: /opt/ros/groovy/share/rosgraph_msgs/package.xml
CMakeFiles/cv.dir/src/node_cv/node_cv.cpp.o: /opt/ros/groovy/share/xmlrpcpp/package.xml
CMakeFiles/cv.dir/src/node_cv/node_cv.cpp.o: /opt/ros/groovy/share/roscpp/package.xml
CMakeFiles/cv.dir/src/node_cv/node_cv.cpp.o: /opt/ros/groovy/share/message_filters/package.xml
CMakeFiles/cv.dir/src/node_cv/node_cv.cpp.o: /opt/ros/groovy/share/console_bridge/package.xml
CMakeFiles/cv.dir/src/node_cv/node_cv.cpp.o: /opt/ros/groovy/share/class_loader/package.xml
CMakeFiles/cv.dir/src/node_cv/node_cv.cpp.o: /opt/ros/groovy/share/rospack/package.xml
CMakeFiles/cv.dir/src/node_cv/node_cv.cpp.o: /opt/ros/groovy/share/roslib/package.xml
CMakeFiles/cv.dir/src/node_cv/node_cv.cpp.o: /opt/ros/groovy/share/pluginlib/package.xml
CMakeFiles/cv.dir/src/node_cv/node_cv.cpp.o: /opt/ros/groovy/share/image_transport/package.xml
	$(CMAKE_COMMAND) -E cmake_progress_report /home/viki/groovy_workspace/CamTrap_Viper/CMakeFiles $(CMAKE_PROGRESS_1)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Building CXX object CMakeFiles/cv.dir/src/node_cv/node_cv.cpp.o"
	/usr/bin/c++   $(CXX_DEFINES) $(CXX_FLAGS) -W -Wall -Wno-unused-parameter -fno-strict-aliasing -pthread -o CMakeFiles/cv.dir/src/node_cv/node_cv.cpp.o -c /home/viki/groovy_workspace/CamTrap_Viper/src/node_cv/node_cv.cpp

CMakeFiles/cv.dir/src/node_cv/node_cv.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/cv.dir/src/node_cv/node_cv.cpp.i"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -W -Wall -Wno-unused-parameter -fno-strict-aliasing -pthread -E /home/viki/groovy_workspace/CamTrap_Viper/src/node_cv/node_cv.cpp > CMakeFiles/cv.dir/src/node_cv/node_cv.cpp.i

CMakeFiles/cv.dir/src/node_cv/node_cv.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/cv.dir/src/node_cv/node_cv.cpp.s"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -W -Wall -Wno-unused-parameter -fno-strict-aliasing -pthread -S /home/viki/groovy_workspace/CamTrap_Viper/src/node_cv/node_cv.cpp -o CMakeFiles/cv.dir/src/node_cv/node_cv.cpp.s

CMakeFiles/cv.dir/src/node_cv/node_cv.cpp.o.requires:
.PHONY : CMakeFiles/cv.dir/src/node_cv/node_cv.cpp.o.requires

CMakeFiles/cv.dir/src/node_cv/node_cv.cpp.o.provides: CMakeFiles/cv.dir/src/node_cv/node_cv.cpp.o.requires
	$(MAKE) -f CMakeFiles/cv.dir/build.make CMakeFiles/cv.dir/src/node_cv/node_cv.cpp.o.provides.build
.PHONY : CMakeFiles/cv.dir/src/node_cv/node_cv.cpp.o.provides

CMakeFiles/cv.dir/src/node_cv/node_cv.cpp.o.provides.build: CMakeFiles/cv.dir/src/node_cv/node_cv.cpp.o

# Object files for target cv
cv_OBJECTS = \
"CMakeFiles/cv.dir/src/node_cv/node_cv.cpp.o"

# External object files for target cv
cv_EXTERNAL_OBJECTS =

bin/cv: CMakeFiles/cv.dir/src/node_cv/node_cv.cpp.o
bin/cv: /opt/ros/groovy/lib/libopencv_calib3d.so
bin/cv: /opt/ros/groovy/lib/libopencv_contrib.so
bin/cv: /opt/ros/groovy/lib/libopencv_core.so
bin/cv: /opt/ros/groovy/lib/libopencv_features2d.so
bin/cv: /opt/ros/groovy/lib/libopencv_flann.so
bin/cv: /opt/ros/groovy/lib/libopencv_gpu.so
bin/cv: /opt/ros/groovy/lib/libopencv_highgui.so
bin/cv: /opt/ros/groovy/lib/libopencv_imgproc.so
bin/cv: /opt/ros/groovy/lib/libopencv_legacy.so
bin/cv: /opt/ros/groovy/lib/libopencv_ml.so
bin/cv: /opt/ros/groovy/lib/libopencv_nonfree.so
bin/cv: /opt/ros/groovy/lib/libopencv_objdetect.so
bin/cv: /opt/ros/groovy/lib/libopencv_photo.so
bin/cv: /opt/ros/groovy/lib/libopencv_stitching.so
bin/cv: /opt/ros/groovy/lib/libopencv_ts.so
bin/cv: /opt/ros/groovy/lib/libopencv_video.so
bin/cv: /opt/ros/groovy/lib/libopencv_videostab.so
bin/cv: /usr/lib/libboost_signals-mt.so
bin/cv: /usr/lib/libboost_filesystem-mt.so
bin/cv: /usr/lib/libboost_date_time-mt.so
bin/cv: /usr/lib/libboost_system-mt.so
bin/cv: /usr/lib/libboost_thread-mt.so
bin/cv: /opt/ros/groovy/lib/libopencv_calib3d.so
bin/cv: /opt/ros/groovy/lib/libopencv_contrib.so
bin/cv: /opt/ros/groovy/lib/libopencv_core.so
bin/cv: /opt/ros/groovy/lib/libopencv_features2d.so
bin/cv: /opt/ros/groovy/lib/libopencv_flann.so
bin/cv: /opt/ros/groovy/lib/libopencv_gpu.so
bin/cv: /opt/ros/groovy/lib/libopencv_highgui.so
bin/cv: /opt/ros/groovy/lib/libopencv_imgproc.so
bin/cv: /opt/ros/groovy/lib/libopencv_legacy.so
bin/cv: /opt/ros/groovy/lib/libopencv_ml.so
bin/cv: /opt/ros/groovy/lib/libopencv_nonfree.so
bin/cv: /opt/ros/groovy/lib/libopencv_objdetect.so
bin/cv: /opt/ros/groovy/lib/libopencv_photo.so
bin/cv: /opt/ros/groovy/lib/libopencv_stitching.so
bin/cv: /opt/ros/groovy/lib/libopencv_video.so
bin/cv: /opt/ros/groovy/lib/libopencv_videostab.so
bin/cv: /opt/ros/groovy/lib/libopencv_ts.so
bin/cv: /usr/lib/libboost_signals-mt.so
bin/cv: /usr/lib/libboost_filesystem-mt.so
bin/cv: /usr/lib/libboost_date_time-mt.so
bin/cv: /usr/lib/libboost_system-mt.so
bin/cv: /usr/lib/libboost_thread-mt.so
bin/cv: CMakeFiles/cv.dir/build.make
bin/cv: CMakeFiles/cv.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --red --bold "Linking CXX executable bin/cv"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/cv.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/cv.dir/build: bin/cv
.PHONY : CMakeFiles/cv.dir/build

CMakeFiles/cv.dir/requires: CMakeFiles/cv.dir/src/node_cv/node_cv.cpp.o.requires
.PHONY : CMakeFiles/cv.dir/requires

CMakeFiles/cv.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/cv.dir/cmake_clean.cmake
.PHONY : CMakeFiles/cv.dir/clean

CMakeFiles/cv.dir/depend:
	cd /home/viki/groovy_workspace/CamTrap_Viper && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/viki/groovy_workspace/CamTrap_Viper /home/viki/groovy_workspace/CamTrap_Viper /home/viki/groovy_workspace/CamTrap_Viper /home/viki/groovy_workspace/CamTrap_Viper /home/viki/groovy_workspace/CamTrap_Viper/CMakeFiles/cv.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/cv.dir/depend
