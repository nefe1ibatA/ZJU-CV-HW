# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.22

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
CMAKE_COMMAND = /Applications/CMake.app/Contents/bin/cmake

# The command to remove a file.
RM = /Applications/CMake.app/Contents/bin/cmake -E rm -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /Users/nefelibatalyu/Desktop/code/cv/hw3/test

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /Users/nefelibatalyu/Desktop/code/cv/hw3/test

# Include any dependencies generated for this target.
include CMakeFiles/test.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include CMakeFiles/test.dir/compiler_depend.make

# Include the progress variables for this target.
include CMakeFiles/test.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/test.dir/flags.make

CMakeFiles/test.dir/test.cpp.o: CMakeFiles/test.dir/flags.make
CMakeFiles/test.dir/test.cpp.o: test.cpp
CMakeFiles/test.dir/test.cpp.o: CMakeFiles/test.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/nefelibatalyu/Desktop/code/cv/hw3/test/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/test.dir/test.cpp.o"
	/Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/test.dir/test.cpp.o -MF CMakeFiles/test.dir/test.cpp.o.d -o CMakeFiles/test.dir/test.cpp.o -c /Users/nefelibatalyu/Desktop/code/cv/hw3/test/test.cpp

CMakeFiles/test.dir/test.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/test.dir/test.cpp.i"
	/Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/nefelibatalyu/Desktop/code/cv/hw3/test/test.cpp > CMakeFiles/test.dir/test.cpp.i

CMakeFiles/test.dir/test.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/test.dir/test.cpp.s"
	/Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/nefelibatalyu/Desktop/code/cv/hw3/test/test.cpp -o CMakeFiles/test.dir/test.cpp.s

# Object files for target test
test_OBJECTS = \
"CMakeFiles/test.dir/test.cpp.o"

# External object files for target test
test_EXTERNAL_OBJECTS =

test: CMakeFiles/test.dir/test.cpp.o
test: CMakeFiles/test.dir/build.make
test: /opt/homebrew/lib/libopencv_gapi.4.5.3.dylib
test: /opt/homebrew/lib/libopencv_stitching.4.5.3.dylib
test: /opt/homebrew/lib/libopencv_alphamat.4.5.3.dylib
test: /opt/homebrew/lib/libopencv_aruco.4.5.3.dylib
test: /opt/homebrew/lib/libopencv_barcode.4.5.3.dylib
test: /opt/homebrew/lib/libopencv_bgsegm.4.5.3.dylib
test: /opt/homebrew/lib/libopencv_bioinspired.4.5.3.dylib
test: /opt/homebrew/lib/libopencv_ccalib.4.5.3.dylib
test: /opt/homebrew/lib/libopencv_dnn_objdetect.4.5.3.dylib
test: /opt/homebrew/lib/libopencv_dnn_superres.4.5.3.dylib
test: /opt/homebrew/lib/libopencv_dpm.4.5.3.dylib
test: /opt/homebrew/lib/libopencv_face.4.5.3.dylib
test: /opt/homebrew/lib/libopencv_freetype.4.5.3.dylib
test: /opt/homebrew/lib/libopencv_fuzzy.4.5.3.dylib
test: /opt/homebrew/lib/libopencv_hfs.4.5.3.dylib
test: /opt/homebrew/lib/libopencv_img_hash.4.5.3.dylib
test: /opt/homebrew/lib/libopencv_intensity_transform.4.5.3.dylib
test: /opt/homebrew/lib/libopencv_line_descriptor.4.5.3.dylib
test: /opt/homebrew/lib/libopencv_mcc.4.5.3.dylib
test: /opt/homebrew/lib/libopencv_quality.4.5.3.dylib
test: /opt/homebrew/lib/libopencv_rapid.4.5.3.dylib
test: /opt/homebrew/lib/libopencv_reg.4.5.3.dylib
test: /opt/homebrew/lib/libopencv_rgbd.4.5.3.dylib
test: /opt/homebrew/lib/libopencv_saliency.4.5.3.dylib
test: /opt/homebrew/lib/libopencv_sfm.4.5.3.dylib
test: /opt/homebrew/lib/libopencv_stereo.4.5.3.dylib
test: /opt/homebrew/lib/libopencv_structured_light.4.5.3.dylib
test: /opt/homebrew/lib/libopencv_superres.4.5.3.dylib
test: /opt/homebrew/lib/libopencv_surface_matching.4.5.3.dylib
test: /opt/homebrew/lib/libopencv_tracking.4.5.3.dylib
test: /opt/homebrew/lib/libopencv_videostab.4.5.3.dylib
test: /opt/homebrew/lib/libopencv_viz.4.5.3.dylib
test: /opt/homebrew/lib/libopencv_wechat_qrcode.4.5.3.dylib
test: /opt/homebrew/lib/libopencv_xfeatures2d.4.5.3.dylib
test: /opt/homebrew/lib/libopencv_xobjdetect.4.5.3.dylib
test: /opt/homebrew/lib/libopencv_xphoto.4.5.3.dylib
test: /opt/homebrew/lib/libopencv_shape.4.5.3.dylib
test: /opt/homebrew/lib/libopencv_highgui.4.5.3.dylib
test: /opt/homebrew/lib/libopencv_datasets.4.5.3.dylib
test: /opt/homebrew/lib/libopencv_plot.4.5.3.dylib
test: /opt/homebrew/lib/libopencv_text.4.5.3.dylib
test: /opt/homebrew/lib/libopencv_ml.4.5.3.dylib
test: /opt/homebrew/lib/libopencv_phase_unwrapping.4.5.3.dylib
test: /opt/homebrew/lib/libopencv_optflow.4.5.3.dylib
test: /opt/homebrew/lib/libopencv_ximgproc.4.5.3.dylib
test: /opt/homebrew/lib/libopencv_video.4.5.3.dylib
test: /opt/homebrew/lib/libopencv_videoio.4.5.3.dylib
test: /opt/homebrew/lib/libopencv_dnn.4.5.3.dylib
test: /opt/homebrew/lib/libopencv_imgcodecs.4.5.3.dylib
test: /opt/homebrew/lib/libopencv_objdetect.4.5.3.dylib
test: /opt/homebrew/lib/libopencv_calib3d.4.5.3.dylib
test: /opt/homebrew/lib/libopencv_features2d.4.5.3.dylib
test: /opt/homebrew/lib/libopencv_flann.4.5.3.dylib
test: /opt/homebrew/lib/libopencv_photo.4.5.3.dylib
test: /opt/homebrew/lib/libopencv_imgproc.4.5.3.dylib
test: /opt/homebrew/lib/libopencv_core.4.5.3.dylib
test: CMakeFiles/test.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/Users/nefelibatalyu/Desktop/code/cv/hw3/test/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable test"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/test.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/test.dir/build: test
.PHONY : CMakeFiles/test.dir/build

CMakeFiles/test.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/test.dir/cmake_clean.cmake
.PHONY : CMakeFiles/test.dir/clean

CMakeFiles/test.dir/depend:
	cd /Users/nefelibatalyu/Desktop/code/cv/hw3/test && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /Users/nefelibatalyu/Desktop/code/cv/hw3/test /Users/nefelibatalyu/Desktop/code/cv/hw3/test /Users/nefelibatalyu/Desktop/code/cv/hw3/test /Users/nefelibatalyu/Desktop/code/cv/hw3/test /Users/nefelibatalyu/Desktop/code/cv/hw3/test/CMakeFiles/test.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/test.dir/depend

