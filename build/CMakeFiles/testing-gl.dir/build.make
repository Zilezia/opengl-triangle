# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.25

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
CMAKE_COMMAND = /usr/bin/cmake

# The command to remove a file.
RM = /usr/bin/cmake -E rm -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /home/zilezia/Documents/docs/testing-gl

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/zilezia/Documents/docs/testing-gl/build

# Include any dependencies generated for this target.
include CMakeFiles/testing-gl.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include CMakeFiles/testing-gl.dir/compiler_depend.make

# Include the progress variables for this target.
include CMakeFiles/testing-gl.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/testing-gl.dir/flags.make

CMakeFiles/testing-gl.dir/glad.c.o: CMakeFiles/testing-gl.dir/flags.make
CMakeFiles/testing-gl.dir/glad.c.o: /home/zilezia/Documents/docs/testing-gl/glad.c
CMakeFiles/testing-gl.dir/glad.c.o: CMakeFiles/testing-gl.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/zilezia/Documents/docs/testing-gl/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building C object CMakeFiles/testing-gl.dir/glad.c.o"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -MD -MT CMakeFiles/testing-gl.dir/glad.c.o -MF CMakeFiles/testing-gl.dir/glad.c.o.d -o CMakeFiles/testing-gl.dir/glad.c.o -c /home/zilezia/Documents/docs/testing-gl/glad.c

CMakeFiles/testing-gl.dir/glad.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/testing-gl.dir/glad.c.i"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/zilezia/Documents/docs/testing-gl/glad.c > CMakeFiles/testing-gl.dir/glad.c.i

CMakeFiles/testing-gl.dir/glad.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/testing-gl.dir/glad.c.s"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/zilezia/Documents/docs/testing-gl/glad.c -o CMakeFiles/testing-gl.dir/glad.c.s

CMakeFiles/testing-gl.dir/main.cpp.o: CMakeFiles/testing-gl.dir/flags.make
CMakeFiles/testing-gl.dir/main.cpp.o: /home/zilezia/Documents/docs/testing-gl/main.cpp
CMakeFiles/testing-gl.dir/main.cpp.o: CMakeFiles/testing-gl.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/zilezia/Documents/docs/testing-gl/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building CXX object CMakeFiles/testing-gl.dir/main.cpp.o"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/testing-gl.dir/main.cpp.o -MF CMakeFiles/testing-gl.dir/main.cpp.o.d -o CMakeFiles/testing-gl.dir/main.cpp.o -c /home/zilezia/Documents/docs/testing-gl/main.cpp

CMakeFiles/testing-gl.dir/main.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/testing-gl.dir/main.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/zilezia/Documents/docs/testing-gl/main.cpp > CMakeFiles/testing-gl.dir/main.cpp.i

CMakeFiles/testing-gl.dir/main.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/testing-gl.dir/main.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/zilezia/Documents/docs/testing-gl/main.cpp -o CMakeFiles/testing-gl.dir/main.cpp.s

# Object files for target testing-gl
testing__gl_OBJECTS = \
"CMakeFiles/testing-gl.dir/glad.c.o" \
"CMakeFiles/testing-gl.dir/main.cpp.o"

# External object files for target testing-gl
testing__gl_EXTERNAL_OBJECTS =

testing-gl: CMakeFiles/testing-gl.dir/glad.c.o
testing-gl: CMakeFiles/testing-gl.dir/main.cpp.o
testing-gl: CMakeFiles/testing-gl.dir/build.make
testing-gl: CMakeFiles/testing-gl.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/zilezia/Documents/docs/testing-gl/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Linking CXX executable testing-gl"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/testing-gl.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/testing-gl.dir/build: testing-gl
.PHONY : CMakeFiles/testing-gl.dir/build

CMakeFiles/testing-gl.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/testing-gl.dir/cmake_clean.cmake
.PHONY : CMakeFiles/testing-gl.dir/clean

CMakeFiles/testing-gl.dir/depend:
	cd /home/zilezia/Documents/docs/testing-gl/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/zilezia/Documents/docs/testing-gl /home/zilezia/Documents/docs/testing-gl /home/zilezia/Documents/docs/testing-gl/build /home/zilezia/Documents/docs/testing-gl/build /home/zilezia/Documents/docs/testing-gl/build/CMakeFiles/testing-gl.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/testing-gl.dir/depend

