# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.20

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
CMAKE_COMMAND = /Applications/CLion.app/Contents/bin/cmake/mac/bin/cmake

# The command to remove a file.
RM = /Applications/CLion.app/Contents/bin/cmake/mac/bin/cmake -E rm -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /Users/aibek.myrzatay/Documents/coding/cpp-base-hse-2022/projects/image_processor

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /Users/aibek.myrzatay/Documents/coding/cpp-base-hse-2022/projects/image_processor/cmake-build-debug

# Include any dependencies generated for this target.
include test/CMakeFiles/tests.dir/depend.make
# Include the progress variables for this target.
include test/CMakeFiles/tests.dir/progress.make

# Include the compile flags for this target's objects.
include test/CMakeFiles/tests.dir/flags.make

test/CMakeFiles/tests.dir/__/Pixel.cpp.o: test/CMakeFiles/tests.dir/flags.make
test/CMakeFiles/tests.dir/__/Pixel.cpp.o: ../Pixel.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/aibek.myrzatay/Documents/coding/cpp-base-hse-2022/projects/image_processor/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object test/CMakeFiles/tests.dir/__/Pixel.cpp.o"
	cd /Users/aibek.myrzatay/Documents/coding/cpp-base-hse-2022/projects/image_processor/cmake-build-debug/test && /Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/tests.dir/__/Pixel.cpp.o -c /Users/aibek.myrzatay/Documents/coding/cpp-base-hse-2022/projects/image_processor/Pixel.cpp

test/CMakeFiles/tests.dir/__/Pixel.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/tests.dir/__/Pixel.cpp.i"
	cd /Users/aibek.myrzatay/Documents/coding/cpp-base-hse-2022/projects/image_processor/cmake-build-debug/test && /Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/aibek.myrzatay/Documents/coding/cpp-base-hse-2022/projects/image_processor/Pixel.cpp > CMakeFiles/tests.dir/__/Pixel.cpp.i

test/CMakeFiles/tests.dir/__/Pixel.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/tests.dir/__/Pixel.cpp.s"
	cd /Users/aibek.myrzatay/Documents/coding/cpp-base-hse-2022/projects/image_processor/cmake-build-debug/test && /Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/aibek.myrzatay/Documents/coding/cpp-base-hse-2022/projects/image_processor/Pixel.cpp -o CMakeFiles/tests.dir/__/Pixel.cpp.s

test/CMakeFiles/tests.dir/__/Image.cpp.o: test/CMakeFiles/tests.dir/flags.make
test/CMakeFiles/tests.dir/__/Image.cpp.o: ../Image.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/aibek.myrzatay/Documents/coding/cpp-base-hse-2022/projects/image_processor/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building CXX object test/CMakeFiles/tests.dir/__/Image.cpp.o"
	cd /Users/aibek.myrzatay/Documents/coding/cpp-base-hse-2022/projects/image_processor/cmake-build-debug/test && /Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/tests.dir/__/Image.cpp.o -c /Users/aibek.myrzatay/Documents/coding/cpp-base-hse-2022/projects/image_processor/Image.cpp

test/CMakeFiles/tests.dir/__/Image.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/tests.dir/__/Image.cpp.i"
	cd /Users/aibek.myrzatay/Documents/coding/cpp-base-hse-2022/projects/image_processor/cmake-build-debug/test && /Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/aibek.myrzatay/Documents/coding/cpp-base-hse-2022/projects/image_processor/Image.cpp > CMakeFiles/tests.dir/__/Image.cpp.i

test/CMakeFiles/tests.dir/__/Image.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/tests.dir/__/Image.cpp.s"
	cd /Users/aibek.myrzatay/Documents/coding/cpp-base-hse-2022/projects/image_processor/cmake-build-debug/test && /Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/aibek.myrzatay/Documents/coding/cpp-base-hse-2022/projects/image_processor/Image.cpp -o CMakeFiles/tests.dir/__/Image.cpp.s

