# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.3

# Delete rule output on recipe failure.
.DELETE_ON_ERROR:


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
CMAKE_COMMAND = /usr/local/Cellar/cmake/3.3.1/bin/cmake

# The command to remove a file.
RM = /usr/local/Cellar/cmake/3.3.1/bin/cmake -E remove -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /Users/tenten/Documents/github/github_569/569_HW2/p1

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /Users/tenten/Documents/github/github_569/569_HW2/p1

# Include any dependencies generated for this target.
include CMakeFiles/p1.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/p1.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/p1.dir/flags.make

CMakeFiles/p1.dir/p1a.cpp.o: CMakeFiles/p1.dir/flags.make
CMakeFiles/p1.dir/p1a.cpp.o: p1a.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/tenten/Documents/github/github_569/569_HW2/p1/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/p1.dir/p1a.cpp.o"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++   $(CXX_DEFINES) $(CXX_FLAGS) -o CMakeFiles/p1.dir/p1a.cpp.o -c /Users/tenten/Documents/github/github_569/569_HW2/p1/p1a.cpp

CMakeFiles/p1.dir/p1a.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/p1.dir/p1a.cpp.i"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -E /Users/tenten/Documents/github/github_569/569_HW2/p1/p1a.cpp > CMakeFiles/p1.dir/p1a.cpp.i

CMakeFiles/p1.dir/p1a.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/p1.dir/p1a.cpp.s"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -S /Users/tenten/Documents/github/github_569/569_HW2/p1/p1a.cpp -o CMakeFiles/p1.dir/p1a.cpp.s

CMakeFiles/p1.dir/p1a.cpp.o.requires:

.PHONY : CMakeFiles/p1.dir/p1a.cpp.o.requires

CMakeFiles/p1.dir/p1a.cpp.o.provides: CMakeFiles/p1.dir/p1a.cpp.o.requires
	$(MAKE) -f CMakeFiles/p1.dir/build.make CMakeFiles/p1.dir/p1a.cpp.o.provides.build
.PHONY : CMakeFiles/p1.dir/p1a.cpp.o.provides

CMakeFiles/p1.dir/p1a.cpp.o.provides.build: CMakeFiles/p1.dir/p1a.cpp.o


CMakeFiles/p1.dir/hw2_helper.cpp.o: CMakeFiles/p1.dir/flags.make
CMakeFiles/p1.dir/hw2_helper.cpp.o: hw2_helper.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/tenten/Documents/github/github_569/569_HW2/p1/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building CXX object CMakeFiles/p1.dir/hw2_helper.cpp.o"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++   $(CXX_DEFINES) $(CXX_FLAGS) -o CMakeFiles/p1.dir/hw2_helper.cpp.o -c /Users/tenten/Documents/github/github_569/569_HW2/p1/hw2_helper.cpp

CMakeFiles/p1.dir/hw2_helper.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/p1.dir/hw2_helper.cpp.i"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -E /Users/tenten/Documents/github/github_569/569_HW2/p1/hw2_helper.cpp > CMakeFiles/p1.dir/hw2_helper.cpp.i

CMakeFiles/p1.dir/hw2_helper.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/p1.dir/hw2_helper.cpp.s"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -S /Users/tenten/Documents/github/github_569/569_HW2/p1/hw2_helper.cpp -o CMakeFiles/p1.dir/hw2_helper.cpp.s

CMakeFiles/p1.dir/hw2_helper.cpp.o.requires:

.PHONY : CMakeFiles/p1.dir/hw2_helper.cpp.o.requires

CMakeFiles/p1.dir/hw2_helper.cpp.o.provides: CMakeFiles/p1.dir/hw2_helper.cpp.o.requires
	$(MAKE) -f CMakeFiles/p1.dir/build.make CMakeFiles/p1.dir/hw2_helper.cpp.o.provides.build
.PHONY : CMakeFiles/p1.dir/hw2_helper.cpp.o.provides

CMakeFiles/p1.dir/hw2_helper.cpp.o.provides.build: CMakeFiles/p1.dir/hw2_helper.cpp.o


# Object files for target p1
p1_OBJECTS = \
"CMakeFiles/p1.dir/p1a.cpp.o" \
"CMakeFiles/p1.dir/hw2_helper.cpp.o"

# External object files for target p1
p1_EXTERNAL_OBJECTS =

p1: CMakeFiles/p1.dir/p1a.cpp.o
p1: CMakeFiles/p1.dir/hw2_helper.cpp.o
p1: CMakeFiles/p1.dir/build.make
p1: /usr/local/lib/libopencv_videostab.3.0.0.dylib
p1: /usr/local/lib/libopencv_superres.3.0.0.dylib
p1: /usr/local/lib/libopencv_stitching.3.0.0.dylib
p1: /usr/local/lib/libopencv_shape.3.0.0.dylib
p1: /usr/local/lib/libopencv_photo.3.0.0.dylib
p1: /usr/local/lib/libopencv_objdetect.3.0.0.dylib
p1: /usr/local/lib/libopencv_hal.a
p1: /usr/local/lib/libopencv_calib3d.3.0.0.dylib
p1: /usr/local/lib/libopencv_features2d.3.0.0.dylib
p1: /usr/local/lib/libopencv_ml.3.0.0.dylib
p1: /usr/local/lib/libopencv_highgui.3.0.0.dylib
p1: /usr/local/lib/libopencv_videoio.3.0.0.dylib
p1: /usr/local/lib/libopencv_imgcodecs.3.0.0.dylib
p1: /usr/local/lib/libopencv_flann.3.0.0.dylib
p1: /usr/local/lib/libopencv_video.3.0.0.dylib
p1: /usr/local/lib/libopencv_imgproc.3.0.0.dylib
p1: /usr/local/lib/libopencv_core.3.0.0.dylib
p1: /usr/local/lib/libopencv_hal.a
p1: /usr/local/share/OpenCV/3rdparty/lib/libippicv.a
p1: CMakeFiles/p1.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/Users/tenten/Documents/github/github_569/569_HW2/p1/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Linking CXX executable p1"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/p1.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/p1.dir/build: p1

.PHONY : CMakeFiles/p1.dir/build

CMakeFiles/p1.dir/requires: CMakeFiles/p1.dir/p1a.cpp.o.requires
CMakeFiles/p1.dir/requires: CMakeFiles/p1.dir/hw2_helper.cpp.o.requires

.PHONY : CMakeFiles/p1.dir/requires

CMakeFiles/p1.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/p1.dir/cmake_clean.cmake
.PHONY : CMakeFiles/p1.dir/clean

CMakeFiles/p1.dir/depend:
	cd /Users/tenten/Documents/github/github_569/569_HW2/p1 && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /Users/tenten/Documents/github/github_569/569_HW2/p1 /Users/tenten/Documents/github/github_569/569_HW2/p1 /Users/tenten/Documents/github/github_569/569_HW2/p1 /Users/tenten/Documents/github/github_569/569_HW2/p1 /Users/tenten/Documents/github/github_569/569_HW2/p1/CMakeFiles/p1.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/p1.dir/depend
