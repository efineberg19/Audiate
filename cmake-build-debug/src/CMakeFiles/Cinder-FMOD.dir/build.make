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
include src/CMakeFiles/Cinder-FMOD.dir/depend.make

# Include the progress variables for this target.
include src/CMakeFiles/Cinder-FMOD.dir/progress.make

# Include the compile flags for this target's objects.
include src/CMakeFiles/Cinder-FMOD.dir/flags.make

# Object files for target Cinder-FMOD
Cinder__FMOD_OBJECTS =

# External object files for target Cinder-FMOD
Cinder__FMOD_EXTERNAL_OBJECTS =

src/libCinder-FMOD.a: src/CMakeFiles/Cinder-FMOD.dir/build.make
src/libCinder-FMOD.a: src/CMakeFiles/Cinder-FMOD.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/Users/beth/cinder_0.9.2_mac/my-projects/final-project-efineberg19/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Linking CXX static library libCinder-FMOD.a"
	cd /Users/beth/cinder_0.9.2_mac/my-projects/final-project-efineberg19/cmake-build-debug/src && $(CMAKE_COMMAND) -P CMakeFiles/Cinder-FMOD.dir/cmake_clean_target.cmake
	cd /Users/beth/cinder_0.9.2_mac/my-projects/final-project-efineberg19/cmake-build-debug/src && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/Cinder-FMOD.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
src/CMakeFiles/Cinder-FMOD.dir/build: src/libCinder-FMOD.a

.PHONY : src/CMakeFiles/Cinder-FMOD.dir/build

src/CMakeFiles/Cinder-FMOD.dir/clean:
	cd /Users/beth/cinder_0.9.2_mac/my-projects/final-project-efineberg19/cmake-build-debug/src && $(CMAKE_COMMAND) -P CMakeFiles/Cinder-FMOD.dir/cmake_clean.cmake
.PHONY : src/CMakeFiles/Cinder-FMOD.dir/clean

src/CMakeFiles/Cinder-FMOD.dir/depend:
	cd /Users/beth/cinder_0.9.2_mac/my-projects/final-project-efineberg19/cmake-build-debug && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /Users/beth/cinder_0.9.2_mac/my-projects/final-project-efineberg19 /Users/beth/cinder_0.9.2_mac/my-projects/final-project-efineberg19/src /Users/beth/cinder_0.9.2_mac/my-projects/final-project-efineberg19/cmake-build-debug /Users/beth/cinder_0.9.2_mac/my-projects/final-project-efineberg19/cmake-build-debug/src /Users/beth/cinder_0.9.2_mac/my-projects/final-project-efineberg19/cmake-build-debug/src/CMakeFiles/Cinder-FMOD.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : src/CMakeFiles/Cinder-FMOD.dir/depend