test/CMakeFiles/tests.dir/__/BMP.cpp.o: test/CMakeFiles/tests.dir/flags.make
test/CMakeFiles/tests.dir/__/BMP.cpp.o: ../BMP.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/aibek.myrzatay/Documents/coding/cpp-base-hse-2022/projects/image_processor/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Building CXX object test/CMakeFiles/tests.dir/__/BMP.cpp.o"
	cd /Users/aibek.myrzatay/Documents/coding/cpp-base-hse-2022/projects/image_processor/cmake-build-debug/test && /Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/tests.dir/__/BMP.cpp.o -c /Users/aibek.myrzatay/Documents/coding/cpp-base-hse-2022/projects/image_processor/BMP.cpp

test/CMakeFiles/tests.dir/__/BMP.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/tests.dir/__/BMP.cpp.i"
	cd /Users/aibek.myrzatay/Documents/coding/cpp-base-hse-2022/projects/image_processor/cmake-build-debug/test && /Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/aibek.myrzatay/Documents/coding/cpp-base-hse-2022/projects/image_processor/BMP.cpp > CMakeFiles/tests.dir/__/BMP.cpp.i

test/CMakeFiles/tests.dir/__/BMP.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/tests.dir/__/BMP.cpp.s"
	cd /Users/aibek.myrzatay/Documents/coding/cpp-base-hse-2022/projects/image_processor/cmake-build-debug/test && /Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/aibek.myrzatay/Documents/coding/cpp-base-hse-2022/projects/image_processor/BMP.cpp -o CMakeFiles/tests.dir/__/BMP.cpp.s

test/CMakeFiles/tests.dir/__/filters/Filter.cpp.o: test/CMakeFiles/tests.dir/flags.make
test/CMakeFiles/tests.dir/__/filters/Filter.cpp.o: ../filters/Filter.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/aibek.myrzatay/Documents/coding/cpp-base-hse-2022/projects/image_processor/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_4) "Building CXX object test/CMakeFiles/tests.dir/__/filters/Filter.cpp.o"
	cd /Users/aibek.myrzatay/Documents/coding/cpp-base-hse-2022/projects/image_processor/cmake-build-debug/test && /Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/tests.dir/__/filters/Filter.cpp.o -c /Users/aibek.myrzatay/Documents/coding/cpp-base-hse-2022/projects/image_processor/filters/Filter.cpp

test/CMakeFiles/tests.dir/__/filters/Filter.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/tests.dir/__/filters/Filter.cpp.i"
	cd /Users/aibek.myrzatay/Documents/coding/cpp-base-hse-2022/projects/image_processor/cmake-build-debug/test && /Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/aibek.myrzatay/Documents/coding/cpp-base-hse-2022/projects/image_processor/filters/Filter.cpp > CMakeFiles/tests.dir/__/filters/Filter.cpp.i

test/CMakeFiles/tests.dir/__/filters/Filter.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/tests.dir/__/filters/Filter.cpp.s"
	cd /Users/aibek.myrzatay/Documents/coding/cpp-base-hse-2022/projects/image_processor/cmake-build-debug/test && /Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/aibek.myrzatay/Documents/coding/cpp-base-hse-2022/projects/image_processor/filters/Filter.cpp -o CMakeFiles/tests.dir/__/filters/Filter.cpp.s

test/CMakeFiles/tests.dir/__/filters/Crop.cpp.o: test/CMakeFiles/tests.dir/flags.make
test/CMakeFiles/tests.dir/__/filters/Crop.cpp.o: ../filters/Crop.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/aibek.myrzatay/Documents/coding/cpp-base-hse-2022/projects/image_processor/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_5) "Building CXX object test/CMakeFiles/tests.dir/__/filters/Crop.cpp.o"
	cd /Users/aibek.myrzatay/Documents/coding/cpp-base-hse-2022/projects/image_processor/cmake-build-debug/test && /Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/tests.dir/__/filters/Crop.cpp.o -c /Users/aibek.myrzatay/Documents/coding/cpp-base-hse-2022/projects/image_processor/filters/Crop.cpp

test/CMakeFiles/tests.dir/__/filters/Crop.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/tests.dir/__/filters/Crop.cpp.i"
	cd /Users/aibek.myrzatay/Documents/coding/cpp-base-hse-2022/projects/image_processor/cmake-build-debug/test && /Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/aibek.myrzatay/Documents/coding/cpp-base-hse-2022/projects/image_processor/filters/Crop.cpp > CMakeFiles/tests.dir/__/filters/Crop.cpp.i

