# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.15

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
CMAKE_COMMAND = /private/var/folders/8h/x9pfmm0n3pn4kl4t00gc_ww80000gn/T/AppTranslocation/141A2357-21D3-4A52-B4CF-805A3E256C6D/d/CLion.app/Contents/bin/cmake/mac/bin/cmake

# The command to remove a file.
RM = /private/var/folders/8h/x9pfmm0n3pn4kl4t00gc_ww80000gn/T/AppTranslocation/141A2357-21D3-4A52-B4CF-805A3E256C6D/d/CLion.app/Contents/bin/cmake/mac/bin/cmake -E remove -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /Users/beth/cinder_0.9.2_mac/my-projects/final-project-efineberg19

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /Users/beth/cinder_0.9.2_mac/my-projects/final-project-efineberg19/cmake-build-debug

# Include any dependencies generated for this target.
include src/CMakeFiles/mylibrary.dir/depend.make

# Include the progress variables for this target.
include src/CMakeFiles/mylibrary.dir/progress.make

# Include the compile flags for this target's objects.
include src/CMakeFiles/mylibrary.dir/flags.make

src/CMakeFiles/mylibrary.dir/AudioDrawUtils.cc.o: src/CMakeFiles/mylibrary.dir/flags.make
src/CMakeFiles/mylibrary.dir/AudioDrawUtils.cc.o: ../src/AudioDrawUtils.cc
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/beth/cinder_0.9.2_mac/my-projects/final-project-efineberg19/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object src/CMakeFiles/mylibrary.dir/AudioDrawUtils.cc.o"
	cd /Users/beth/cinder_0.9.2_mac/my-projects/final-project-efineberg19/cmake-build-debug/src && /Library/Developer/CommandLineTools/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/mylibrary.dir/AudioDrawUtils.cc.o -c /Users/beth/cinder_0.9.2_mac/my-projects/final-project-efineberg19/src/AudioDrawUtils.cc

src/CMakeFiles/mylibrary.dir/AudioDrawUtils.cc.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/mylibrary.dir/AudioDrawUtils.cc.i"
	cd /Users/beth/cinder_0.9.2_mac/my-projects/final-project-efineberg19/cmake-build-debug/src && /Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/beth/cinder_0.9.2_mac/my-projects/final-project-efineberg19/src/AudioDrawUtils.cc > CMakeFiles/mylibrary.dir/AudioDrawUtils.cc.i

src/CMakeFiles/mylibrary.dir/AudioDrawUtils.cc.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/mylibrary.dir/AudioDrawUtils.cc.s"
	cd /Users/beth/cinder_0.9.2_mac/my-projects/final-project-efineberg19/cmake-build-debug/src && /Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/beth/cinder_0.9.2_mac/my-projects/final-project-efineberg19/src/AudioDrawUtils.cc -o CMakeFiles/mylibrary.dir/AudioDrawUtils.cc.s

src/CMakeFiles/mylibrary.dir/example.cc.o: src/CMakeFiles/mylibrary.dir/flags.make
src/CMakeFiles/mylibrary.dir/example.cc.o: ../src/example.cc
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/beth/cinder_0.9.2_mac/my-projects/final-project-efineberg19/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building CXX object src/CMakeFiles/mylibrary.dir/example.cc.o"
	cd /Users/beth/cinder_0.9.2_mac/my-projects/final-project-efineberg19/cmake-build-debug/src && /Library/Developer/CommandLineTools/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/mylibrary.dir/example.cc.o -c /Users/beth/cinder_0.9.2_mac/my-projects/final-project-efineberg19/src/example.cc

src/CMakeFiles/mylibrary.dir/example.cc.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/mylibrary.dir/example.cc.i"
	cd /Users/beth/cinder_0.9.2_mac/my-projects/final-project-efineberg19/cmake-build-debug/src && /Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/beth/cinder_0.9.2_mac/my-projects/final-project-efineberg19/src/example.cc > CMakeFiles/mylibrary.dir/example.cc.i

src/CMakeFiles/mylibrary.dir/example.cc.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/mylibrary.dir/example.cc.s"
	cd /Users/beth/cinder_0.9.2_mac/my-projects/final-project-efineberg19/cmake-build-debug/src && /Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/beth/cinder_0.9.2_mac/my-projects/final-project-efineberg19/src/example.cc -o CMakeFiles/mylibrary.dir/example.cc.s

