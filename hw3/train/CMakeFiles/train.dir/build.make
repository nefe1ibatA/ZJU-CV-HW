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
CMAKE_SOURCE_DIR = /Users/nefelibatalyu/Desktop/code/cv/hw3/train

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /Users/nefelibatalyu/Desktop/code/cv/hw3/train

# Include any dependencies generated for this target.
include CMakeFiles/train.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include CMakeFiles/train.dir/compiler_depend.make

# Include the progress variables for this target.
include CMakeFiles/train.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/train.dir/flags.make

CMakeFiles/train.dir/train.cpp.o: CMakeFiles/train.dir/flags.make
CMakeFiles/train.dir/train.cpp.o: train.cpp
CMakeFiles/train.dir/train.cpp.o: CMakeFiles/train.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/nefelibatalyu/Desktop/code/cv/hw3/train/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/train.dir/train.cpp.o"
	/Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/train.dir/train.cpp.o -MF CMakeFiles/train.dir/train.cpp.o.d -o CMakeFiles/train.dir/train.cpp.o -c /Users/nefelibatalyu/Desktop/code/cv/hw3/train/train.cpp

CMakeFiles/train.dir/train.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/train.dir/train.cpp.i"
	/Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/nefelibatalyu/Desktop/code/cv/hw3/train/train.cpp > CMakeFiles/train.dir/train.cpp.i

CMakeFiles/train.dir/train.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/train.dir/train.cpp.s"
	/Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/nefelibatalyu/Desktop/code/cv/hw3/train/train.cpp -o CMakeFiles/train.dir/train.cpp.s

# Object files for target train
train_OBJECTS = \
"CMakeFiles/train.dir/train.cpp.o"

# External object files for target train
train_EXTERNAL_OBJECTS =

train: CMakeFiles/train.dir/train.cpp.o
train: CMakeFiles/train.dir/build.make
train: /opt/homebrew/lib/libopencv_gapi.4.5.3.dylib
train: /opt/homebrew/lib/libopencv_stitching.4.5.3.dylib
train: /opt/homebrew/lib/libopencv_alphamat.4.5.3.dylib
train: /opt/homebrew/lib/libopencv_aruco.4.5.3.dylib
train: /opt/homebrew/lib/libopencv_barcode.4.5.3.dylib
train: /opt/homebrew/lib/libopencv_bgsegm.4.5.3.dylib
train: /opt/homebrew/lib/libopencv_bioinspired.4.5.3.dylib
train: /opt/homebrew/lib/libopencv_ccalib.4.5.3.dylib
train: /opt/homebrew/lib/libopencv_dnn_objdetect.4.5.3.dylib
train: /opt/homebrew/lib/libopencv_dnn_superres.4.5.3.dylib
train: /opt/homebrew/lib/libopencv_dpm.4.5.3.dylib
train: /opt/homebrew/lib/libopencv_face.4.5.3.dylib
train: /opt/homebrew/lib/libopencv_freetype.4.5.3.dylib
train: /opt/homebrew/lib/libopencv_fuzzy.4.5.3.dylib
train: /opt/homebrew/lib/libopencv_hfs.4.5.3.dylib
train: /opt/homebrew/lib/libopencv_img_hash.4.5.3.dylib
train: /opt/homebrew/lib/libopencv_intensity_transform.4.5.3.dylib
train: /opt/homebrew/lib/libopencv_line_descriptor.4.5.3.dylib
train: /opt/homebrew/lib/libopencv_mcc.4.5.3.dylib
train: /opt/homebrew/lib/libopencv_quality.4.5.3.dylib
train: /opt/homebrew/lib/libopencv_rapid.4.5.3.dylib
train: /opt/homebrew/lib/libopencv_reg.4.5.3.dylib
train: /opt/homebrew/lib/libopencv_rgbd.4.5.3.dylib
train: /opt/homebrew/lib/libopencv_saliency.4.5.3.dylib
train: /opt/homebrew/lib/libopencv_sfm.4.5.3.dylib
train: /opt/homebrew/lib/libopencv_stereo.4.5.3.dylib
train: /opt/homebrew/lib/libopencv_structured_light.4.5.3.dylib
train: /opt/homebrew/lib/libopencv_superres.4.5.3.dylib
train: /opt/homebrew/lib/libopencv_surface_matching.4.5.3.dylib
train: /opt/homebrew/lib/libopencv_tracking.4.5.3.dylib
train: /opt/homebrew/lib/libopencv_videostab.4.5.3.dylib
train: /opt/homebrew/lib/libopencv_viz.4.5.3.dylib
train: /opt/homebrew/lib/libopencv_wechat_qrcode.4.5.3.dylib
train: /opt/homebrew/lib/libopencv_xfeatures2d.4.5.3.dylib
train: /opt/homebrew/lib/libopencv_xobjdetect.4.5.3.dylib
train: /opt/homebrew/lib/libopencv_xphoto.4.5.3.dylib
train: /opt/homebrew/lib/libopencv_shape.4.5.3.dylib
train: /opt/homebrew/lib/libopencv_highgui.4.5.3.dylib
train: /opt/homebrew/lib/libopencv_datasets.4.5.3.dylib
train: /opt/homebrew/lib/libopencv_plot.4.5.3.dylib
train: /opt/homebrew/lib/libopencv_text.4.5.3.dylib
train: /opt/homebrew/lib/libopencv_ml.4.5.3.dylib
train: /opt/homebrew/lib/libopencv_phase_unwrapping.4.5.3.dylib
train: /opt/homebrew/lib/libopencv_optflow.4.5.3.dylib
train: /opt/homebrew/lib/libopencv_ximgproc.4.5.3.dylib
train: /opt/homebrew/lib/libopencv_video.4.5.3.dylib
train: /opt/homebrew/lib/libopencv_videoio.4.5.3.dylib
train: /opt/homebrew/lib/libopencv_dnn.4.5.3.dylib
train: /opt/homebrew/lib/libopencv_imgcodecs.4.5.3.dylib
train: /opt/homebrew/lib/libopencv_objdetect.4.5.3.dylib
train: /opt/homebrew/lib/libopencv_calib3d.4.5.3.dylib
train: /opt/homebrew/lib/libopencv_features2d.4.5.3.dylib
train: /opt/homebrew/lib/libopencv_flann.4.5.3.dylib
train: /opt/homebrew/lib/libopencv_photo.4.5.3.dylib
train: /opt/homebrew/lib/libopencv_imgproc.4.5.3.dylib
train: /opt/homebrew/lib/libopencv_core.4.5.3.dylib
train: CMakeFiles/train.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/Users/nefelibatalyu/Desktop/code/cv/hw3/train/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable train"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/train.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/train.dir/build: train
.PHONY : CMakeFiles/train.dir/build

CMakeFiles/train.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/train.dir/cmake_clean.cmake
.PHONY : CMakeFiles/train.dir/clean

CMakeFiles/train.dir/depend:
	cd /Users/nefelibatalyu/Desktop/code/cv/hw3/train && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /Users/nefelibatalyu/Desktop/code/cv/hw3/train /Users/nefelibatalyu/Desktop/code/cv/hw3/train /Users/nefelibatalyu/Desktop/code/cv/hw3/train /Users/nefelibatalyu/Desktop/code/cv/hw3/train /Users/nefelibatalyu/Desktop/code/cv/hw3/train/CMakeFiles/train.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/train.dir/depend