test/CMakeFiles/tests.dir/__/filters/Crop.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/tests.dir/__/filters/Crop.cpp.s"
	cd /Users/aibek.myrzatay/Documents/coding/cpp-base-hse-2022/projects/image_processor/cmake-build-debug/test && /Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/aibek.myrzatay/Documents/coding/cpp-base-hse-2022/projects/image_processor/filters/Crop.cpp -o CMakeFiles/tests.dir/__/filters/Crop.cpp.s

test/CMakeFiles/tests.dir/__/filters/GrayScale.cpp.o: test/CMakeFiles/tests.dir/flags.make
test/CMakeFiles/tests.dir/__/filters/GrayScale.cpp.o: ../filters/GrayScale.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/aibek.myrzatay/Documents/coding/cpp-base-hse-2022/projects/image_processor/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_6) "Building CXX object test/CMakeFiles/tests.dir/__/filters/GrayScale.cpp.o"
	cd /Users/aibek.myrzatay/Documents/coding/cpp-base-hse-2022/projects/image_processor/cmake-build-debug/test && /Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/tests.dir/__/filters/GrayScale.cpp.o -c /Users/aibek.myrzatay/Documents/coding/cpp-base-hse-2022/projects/image_processor/filters/GrayScale.cpp

test/CMakeFiles/tests.dir/__/filters/GrayScale.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/tests.dir/__/filters/GrayScale.cpp.i"
	cd /Users/aibek.myrzatay/Documents/coding/cpp-base-hse-2022/projects/image_processor/cmake-build-debug/test && /Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/aibek.myrzatay/Documents/coding/cpp-base-hse-2022/projects/image_processor/filters/GrayScale.cpp > CMakeFiles/tests.dir/__/filters/GrayScale.cpp.i

test/CMakeFiles/tests.dir/__/filters/GrayScale.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/tests.dir/__/filters/GrayScale.cpp.s"
	cd /Users/aibek.myrzatay/Documents/coding/cpp-base-hse-2022/projects/image_processor/cmake-build-debug/test && /Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/aibek.myrzatay/Documents/coding/cpp-base-hse-2022/projects/image_processor/filters/GrayScale.cpp -o CMakeFiles/tests.dir/__/filters/GrayScale.cpp.s

test/CMakeFiles/tests.dir/__/filters/Sharpening.cpp.o: test/CMakeFiles/tests.dir/flags.make
test/CMakeFiles/tests.dir/__/filters/Sharpening.cpp.o: ../filters/Sharpening.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/aibek.myrzatay/Documents/coding/cpp-base-hse-2022/projects/image_processor/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_7) "Building CXX object test/CMakeFiles/tests.dir/__/filters/Sharpening.cpp.o"
	cd /Users/aibek.myrzatay/Documents/coding/cpp-base-hse-2022/projects/image_processor/cmake-build-debug/test && /Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/tests.dir/__/filters/Sharpening.cpp.o -c /Users/aibek.myrzatay/Documents/coding/cpp-base-hse-2022/projects/image_processor/filters/Sharpening.cpp

test/CMakeFiles/tests.dir/__/filters/Sharpening.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/tests.dir/__/filters/Sharpening.cpp.i"
	cd /Users/aibek.myrzatay/Documents/coding/cpp-base-hse-2022/projects/image_processor/cmake-build-debug/test && /Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/aibek.myrzatay/Documents/coding/cpp-base-hse-2022/projects/image_processor/filters/Sharpening.cpp > CMakeFiles/tests.dir/__/filters/Sharpening.cpp.i

test/CMakeFiles/tests.dir/__/filters/Sharpening.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/tests.dir/__/filters/Sharpening.cpp.s"
	cd /Users/aibek.myrzatay/Documents/coding/cpp-base-hse-2022/projects/image_processor/cmake-build-debug/test && /Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/aibek.myrzatay/Documents/coding/cpp-base-hse-2022/projects/image_processor/filters/Sharpening.cpp -o CMakeFiles/tests.dir/__/filters/Sharpening.cpp.s