src/CMakeFiles/mylibrary.dir/file_player.cc.o: src/CMakeFiles/mylibrary.dir/flags.make
src/CMakeFiles/mylibrary.dir/file_player.cc.o: ../src/file_player.cc
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/beth/cinder_0.9.2_mac/my-projects/final-project-efineberg19/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Building CXX object src/CMakeFiles/mylibrary.dir/file_player.cc.o"
	cd /Users/beth/cinder_0.9.2_mac/my-projects/final-project-efineberg19/cmake-build-debug/src && /Library/Developer/CommandLineTools/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/mylibrary.dir/file_player.cc.o -c /Users/beth/cinder_0.9.2_mac/my-projects/final-project-efineberg19/src/file_player.cc

src/CMakeFiles/mylibrary.dir/file_player.cc.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/mylibrary.dir/file_player.cc.i"
	cd /Users/beth/cinder_0.9.2_mac/my-projects/final-project-efineberg19/cmake-build-debug/src && /Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/beth/cinder_0.9.2_mac/my-projects/final-project-efineberg19/src/file_player.cc > CMakeFiles/mylibrary.dir/file_player.cc.i

src/CMakeFiles/mylibrary.dir/file_player.cc.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/mylibrary.dir/file_player.cc.s"
	cd /Users/beth/cinder_0.9.2_mac/my-projects/final-project-efineberg19/cmake-build-debug/src && /Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/beth/cinder_0.9.2_mac/my-projects/final-project-efineberg19/src/file_player.cc -o CMakeFiles/mylibrary.dir/file_player.cc.s

src/CMakeFiles/mylibrary.dir/sine.cc.o: src/CMakeFiles/mylibrary.dir/flags.make
src/CMakeFiles/mylibrary.dir/sine.cc.o: ../src/sine.cc
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/beth/cinder_0.9.2_mac/my-projects/final-project-efineberg19/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_4) "Building CXX object src/CMakeFiles/mylibrary.dir/sine.cc.o"
	cd /Users/beth/cinder_0.9.2_mac/my-projects/final-project-efineberg19/cmake-build-debug/src && /Library/Developer/CommandLineTools/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/mylibrary.dir/sine.cc.o -c /Users/beth/cinder_0.9.2_mac/my-projects/final-project-efineberg19/src/sine.cc

src/CMakeFiles/mylibrary.dir/sine.cc.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/mylibrary.dir/sine.cc.i"
	cd /Users/beth/cinder_0.9.2_mac/my-projects/final-project-efineberg19/cmake-build-debug/src && /Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/beth/cinder_0.9.2_mac/my-projects/final-project-efineberg19/src/sine.cc > CMakeFiles/mylibrary.dir/sine.cc.i

src/CMakeFiles/mylibrary.dir/sine.cc.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/mylibrary.dir/sine.cc.s"
	cd /Users/beth/cinder_0.9.2_mac/my-projects/final-project-efineberg19/cmake-build-debug/src && /Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/beth/cinder_0.9.2_mac/my-projects/final-project-efineberg19/src/sine.cc -o CMakeFiles/mylibrary.dir/sine.cc.s

src/CMakeFiles/mylibrary.dir/sound_engine.cc.o: src/CMakeFiles/mylibrary.dir/flags.make
src/CMakeFiles/mylibrary.dir/sound_engine.cc.o: ../src/sound_engine.cc
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/beth/cinder_0.9.2_mac/my-projects/final-project-efineberg19/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_5) "Building CXX object src/CMakeFiles/mylibrary.dir/sound_engine.cc.o"
	cd /Users/beth/cinder_0.9.2_mac/my-projects/final-project-efineberg19/cmake-build-debug/src && /Library/Developer/CommandLineTools/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/mylibrary.dir/sound_engine.cc.o -c /Users/beth/cinder_0.9.2_mac/my-projects/final-project-efineberg19/src/sound_engine.cc

src/CMakeFiles/mylibrary.dir/sound_engine.cc.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/mylibrary.dir/sound_engine.cc.i"
	cd /Users/beth/cinder_0.9.2_mac/my-projects/final-project-efineberg19/cmake-build-debug/src && /Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/beth/cinder_0.9.2_mac/my-projects/final-project-efineberg19/src/sound_engine.cc > CMakeFiles/mylibrary.dir/sound_engine.cc.i

