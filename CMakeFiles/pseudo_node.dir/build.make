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
CMAKE_SOURCE_DIR = /home/sealab/fuerte_workspace/sandbox/ViperROS

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/sealab/fuerte_workspace/sandbox/ViperROS

# Include any dependencies generated for this target.
include CMakeFiles/pseudo_node.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/pseudo_node.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/pseudo_node.dir/flags.make

CMakeFiles/pseudo_node.dir/src/pseudo_node.o: CMakeFiles/pseudo_node.dir/flags.make
CMakeFiles/pseudo_node.dir/src/pseudo_node.o: src/pseudo_node.cpp
CMakeFiles/pseudo_node.dir/src/pseudo_node.o: manifest.xml
CMakeFiles/pseudo_node.dir/src/pseudo_node.o: /opt/ros/fuerte/share/roslang/manifest.xml
CMakeFiles/pseudo_node.dir/src/pseudo_node.o: /opt/ros/fuerte/share/roscpp/manifest.xml
CMakeFiles/pseudo_node.dir/src/pseudo_node.o: /opt/ros/fuerte/share/geometry_msgs/manifest.xml
CMakeFiles/pseudo_node.dir/src/pseudo_node.o: /opt/ros/fuerte/share/sensor_msgs/manifest.xml
CMakeFiles/pseudo_node.dir/src/pseudo_node.o: /opt/ros/fuerte/stacks/vision_opencv/opencv2/manifest.xml
CMakeFiles/pseudo_node.dir/src/pseudo_node.o: /opt/ros/fuerte/stacks/vision_opencv/cv_bridge/manifest.xml
CMakeFiles/pseudo_node.dir/src/pseudo_node.o: /opt/ros/fuerte/share/std_msgs/manifest.xml
CMakeFiles/pseudo_node.dir/src/pseudo_node.o: /opt/ros/fuerte/share/ros/core/rosbuild/manifest.xml
CMakeFiles/pseudo_node.dir/src/pseudo_node.o: /opt/ros/fuerte/share/roslib/manifest.xml
CMakeFiles/pseudo_node.dir/src/pseudo_node.o: /opt/ros/fuerte/share/rosconsole/manifest.xml
CMakeFiles/pseudo_node.dir/src/pseudo_node.o: /opt/ros/fuerte/stacks/pluginlib/manifest.xml
CMakeFiles/pseudo_node.dir/src/pseudo_node.o: /opt/ros/fuerte/share/message_filters/manifest.xml
CMakeFiles/pseudo_node.dir/src/pseudo_node.o: /opt/ros/fuerte/stacks/image_common/image_transport/manifest.xml
	$(CMAKE_COMMAND) -E cmake_progress_report /home/sealab/fuerte_workspace/sandbox/ViperROS/CMakeFiles $(CMAKE_PROGRESS_1)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Building CXX object CMakeFiles/pseudo_node.dir/src/pseudo_node.o"
	/usr/bin/c++   $(CXX_DEFINES) $(CXX_FLAGS) -W -Wall -Wno-unused-parameter -fno-strict-aliasing -pthread -o CMakeFiles/pseudo_node.dir/src/pseudo_node.o -c /home/sealab/fuerte_workspace/sandbox/ViperROS/src/pseudo_node.cpp

CMakeFiles/pseudo_node.dir/src/pseudo_node.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/pseudo_node.dir/src/pseudo_node.i"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -W -Wall -Wno-unused-parameter -fno-strict-aliasing -pthread -E /home/sealab/fuerte_workspace/sandbox/ViperROS/src/pseudo_node.cpp > CMakeFiles/pseudo_node.dir/src/pseudo_node.i

CMakeFiles/pseudo_node.dir/src/pseudo_node.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/pseudo_node.dir/src/pseudo_node.s"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -W -Wall -Wno-unused-parameter -fno-strict-aliasing -pthread -S /home/sealab/fuerte_workspace/sandbox/ViperROS/src/pseudo_node.cpp -o CMakeFiles/pseudo_node.dir/src/pseudo_node.s

CMakeFiles/pseudo_node.dir/src/pseudo_node.o.requires:
.PHONY : CMakeFiles/pseudo_node.dir/src/pseudo_node.o.requires

CMakeFiles/pseudo_node.dir/src/pseudo_node.o.provides: CMakeFiles/pseudo_node.dir/src/pseudo_node.o.requires
	$(MAKE) -f CMakeFiles/pseudo_node.dir/build.make CMakeFiles/pseudo_node.dir/src/pseudo_node.o.provides.build
.PHONY : CMakeFiles/pseudo_node.dir/src/pseudo_node.o.provides

CMakeFiles/pseudo_node.dir/src/pseudo_node.o.provides.build: CMakeFiles/pseudo_node.dir/src/pseudo_node.o

# Object files for target pseudo_node
pseudo_node_OBJECTS = \
"CMakeFiles/pseudo_node.dir/src/pseudo_node.o"

# External object files for target pseudo_node
pseudo_node_EXTERNAL_OBJECTS =

bin/pseudo_node: CMakeFiles/pseudo_node.dir/src/pseudo_node.o
bin/pseudo_node: CMakeFiles/pseudo_node.dir/build.make
bin/pseudo_node: CMakeFiles/pseudo_node.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --red --bold "Linking CXX executable bin/pseudo_node"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/pseudo_node.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/pseudo_node.dir/build: bin/pseudo_node
.PHONY : CMakeFiles/pseudo_node.dir/build

CMakeFiles/pseudo_node.dir/requires: CMakeFiles/pseudo_node.dir/src/pseudo_node.o.requires
.PHONY : CMakeFiles/pseudo_node.dir/requires

CMakeFiles/pseudo_node.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/pseudo_node.dir/cmake_clean.cmake
.PHONY : CMakeFiles/pseudo_node.dir/clean

CMakeFiles/pseudo_node.dir/depend:
	cd /home/sealab/fuerte_workspace/sandbox/ViperROS && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/sealab/fuerte_workspace/sandbox/ViperROS /home/sealab/fuerte_workspace/sandbox/ViperROS /home/sealab/fuerte_workspace/sandbox/ViperROS /home/sealab/fuerte_workspace/sandbox/ViperROS /home/sealab/fuerte_workspace/sandbox/ViperROS/CMakeFiles/pseudo_node.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/pseudo_node.dir/depend