test/CMakeFiles/tests.dir/__/filters/EdgeDetection.cpp.o: test/CMakeFiles/tests.dir/flags.make
test/CMakeFiles/tests.dir/__/filters/EdgeDetection.cpp.o: ../filters/EdgeDetection.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/aibek.myrzatay/Documents/coding/cpp-base-hse-2022/projects/image_processor/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_8) "Building CXX object test/CMakeFiles/tests.dir/__/filters/EdgeDetection.cpp.o"
	cd /Users/aibek.myrzatay/Documents/coding/cpp-base-hse-2022/projects/image_processor/cmake-build-debug/test && /Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/tests.dir/__/filters/EdgeDetection.cpp.o -c /Users/aibek.myrzatay/Documents/coding/cpp-base-hse-2022/projects/image_processor/filters/EdgeDetection.cpp

test/CMakeFiles/tests.dir/__/filters/EdgeDetection.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/tests.dir/__/filters/EdgeDetection.cpp.i"
	cd /Users/aibek.myrzatay/Documents/coding/cpp-base-hse-2022/projects/image_processor/cmake-build-debug/test && /Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/aibek.myrzatay/Documents/coding/cpp-base-hse-2022/projects/image_processor/filters/EdgeDetection.cpp > CMakeFiles/tests.dir/__/filters/EdgeDetection.cpp.i

test/CMakeFiles/tests.dir/__/filters/EdgeDetection.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/tests.dir/__/filters/EdgeDetection.cpp.s"
	cd /Users/aibek.myrzatay/Documents/coding/cpp-base-hse-2022/projects/image_processor/cmake-build-debug/test && /Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/aibek.myrzatay/Documents/coding/cpp-base-hse-2022/projects/image_processor/filters/EdgeDetection.cpp -o CMakeFiles/tests.dir/__/filters/EdgeDetection.cpp.s

test/CMakeFiles/tests.dir/__/filters/MatrixFilter.cpp.o: test/CMakeFiles/tests.dir/flags.make
test/CMakeFiles/tests.dir/__/filters/MatrixFilter.cpp.o: ../filters/MatrixFilter.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/aibek.myrzatay/Documents/coding/cpp-base-hse-2022/projects/image_processor/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_9) "Building CXX object test/CMakeFiles/tests.dir/__/filters/MatrixFilter.cpp.o"
	cd /Users/aibek.myrzatay/Documents/coding/cpp-base-hse-2022/projects/image_processor/cmake-build-debug/test && /Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/tests.dir/__/filters/MatrixFilter.cpp.o -c /Users/aibek.myrzatay/Documents/coding/cpp-base-hse-2022/projects/image_processor/filters/MatrixFilter.cpp

test/CMakeFiles/tests.dir/__/filters/MatrixFilter.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/tests.dir/__/filters/MatrixFilter.cpp.i"
	cd /Users/aibek.myrzatay/Documents/coding/cpp-base-hse-2022/projects/image_processor/cmake-build-debug/test && /Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/aibek.myrzatay/Documents/coding/cpp-base-hse-2022/projects/image_processor/filters/MatrixFilter.cpp > CMakeFiles/tests.dir/__/filters/MatrixFilter.cpp.i

test/CMakeFiles/tests.dir/__/filters/MatrixFilter.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/tests.dir/__/filters/MatrixFilter.cpp.s"
	cd /Users/aibek.myrzatay/Documents/coding/cpp-base-hse-2022/projects/image_processor/cmake-build-debug/test && /Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/aibek.myrzatay/Documents/coding/cpp-base-hse-2022/projects/image_processor/filters/MatrixFilter.cpp -o CMakeFiles/tests.dir/__/filters/MatrixFilter.cpp.s

test/CMakeFiles/tests.dir/__/filters/Negative.cpp.o: test/CMakeFiles/tests.dir/flags.make
test/CMakeFiles/tests.dir/__/filters/Negative.cpp.o: ../filters/Negative.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/aibek.myrzatay/Documents/coding/cpp-base-hse-2022/projects/image_processor/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_10) "Building CXX object test/CMakeFiles/tests.dir/__/filters/Negative.cpp.o"
	cd /Users/aibek.myrzatay/Documents/coding/cpp-base-hse-2022/projects/image_processor/cmake-build-debug/test && /Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/tests.dir/__/filters/Negative.cpp.o -c /Users/aibek.myrzatay/Documents/coding/cpp-base-hse-2022/projects/image_processor/filters/Negative.cpp