src/CMakeFiles/mylibrary.dir/sound_engine.cc.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/mylibrary.dir/sound_engine.cc.s"
	cd /Users/beth/cinder_0.9.2_mac/my-projects/final-project-efineberg19/cmake-build-debug/src && /Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/beth/cinder_0.9.2_mac/my-projects/final-project-efineberg19/src/sound_engine.cc -o CMakeFiles/mylibrary.dir/sound_engine.cc.s

src/CMakeFiles/mylibrary.dir/sound_node.cc.o: src/CMakeFiles/mylibrary.dir/flags.make
src/CMakeFiles/mylibrary.dir/sound_node.cc.o: ../src/sound_node.cc
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/beth/cinder_0.9.2_mac/my-projects/final-project-efineberg19/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_6) "Building CXX object src/CMakeFiles/mylibrary.dir/sound_node.cc.o"
	cd /Users/beth/cinder_0.9.2_mac/my-projects/final-project-efineberg19/cmake-build-debug/src && /Library/Developer/CommandLineTools/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/mylibrary.dir/sound_node.cc.o -c /Users/beth/cinder_0.9.2_mac/my-projects/final-project-efineberg19/src/sound_node.cc

src/CMakeFiles/mylibrary.dir/sound_node.cc.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/mylibrary.dir/sound_node.cc.i"
	cd /Users/beth/cinder_0.9.2_mac/my-projects/final-project-efineberg19/cmake-build-debug/src && /Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/beth/cinder_0.9.2_mac/my-projects/final-project-efineberg19/src/sound_node.cc > CMakeFiles/mylibrary.dir/sound_node.cc.i

src/CMakeFiles/mylibrary.dir/sound_node.cc.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/mylibrary.dir/sound_node.cc.s"
	cd /Users/beth/cinder_0.9.2_mac/my-projects/final-project-efineberg19/cmake-build-debug/src && /Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/beth/cinder_0.9.2_mac/my-projects/final-project-efineberg19/src/sound_node.cc -o CMakeFiles/mylibrary.dir/sound_node.cc.s

src/CMakeFiles/mylibrary.dir/sound_wave.cc.o: src/CMakeFiles/mylibrary.dir/flags.make
src/CMakeFiles/mylibrary.dir/sound_wave.cc.o: ../src/sound_wave.cc
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/beth/cinder_0.9.2_mac/my-projects/final-project-efineberg19/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_7) "Building CXX object src/CMakeFiles/mylibrary.dir/sound_wave.cc.o"
	cd /Users/beth/cinder_0.9.2_mac/my-projects/final-project-efineberg19/cmake-build-debug/src && /Library/Developer/CommandLineTools/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/mylibrary.dir/sound_wave.cc.o -c /Users/beth/cinder_0.9.2_mac/my-projects/final-project-efineberg19/src/sound_wave.cc

src/CMakeFiles/mylibrary.dir/sound_wave.cc.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/mylibrary.dir/sound_wave.cc.i"
	cd /Users/beth/cinder_0.9.2_mac/my-projects/final-project-efineberg19/cmake-build-debug/src && /Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/beth/cinder_0.9.2_mac/my-projects/final-project-efineberg19/src/sound_wave.cc > CMakeFiles/mylibrary.dir/sound_wave.cc.i

src/CMakeFiles/mylibrary.dir/sound_wave.cc.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/mylibrary.dir/sound_wave.cc.s"
	cd /Users/beth/cinder_0.9.2_mac/my-projects/final-project-efineberg19/cmake-build-debug/src && /Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/beth/cinder_0.9.2_mac/my-projects/final-project-efineberg19/src/sound_wave.cc -o CMakeFiles/mylibrary.dir/sound_wave.cc.s

src/CMakeFiles/mylibrary.dir/traingle.cc.o: src/CMakeFiles/mylibrary.dir/flags.make
src/CMakeFiles/mylibrary.dir/traingle.cc.o: ../src/traingle.cc
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/beth/cinder_0.9.2_mac/my-projects/final-project-efineberg19/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_8) "Building CXX object src/CMakeFiles/mylibrary.dir/traingle.cc.o"
	cd /Users/beth/cinder_0.9.2_mac/my-projects/final-project-efineberg19/cmake-build-debug/src && /Library/Developer/CommandLineTools/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/mylibrary.dir/traingle.cc.o -c /Users/beth/cinder_0.9.2_mac/my-projects/final-project-efineberg19/src/traingle.cc

