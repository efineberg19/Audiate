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
CMAKE_COMMAND = /private/var/folders/8h/x9pfmm0n3pn4kl4t00gc_ww80000gn/T/AppTranslocation/DBEC2272-46CA-43B0-9A17-6A69EE8425AF/d/CLion.app/Contents/bin/cmake/mac/bin/cmake

# The command to remove a file.
RM = /private/var/folders/8h/x9pfmm0n3pn4kl4t00gc_ww80000gn/T/AppTranslocation/DBEC2272-46CA-43B0-9A17-6A69EE8425AF/d/CLion.app/Contents/bin/cmake/mac/bin/cmake -E remove -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /Users/beth/cinder_0.9.2_mac/my-projects/final-project-efineberg19

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /Users/beth/cinder_0.9.2_mac/my-projects/final-project-efineberg19/cmake-build-debug

# Include any dependencies generated for this target.
include src/CMakeFiles/soloud.dir/depend.make

# Include the progress variables for this target.
include src/CMakeFiles/soloud.dir/progress.make

# Include the compile flags for this target's objects.
include src/CMakeFiles/soloud.dir/flags.make

src/CMakeFiles/soloud.dir/example.cc.o: src/CMakeFiles/soloud.dir/flags.make
src/CMakeFiles/soloud.dir/example.cc.o: ../src/example.cc
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/beth/cinder_0.9.2_mac/my-projects/final-project-efineberg19/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object src/CMakeFiles/soloud.dir/example.cc.o"
	cd /Users/beth/cinder_0.9.2_mac/my-projects/final-project-efineberg19/cmake-build-debug/src && /Library/Developer/CommandLineTools/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/soloud.dir/example.cc.o -c /Users/beth/cinder_0.9.2_mac/my-projects/final-project-efineberg19/src/example.cc

src/CMakeFiles/soloud.dir/example.cc.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/soloud.dir/example.cc.i"
	cd /Users/beth/cinder_0.9.2_mac/my-projects/final-project-efineberg19/cmake-build-debug/src && /Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/beth/cinder_0.9.2_mac/my-projects/final-project-efineberg19/src/example.cc > CMakeFiles/soloud.dir/example.cc.i

src/CMakeFiles/soloud.dir/example.cc.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/soloud.dir/example.cc.s"
	cd /Users/beth/cinder_0.9.2_mac/my-projects/final-project-efineberg19/cmake-build-debug/src && /Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/beth/cinder_0.9.2_mac/my-projects/final-project-efineberg19/src/example.cc -o CMakeFiles/soloud.dir/example.cc.s

# Object files for target soloud
soloud_OBJECTS = \
"CMakeFiles/soloud.dir/example.cc.o"

# External object files for target soloud
soloud_EXTERNAL_OBJECTS =

src/libsoloud.a: src/CMakeFiles/soloud.dir/example.cc.o
src/libsoloud.a: src/CMakeFiles/soloud.dir/build.make
src/libsoloud.a: src/CMakeFiles/soloud.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/Users/beth/cinder_0.9.2_mac/my-projects/final-project-efineberg19/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX static library libsoloud.a"
	cd /Users/beth/cinder_0.9.2_mac/my-projects/final-project-efineberg19/cmake-build-debug/src && $(CMAKE_COMMAND) -P CMakeFiles/soloud.dir/cmake_clean_target.cmake
	cd /Users/beth/cinder_0.9.2_mac/my-projects/final-project-efineberg19/cmake-build-debug/src && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/soloud.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
src/CMakeFiles/soloud.dir/build: src/libsoloud.a

.PHONY : src/CMakeFiles/soloud.dir/build

src/CMakeFiles/soloud.dir/clean:
	cd /Users/beth/cinder_0.9.2_mac/my-projects/final-project-efineberg19/cmake-build-debug/src && $(CMAKE_COMMAND) -P CMakeFiles/soloud.dir/cmake_clean.cmake
.PHONY : src/CMakeFiles/soloud.dir/clean

src/CMakeFiles/soloud.dir/depend:
	cd /Users/beth/cinder_0.9.2_mac/my-projects/final-project-efineberg19/cmake-build-debug && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /Users/beth/cinder_0.9.2_mac/my-projects/final-project-efineberg19 /Users/beth/cinder_0.9.2_mac/my-projects/final-project-efineberg19/src /Users/beth/cinder_0.9.2_mac/my-projects/final-project-efineberg19/cmake-build-debug /Users/beth/cinder_0.9.2_mac/my-projects/final-project-efineberg19/cmake-build-debug/src /Users/beth/cinder_0.9.2_mac/my-projects/final-project-efineberg19/cmake-build-debug/src/CMakeFiles/soloud.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : src/CMakeFiles/soloud.dir/depend