test/CMakeFiles/tests.dir/__/filters/Negative.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/tests.dir/__/filters/Negative.cpp.i"
	cd /Users/aibek.myrzatay/Documents/coding/cpp-base-hse-2022/projects/image_processor/cmake-build-debug/test && /Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/aibek.myrzatay/Documents/coding/cpp-base-hse-2022/projects/image_processor/filters/Negative.cpp > CMakeFiles/tests.dir/__/filters/Negative.cpp.i

test/CMakeFiles/tests.dir/__/filters/Negative.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/tests.dir/__/filters/Negative.cpp.s"
	cd /Users/aibek.myrzatay/Documents/coding/cpp-base-hse-2022/projects/image_processor/cmake-build-debug/test && /Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/aibek.myrzatay/Documents/coding/cpp-base-hse-2022/projects/image_processor/filters/Negative.cpp -o CMakeFiles/tests.dir/__/filters/Negative.cpp.s

test/CMakeFiles/tests.dir/__/filters/GaussianBlur.cpp.o: test/CMakeFiles/tests.dir/flags.make
test/CMakeFiles/tests.dir/__/filters/GaussianBlur.cpp.o: ../filters/GaussianBlur.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/aibek.myrzatay/Documents/coding/cpp-base-hse-2022/projects/image_processor/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_11) "Building CXX object test/CMakeFiles/tests.dir/__/filters/GaussianBlur.cpp.o"
	cd /Users/aibek.myrzatay/Documents/coding/cpp-base-hse-2022/projects/image_processor/cmake-build-debug/test && /Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/tests.dir/__/filters/GaussianBlur.cpp.o -c /Users/aibek.myrzatay/Documents/coding/cpp-base-hse-2022/projects/image_processor/filters/GaussianBlur.cpp

test/CMakeFiles/tests.dir/__/filters/GaussianBlur.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/tests.dir/__/filters/GaussianBlur.cpp.i"
	cd /Users/aibek.myrzatay/Documents/coding/cpp-base-hse-2022/projects/image_processor/cmake-build-debug/test && /Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/aibek.myrzatay/Documents/coding/cpp-base-hse-2022/projects/image_processor/filters/GaussianBlur.cpp > CMakeFiles/tests.dir/__/filters/GaussianBlur.cpp.i

test/CMakeFiles/tests.dir/__/filters/GaussianBlur.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/tests.dir/__/filters/GaussianBlur.cpp.s"
	cd /Users/aibek.myrzatay/Documents/coding/cpp-base-hse-2022/projects/image_processor/cmake-build-debug/test && /Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/aibek.myrzatay/Documents/coding/cpp-base-hse-2022/projects/image_processor/filters/GaussianBlur.cpp -o CMakeFiles/tests.dir/__/filters/GaussianBlur.cpp.s

test/CMakeFiles/tests.dir/__/Parser.cpp.o: test/CMakeFiles/tests.dir/flags.make
test/CMakeFiles/tests.dir/__/Parser.cpp.o: ../Parser.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/aibek.myrzatay/Documents/coding/cpp-base-hse-2022/projects/image_processor/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_12) "Building CXX object test/CMakeFiles/tests.dir/__/Parser.cpp.o"
	cd /Users/aibek.myrzatay/Documents/coding/cpp-base-hse-2022/projects/image_processor/cmake-build-debug/test && /Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/tests.dir/__/Parser.cpp.o -c /Users/aibek.myrzatay/Documents/coding/cpp-base-hse-2022/projects/image_processor/Parser.cpp

test/CMakeFiles/tests.dir/__/Parser.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/tests.dir/__/Parser.cpp.i"
	cd /Users/aibek.myrzatay/Documents/coding/cpp-base-hse-2022/projects/image_processor/cmake-build-debug/test && /Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/aibek.myrzatay/Documents/coding/cpp-base-hse-2022/projects/image_processor/Parser.cpp > CMakeFiles/tests.dir/__/Parser.cpp.i

