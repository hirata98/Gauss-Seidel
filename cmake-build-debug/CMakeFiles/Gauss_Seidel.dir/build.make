# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.16

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
CMAKE_COMMAND = /opt/clion-2020.1.2/bin/cmake/linux/bin/cmake

# The command to remove a file.
RM = /opt/clion-2020.1.2/bin/cmake/linux/bin/cmake -E remove -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /home/hirata/OneDrive/Documents/CN/Gauss-Seidel

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/hirata/OneDrive/Documents/CN/Gauss-Seidel/cmake-build-debug

# Include any dependencies generated for this target.
include CMakeFiles/Gauss_Seidel.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/Gauss_Seidel.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/Gauss_Seidel.dir/flags.make

CMakeFiles/Gauss_Seidel.dir/main.c.o: CMakeFiles/Gauss_Seidel.dir/flags.make
CMakeFiles/Gauss_Seidel.dir/main.c.o: ../main.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/hirata/OneDrive/Documents/CN/Gauss-Seidel/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building C object CMakeFiles/Gauss_Seidel.dir/main.c.o"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/Gauss_Seidel.dir/main.c.o   -c /home/hirata/OneDrive/Documents/CN/Gauss-Seidel/main.c

CMakeFiles/Gauss_Seidel.dir/main.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/Gauss_Seidel.dir/main.c.i"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/hirata/OneDrive/Documents/CN/Gauss-Seidel/main.c > CMakeFiles/Gauss_Seidel.dir/main.c.i

CMakeFiles/Gauss_Seidel.dir/main.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/Gauss_Seidel.dir/main.c.s"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/hirata/OneDrive/Documents/CN/Gauss-Seidel/main.c -o CMakeFiles/Gauss_Seidel.dir/main.c.s

# Object files for target Gauss_Seidel
Gauss_Seidel_OBJECTS = \
"CMakeFiles/Gauss_Seidel.dir/main.c.o"

# External object files for target Gauss_Seidel
Gauss_Seidel_EXTERNAL_OBJECTS =

Gauss_Seidel: CMakeFiles/Gauss_Seidel.dir/main.c.o
Gauss_Seidel: CMakeFiles/Gauss_Seidel.dir/build.make
Gauss_Seidel: CMakeFiles/Gauss_Seidel.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/hirata/OneDrive/Documents/CN/Gauss-Seidel/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking C executable Gauss_Seidel"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/Gauss_Seidel.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/Gauss_Seidel.dir/build: Gauss_Seidel

.PHONY : CMakeFiles/Gauss_Seidel.dir/build

CMakeFiles/Gauss_Seidel.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/Gauss_Seidel.dir/cmake_clean.cmake
.PHONY : CMakeFiles/Gauss_Seidel.dir/clean

CMakeFiles/Gauss_Seidel.dir/depend:
	cd /home/hirata/OneDrive/Documents/CN/Gauss-Seidel/cmake-build-debug && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/hirata/OneDrive/Documents/CN/Gauss-Seidel /home/hirata/OneDrive/Documents/CN/Gauss-Seidel /home/hirata/OneDrive/Documents/CN/Gauss-Seidel/cmake-build-debug /home/hirata/OneDrive/Documents/CN/Gauss-Seidel/cmake-build-debug /home/hirata/OneDrive/Documents/CN/Gauss-Seidel/cmake-build-debug/CMakeFiles/Gauss_Seidel.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/Gauss_Seidel.dir/depend

