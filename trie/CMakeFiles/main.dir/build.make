# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.7

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
CMAKE_COMMAND = /usr/bin/cmake

# The command to remove a file.
RM = /usr/bin/cmake -E remove -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /home/jon/Documents/DataStructsCpp

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/jon/Documents/DataStructsCpp

# Include any dependencies generated for this target.
include trie/CMakeFiles/main.dir/depend.make

# Include the progress variables for this target.
include trie/CMakeFiles/main.dir/progress.make

# Include the compile flags for this target's objects.
include trie/CMakeFiles/main.dir/flags.make

trie/CMakeFiles/main.dir/main.cc.o: trie/CMakeFiles/main.dir/flags.make
trie/CMakeFiles/main.dir/main.cc.o: trie/main.cc
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/jon/Documents/DataStructsCpp/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object trie/CMakeFiles/main.dir/main.cc.o"
	cd /home/jon/Documents/DataStructsCpp/trie && /usr/bin/c++   $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/main.dir/main.cc.o -c /home/jon/Documents/DataStructsCpp/trie/main.cc

trie/CMakeFiles/main.dir/main.cc.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/main.dir/main.cc.i"
	cd /home/jon/Documents/DataStructsCpp/trie && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/jon/Documents/DataStructsCpp/trie/main.cc > CMakeFiles/main.dir/main.cc.i

trie/CMakeFiles/main.dir/main.cc.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/main.dir/main.cc.s"
	cd /home/jon/Documents/DataStructsCpp/trie && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/jon/Documents/DataStructsCpp/trie/main.cc -o CMakeFiles/main.dir/main.cc.s

trie/CMakeFiles/main.dir/main.cc.o.requires:

.PHONY : trie/CMakeFiles/main.dir/main.cc.o.requires

trie/CMakeFiles/main.dir/main.cc.o.provides: trie/CMakeFiles/main.dir/main.cc.o.requires
	$(MAKE) -f trie/CMakeFiles/main.dir/build.make trie/CMakeFiles/main.dir/main.cc.o.provides.build
.PHONY : trie/CMakeFiles/main.dir/main.cc.o.provides

trie/CMakeFiles/main.dir/main.cc.o.provides.build: trie/CMakeFiles/main.dir/main.cc.o


# Object files for target main
main_OBJECTS = \
"CMakeFiles/main.dir/main.cc.o"

# External object files for target main
main_EXTERNAL_OBJECTS =

trie/main: trie/CMakeFiles/main.dir/main.cc.o
trie/main: trie/CMakeFiles/main.dir/build.make
trie/main: trie/libtrie_lib.a
trie/main: trie/CMakeFiles/main.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/jon/Documents/DataStructsCpp/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable main"
	cd /home/jon/Documents/DataStructsCpp/trie && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/main.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
trie/CMakeFiles/main.dir/build: trie/main

.PHONY : trie/CMakeFiles/main.dir/build

trie/CMakeFiles/main.dir/requires: trie/CMakeFiles/main.dir/main.cc.o.requires

.PHONY : trie/CMakeFiles/main.dir/requires

trie/CMakeFiles/main.dir/clean:
	cd /home/jon/Documents/DataStructsCpp/trie && $(CMAKE_COMMAND) -P CMakeFiles/main.dir/cmake_clean.cmake
.PHONY : trie/CMakeFiles/main.dir/clean

trie/CMakeFiles/main.dir/depend:
	cd /home/jon/Documents/DataStructsCpp && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/jon/Documents/DataStructsCpp /home/jon/Documents/DataStructsCpp/trie /home/jon/Documents/DataStructsCpp /home/jon/Documents/DataStructsCpp/trie /home/jon/Documents/DataStructsCpp/trie/CMakeFiles/main.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : trie/CMakeFiles/main.dir/depend