test/CMakeFiles/tests.dir/__/Parser.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/tests.dir/__/Parser.cpp.s"
	cd /Users/aibek.myrzatay/Documents/coding/cpp-base-hse-2022/projects/image_processor/cmake-build-debug/test && /Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/aibek.myrzatay/Documents/coding/cpp-base-hse-2022/projects/image_processor/Parser.cpp -o CMakeFiles/tests.dir/__/Parser.cpp.s

test/CMakeFiles/tests.dir/__/filters/Crystallize.cpp.o: test/CMakeFiles/tests.dir/flags.make
test/CMakeFiles/tests.dir/__/filters/Crystallize.cpp.o: ../filters/Crystallize.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/aibek.myrzatay/Documents/coding/cpp-base-hse-2022/projects/image_processor/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_13) "Building CXX object test/CMakeFiles/tests.dir/__/filters/Crystallize.cpp.o"
	cd /Users/aibek.myrzatay/Documents/coding/cpp-base-hse-2022/projects/image_processor/cmake-build-debug/test && /Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/tests.dir/__/filters/Crystallize.cpp.o -c /Users/aibek.myrzatay/Documents/coding/cpp-base-hse-2022/projects/image_processor/filters/Crystallize.cpp

test/CMakeFiles/tests.dir/__/filters/Crystallize.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/tests.dir/__/filters/Crystallize.cpp.i"
	cd /Users/aibek.myrzatay/Documents/coding/cpp-base-hse-2022/projects/image_processor/cmake-build-debug/test && /Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/aibek.myrzatay/Documents/coding/cpp-base-hse-2022/projects/image_processor/filters/Crystallize.cpp > CMakeFiles/tests.dir/__/filters/Crystallize.cpp.i

test/CMakeFiles/tests.dir/__/filters/Crystallize.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/tests.dir/__/filters/Crystallize.cpp.s"
	cd /Users/aibek.myrzatay/Documents/coding/cpp-base-hse-2022/projects/image_processor/cmake-build-debug/test && /Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/aibek.myrzatay/Documents/coding/cpp-base-hse-2022/projects/image_processor/filters/Crystallize.cpp -o CMakeFiles/tests.dir/__/filters/Crystallize.cpp.s

test/CMakeFiles/tests.dir/__/exceptions/bmp_exceptions.cpp.o: test/CMakeFiles/tests.dir/flags.make
test/CMakeFiles/tests.dir/__/exceptions/bmp_exceptions.cpp.o: ../exceptions/bmp_exceptions.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/aibek.myrzatay/Documents/coding/cpp-base-hse-2022/projects/image_processor/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_14) "Building CXX object test/CMakeFiles/tests.dir/__/exceptions/bmp_exceptions.cpp.o"
	cd /Users/aibek.myrzatay/Documents/coding/cpp-base-hse-2022/projects/image_processor/cmake-build-debug/test && /Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/tests.dir/__/exceptions/bmp_exceptions.cpp.o -c /Users/aibek.myrzatay/Documents/coding/cpp-base-hse-2022/projects/image_processor/exceptions/bmp_exceptions.cpp

test/CMakeFiles/tests.dir/__/exceptions/bmp_exceptions.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/tests.dir/__/exceptions/bmp_exceptions.cpp.i"
	cd /Users/aibek.myrzatay/Documents/coding/cpp-base-hse-2022/projects/image_processor/cmake-build-debug/test && /Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/aibek.myrzatay/Documents/coding/cpp-base-hse-2022/projects/image_processor/exceptions/bmp_exceptions.cpp > CMakeFiles/tests.dir/__/exceptions/bmp_exceptions.cpp.i

test/CMakeFiles/tests.dir/__/exceptions/bmp_exceptions.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/tests.dir/__/exceptions/bmp_exceptions.cpp.s"
	cd /Users/aibek.myrzatay/Documents/coding/cpp-base-hse-2022/projects/image_processor/cmake-build-debug/test && /Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/aibek.myrzatay/Documents/coding/cpp-base-hse-2022/projects/image_processor/exceptions/bmp_exceptions.cpp -o CMakeFiles/tests.dir/__/exceptions/bmp_exceptions.cpp.s

