# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.24

# Delete rule output on recipe failure.
.DELETE_ON_ERROR:

#=============================================================================
# Special targets provided by cmake.

# Disable implicit rules so canonical targets will work.
.SUFFIXES:

# Disable VCS-based implicit rules.
% : %,v

# Disable VCS-based implicit rules.
% : RCS/%

# Disable VCS-based implicit rules.
% : RCS/%,v

# Disable VCS-based implicit rules.
% : SCCS/s.%

# Disable VCS-based implicit rules.
% : s.%

.SUFFIXES: .hpux_make_needs_suffix_list

# Command-line flag to silence nested $(MAKE).
$(VERBOSE)MAKESILENT = -s

#Suppress display of executed commands.
$(VERBOSE).SILENT:

# A target that is always out of date.
cmake_force:
.PHONY : cmake_force

#=============================================================================
# Set environment variables for the build.

# The shell in which to execute make rules.
SHELL = /bin/sh

# The CMake executable.
CMAKE_COMMAND = /usr/local/bin/cmake

# The command to remove a file.
RM = /usr/local/bin/cmake -E rm -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /home/seame-workstation08/DES_Head-Unit/gamepad

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/seame-workstation08/DES_Head-Unit/gamepad/build

# Include any dependencies generated for this target.
include CMakeFiles/gear-someipproxy.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include CMakeFiles/gear-someipproxy.dir/compiler_depend.make

# Include the progress variables for this target.
include CMakeFiles/gear-someipproxy.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/gear-someipproxy.dir/flags.make

CMakeFiles/gear-someipproxy.dir/src-gen/someip/proxy/gear/v1/commonapi/GearSelectionSomeIPProxy.cpp.o: CMakeFiles/gear-someipproxy.dir/flags.make
CMakeFiles/gear-someipproxy.dir/src-gen/someip/proxy/gear/v1/commonapi/GearSelectionSomeIPProxy.cpp.o: /home/seame-workstation08/DES_Head-Unit/gamepad/src-gen/someip/proxy/gear/v1/commonapi/GearSelectionSomeIPProxy.cpp
CMakeFiles/gear-someipproxy.dir/src-gen/someip/proxy/gear/v1/commonapi/GearSelectionSomeIPProxy.cpp.o: CMakeFiles/gear-someipproxy.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/seame-workstation08/DES_Head-Unit/gamepad/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/gear-someipproxy.dir/src-gen/someip/proxy/gear/v1/commonapi/GearSelectionSomeIPProxy.cpp.o"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/gear-someipproxy.dir/src-gen/someip/proxy/gear/v1/commonapi/GearSelectionSomeIPProxy.cpp.o -MF CMakeFiles/gear-someipproxy.dir/src-gen/someip/proxy/gear/v1/commonapi/GearSelectionSomeIPProxy.cpp.o.d -o CMakeFiles/gear-someipproxy.dir/src-gen/someip/proxy/gear/v1/commonapi/GearSelectionSomeIPProxy.cpp.o -c /home/seame-workstation08/DES_Head-Unit/gamepad/src-gen/someip/proxy/gear/v1/commonapi/GearSelectionSomeIPProxy.cpp

CMakeFiles/gear-someipproxy.dir/src-gen/someip/proxy/gear/v1/commonapi/GearSelectionSomeIPProxy.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/gear-someipproxy.dir/src-gen/someip/proxy/gear/v1/commonapi/GearSelectionSomeIPProxy.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/seame-workstation08/DES_Head-Unit/gamepad/src-gen/someip/proxy/gear/v1/commonapi/GearSelectionSomeIPProxy.cpp > CMakeFiles/gear-someipproxy.dir/src-gen/someip/proxy/gear/v1/commonapi/GearSelectionSomeIPProxy.cpp.i

CMakeFiles/gear-someipproxy.dir/src-gen/someip/proxy/gear/v1/commonapi/GearSelectionSomeIPProxy.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/gear-someipproxy.dir/src-gen/someip/proxy/gear/v1/commonapi/GearSelectionSomeIPProxy.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/seame-workstation08/DES_Head-Unit/gamepad/src-gen/someip/proxy/gear/v1/commonapi/GearSelectionSomeIPProxy.cpp -o CMakeFiles/gear-someipproxy.dir/src-gen/someip/proxy/gear/v1/commonapi/GearSelectionSomeIPProxy.cpp.s

# Object files for target gear-someipproxy
gear__someipproxy_OBJECTS = \
"CMakeFiles/gear-someipproxy.dir/src-gen/someip/proxy/gear/v1/commonapi/GearSelectionSomeIPProxy.cpp.o"

# External object files for target gear-someipproxy
gear__someipproxy_EXTERNAL_OBJECTS =

libgear-someipproxy.so: CMakeFiles/gear-someipproxy.dir/src-gen/someip/proxy/gear/v1/commonapi/GearSelectionSomeIPProxy.cpp.o
libgear-someipproxy.so: CMakeFiles/gear-someipproxy.dir/build.make
libgear-someipproxy.so: /home/seame-workstation08/build-commonapi/capicxx-someip-runtime/build/libCommonAPI-SomeIP.so.3.2.0
libgear-someipproxy.so: /usr/local/lib/libvsomeip3.so.3.1.20
libgear-someipproxy.so: /home/seame-workstation08/build-commonapi/capicxx-core-runtime/build/libCommonAPI.so.3.2.0
libgear-someipproxy.so: CMakeFiles/gear-someipproxy.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/seame-workstation08/DES_Head-Unit/gamepad/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX shared library libgear-someipproxy.so"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/gear-someipproxy.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/gear-someipproxy.dir/build: libgear-someipproxy.so
.PHONY : CMakeFiles/gear-someipproxy.dir/build

CMakeFiles/gear-someipproxy.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/gear-someipproxy.dir/cmake_clean.cmake
.PHONY : CMakeFiles/gear-someipproxy.dir/clean

CMakeFiles/gear-someipproxy.dir/depend:
	cd /home/seame-workstation08/DES_Head-Unit/gamepad/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/seame-workstation08/DES_Head-Unit/gamepad /home/seame-workstation08/DES_Head-Unit/gamepad /home/seame-workstation08/DES_Head-Unit/gamepad/build /home/seame-workstation08/DES_Head-Unit/gamepad/build /home/seame-workstation08/DES_Head-Unit/gamepad/build/CMakeFiles/gear-someipproxy.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/gear-someipproxy.dir/depend