src/CMakeFiles/mylibrary.dir/traingle.cc.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/mylibrary.dir/traingle.cc.i"
	cd /Users/beth/cinder_0.9.2_mac/my-projects/final-project-efineberg19/cmake-build-debug/src && /Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/beth/cinder_0.9.2_mac/my-projects/final-project-efineberg19/src/traingle.cc > CMakeFiles/mylibrary.dir/traingle.cc.i

src/CMakeFiles/mylibrary.dir/traingle.cc.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/mylibrary.dir/traingle.cc.s"
	cd /Users/beth/cinder_0.9.2_mac/my-projects/final-project-efineberg19/cmake-build-debug/src && /Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/beth/cinder_0.9.2_mac/my-projects/final-project-efineberg19/src/traingle.cc -o CMakeFiles/mylibrary.dir/traingle.cc.s

# Object files for target mylibrary
mylibrary_OBJECTS = \
"CMakeFiles/mylibrary.dir/AudioDrawUtils.cc.o" \
"CMakeFiles/mylibrary.dir/example.cc.o" \
"CMakeFiles/mylibrary.dir/file_player.cc.o" \
"CMakeFiles/mylibrary.dir/sine.cc.o" \
"CMakeFiles/mylibrary.dir/sound_engine.cc.o" \
"CMakeFiles/mylibrary.dir/sound_node.cc.o" \
"CMakeFiles/mylibrary.dir/sound_wave.cc.o" \
"CMakeFiles/mylibrary.dir/traingle.cc.o"

# External object files for target mylibrary
mylibrary_EXTERNAL_OBJECTS =

src/libmylibrary.a: src/CMakeFiles/mylibrary.dir/AudioDrawUtils.cc.o
src/libmylibrary.a: src/CMakeFiles/mylibrary.dir/example.cc.o
src/libmylibrary.a: src/CMakeFiles/mylibrary.dir/file_player.cc.o
src/libmylibrary.a: src/CMakeFiles/mylibrary.dir/sine.cc.o
src/libmylibrary.a: src/CMakeFiles/mylibrary.dir/sound_engine.cc.o
src/libmylibrary.a: src/CMakeFiles/mylibrary.dir/sound_node.cc.o
src/libmylibrary.a: src/CMakeFiles/mylibrary.dir/sound_wave.cc.o
src/libmylibrary.a: src/CMakeFiles/mylibrary.dir/traingle.cc.o
src/libmylibrary.a: src/CMakeFiles/mylibrary.dir/build.make
src/libmylibrary.a: src/CMakeFiles/mylibrary.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/Users/beth/cinder_0.9.2_mac/my-projects/final-project-efineberg19/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_9) "Linking CXX static library libmylibrary.a"
	cd /Users/beth/cinder_0.9.2_mac/my-projects/final-project-efineberg19/cmake-build-debug/src && $(CMAKE_COMMAND) -P CMakeFiles/mylibrary.dir/cmake_clean_target.cmake
	cd /Users/beth/cinder_0.9.2_mac/my-projects/final-project-efineberg19/cmake-build-debug/src && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/mylibrary.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
src/CMakeFiles/mylibrary.dir/build: src/libmylibrary.a

.PHONY : src/CMakeFiles/mylibrary.dir/build

src/CMakeFiles/mylibrary.dir/clean:
	cd /Users/beth/cinder_0.9.2_mac/my-projects/final-project-efineberg19/cmake-build-debug/src && $(CMAKE_COMMAND) -P CMakeFiles/mylibrary.dir/cmake_clean.cmake
.PHONY : src/CMakeFiles/mylibrary.dir/clean

src/CMakeFiles/mylibrary.dir/depend:
	cd /Users/beth/cinder_0.9.2_mac/my-projects/final-project-efineberg19/cmake-build-debug && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /Users/beth/cinder_0.9.2_mac/my-projects/final-project-efineberg19 /Users/beth/cinder_0.9.2_mac/my-projects/final-project-efineberg19/src /Users/beth/cinder_0.9.2_mac/my-projects/final-project-efineberg19/cmake-build-debug /Users/beth/cinder_0.9.2_mac/my-projects/final-project-efineberg19/cmake-build-debug/src /Users/beth/cinder_0.9.2_mac/my-projects/final-project-efineberg19/cmake-build-debug/src/CMakeFiles/mylibrary.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : src/CMakeFiles/mylibrary.dir/depend