test/CMakeFiles/tests.dir/__/exceptions/parser_exceptions.cpp.o: test/CMakeFiles/tests.dir/flags.make
test/CMakeFiles/tests.dir/__/exceptions/parser_exceptions.cpp.o: ../exceptions/parser_exceptions.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/aibek.myrzatay/Documents/coding/cpp-base-hse-2022/projects/image_processor/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_15) "Building CXX object test/CMakeFiles/tests.dir/__/exceptions/parser_exceptions.cpp.o"
	cd /Users/aibek.myrzatay/Documents/coding/cpp-base-hse-2022/projects/image_processor/cmake-build-debug/test && /Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/tests.dir/__/exceptions/parser_exceptions.cpp.o -c /Users/aibek.myrzatay/Documents/coding/cpp-base-hse-2022/projects/image_processor/exceptions/parser_exceptions.cpp

test/CMakeFiles/tests.dir/__/exceptions/parser_exceptions.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/tests.dir/__/exceptions/parser_exceptions.cpp.i"
	cd /Users/aibek.myrzatay/Documents/coding/cpp-base-hse-2022/projects/image_processor/cmake-build-debug/test && /Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/aibek.myrzatay/Documents/coding/cpp-base-hse-2022/projects/image_processor/exceptions/parser_exceptions.cpp > CMakeFiles/tests.dir/__/exceptions/parser_exceptions.cpp.i

test/CMakeFiles/tests.dir/__/exceptions/parser_exceptions.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/tests.dir/__/exceptions/parser_exceptions.cpp.s"
	cd /Users/aibek.myrzatay/Documents/coding/cpp-base-hse-2022/projects/image_processor/cmake-build-debug/test && /Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/aibek.myrzatay/Documents/coding/cpp-base-hse-2022/projects/image_processor/exceptions/parser_exceptions.cpp -o CMakeFiles/tests.dir/__/exceptions/parser_exceptions.cpp.s

test/CMakeFiles/tests.dir/tests.cpp.o: test/CMakeFiles/tests.dir/flags.make
test/CMakeFiles/tests.dir/tests.cpp.o: ../test/tests.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/aibek.myrzatay/Documents/coding/cpp-base-hse-2022/projects/image_processor/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_16) "Building CXX object test/CMakeFiles/tests.dir/tests.cpp.o"
	cd /Users/aibek.myrzatay/Documents/coding/cpp-base-hse-2022/projects/image_processor/cmake-build-debug/test && /Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/tests.dir/tests.cpp.o -c /Users/aibek.myrzatay/Documents/coding/cpp-base-hse-2022/projects/image_processor/test/tests.cpp

test/CMakeFiles/tests.dir/tests.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/tests.dir/tests.cpp.i"
	cd /Users/aibek.myrzatay/Documents/coding/cpp-base-hse-2022/projects/image_processor/cmake-build-debug/test && /Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/aibek.myrzatay/Documents/coding/cpp-base-hse-2022/projects/image_processor/test/tests.cpp > CMakeFiles/tests.dir/tests.cpp.i

test/CMakeFiles/tests.dir/tests.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/tests.dir/tests.cpp.s"
	cd /Users/aibek.myrzatay/Documents/coding/cpp-base-hse-2022/projects/image_processor/cmake-build-debug/test && /Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/aibek.myrzatay/Documents/coding/cpp-base-hse-2022/projects/image_processor/test/tests.cpp -o CMakeFiles/tests.dir/tests.cpp.s

# Object files for target tests
tests_OBJECTS = \
"CMakeFiles/tests.dir/__/Pixel.cpp.o" \
"CMakeFiles/tests.dir/__/Image.cpp.o" \
"CMakeFiles/tests.dir/__/BMP.cpp.o" \
"CMakeFiles/tests.dir/__/filters/Filter.cpp.o" \
"CMakeFiles/tests.dir/__/filters/Crop.cpp.o" \
"CMakeFiles/tests.dir/__/filters/GrayScale.cpp.o" \
"CMakeFiles/tests.dir/__/filters/Sharpening.cpp.o" \
"CMakeFiles/tests.dir/__/filters/EdgeDetection.cpp.o" \
"CMakeFiles/tests.dir/__/filters/MatrixFilter.cpp.o" \
"CMakeFiles/tests.dir/__/filters/Negative.cpp.o" \
"CMakeFiles/tests.dir/__/filters/GaussianBlur.cpp.o" \
"CMakeFiles/tests.dir/__/Parser.cpp.o" \
"CMakeFiles/tests.dir/__/filters/Crystallize.cpp.o" \
"CMakeFiles/tests.dir/__/exceptions/bmp_exceptions.cpp.o" \
"CMakeFiles/tests.dir/__/exceptions/parser_exceptions.cpp.o" \
"CMakeFiles/tests.dir/tests.cpp.o"

# External object files for target tests
tests_EXTERNAL_OBJECTS =

test/tests: test/CMakeFiles/tests.dir/__/Pixel.cpp.o
test/tests: test/CMakeFiles/tests.dir/__/Image.cpp.o
test/tests: test/CMakeFiles/tests.dir/__/BMP.cpp.o
test/tests: test/CMakeFiles/tests.dir/__/filters/Filter.cpp.o
test/tests: test/CMakeFiles/tests.dir/__/filters/Crop.cpp.o
test/tests: test/CMakeFiles/tests.dir/__/filters/GrayScale.cpp.o
test/tests: test/CMakeFiles/tests.dir/__/filters/Sharpening.cpp.o
test/tests: test/CMakeFiles/tests.dir/__/filters/EdgeDetection.cpp.o
test/tests: test/CMakeFiles/tests.dir/__/filters/MatrixFilter.cpp.o
test/tests: test/CMakeFiles/tests.dir/__/filters/Negative.cpp.o
test/tests: test/CMakeFiles/tests.dir/__/filters/GaussianBlur.cpp.o
test/tests: test/CMakeFiles/tests.dir/__/Parser.cpp.o
test/tests: test/CMakeFiles/tests.dir/__/filters/Crystallize.cpp.o
test/tests: test/CMakeFiles/tests.dir/__/exceptions/bmp_exceptions.cpp.o
test/tests: test/CMakeFiles/tests.dir/__/exceptions/parser_exceptions.cpp.o
test/tests: test/CMakeFiles/tests.dir/tests.cpp.o
test/tests: test/CMakeFiles/tests.dir/build.make
test/tests: libcontrib_catch_main.a
test/tests: test/CMakeFiles/tests.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/Users/aibek.myrzatay/Documents/coding/cpp-base-hse-2022/projects/image_processor/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_17) "Linking CXX executable tests"
	cd /Users/aibek.myrzatay/Documents/coding/cpp-base-hse-2022/projects/image_processor/cmake-build-debug/test && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/tests.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
test/CMakeFiles/tests.dir/build: test/tests
.PHONY : test/CMakeFiles/tests.dir/build

test/CMakeFiles/tests.dir/clean:
	cd /Users/aibek.myrzatay/Documents/coding/cpp-base-hse-2022/projects/image_processor/cmake-build-debug/test && $(CMAKE_COMMAND) -P CMakeFiles/tests.dir/cmake_clean.cmake
.PHONY : test/CMakeFiles/tests.dir/clean

test/CMakeFiles/tests.dir/depend:
	cd /Users/aibek.myrzatay/Documents/coding/cpp-base-hse-2022/projects/image_processor/cmake-build-debug && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /Users/aibek.myrzatay/Documents/coding/cpp-base-hse-2022/projects/image_processor /Users/aibek.myrzatay/Documents/coding/cpp-base-hse-2022/projects/image_processor/test /Users/aibek.myrzatay/Documents/coding/cpp-base-hse-2022/projects/image_processor/cmake-build-debug /Users/aibek.myrzatay/Documents/coding/cpp-base-hse-2022/projects/image_processor/cmake-build-debug/test /Users/aibek.myrzatay/Documents/coding/cpp-base-hse-2022/projects/image_processor/cmake-build-debug/test/CMakeFiles/tests.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : test/CMakeFiles/tests.dir/depend

