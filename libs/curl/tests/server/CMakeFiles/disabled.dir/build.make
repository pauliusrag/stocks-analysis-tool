# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.26

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
CMAKE_COMMAND = /snap/cmake/1299/bin/cmake

# The command to remove a file.
RM = /snap/cmake/1299/bin/cmake -E rm -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /home/pauliusrag/Desktop/git/stocks-analysis-tool/libs/curl

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/pauliusrag/Desktop/git/stocks-analysis-tool/libs/curl

# Include any dependencies generated for this target.
include tests/server/CMakeFiles/disabled.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include tests/server/CMakeFiles/disabled.dir/compiler_depend.make

# Include the progress variables for this target.
include tests/server/CMakeFiles/disabled.dir/progress.make

# Include the compile flags for this target's objects.
include tests/server/CMakeFiles/disabled.dir/flags.make

tests/server/CMakeFiles/disabled.dir/disabled.c.o: tests/server/CMakeFiles/disabled.dir/flags.make
tests/server/CMakeFiles/disabled.dir/disabled.c.o: tests/server/disabled.c
tests/server/CMakeFiles/disabled.dir/disabled.c.o: tests/server/CMakeFiles/disabled.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/pauliusrag/Desktop/git/stocks-analysis-tool/libs/curl/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building C object tests/server/CMakeFiles/disabled.dir/disabled.c.o"
	cd /home/pauliusrag/Desktop/git/stocks-analysis-tool/libs/curl/tests/server && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -MD -MT tests/server/CMakeFiles/disabled.dir/disabled.c.o -MF CMakeFiles/disabled.dir/disabled.c.o.d -o CMakeFiles/disabled.dir/disabled.c.o -c /home/pauliusrag/Desktop/git/stocks-analysis-tool/libs/curl/tests/server/disabled.c

tests/server/CMakeFiles/disabled.dir/disabled.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/disabled.dir/disabled.c.i"
	cd /home/pauliusrag/Desktop/git/stocks-analysis-tool/libs/curl/tests/server && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/pauliusrag/Desktop/git/stocks-analysis-tool/libs/curl/tests/server/disabled.c > CMakeFiles/disabled.dir/disabled.c.i

tests/server/CMakeFiles/disabled.dir/disabled.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/disabled.dir/disabled.c.s"
	cd /home/pauliusrag/Desktop/git/stocks-analysis-tool/libs/curl/tests/server && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/pauliusrag/Desktop/git/stocks-analysis-tool/libs/curl/tests/server/disabled.c -o CMakeFiles/disabled.dir/disabled.c.s

# Object files for target disabled
disabled_OBJECTS = \
"CMakeFiles/disabled.dir/disabled.c.o"

# External object files for target disabled
disabled_EXTERNAL_OBJECTS =

tests/server/disabled: tests/server/CMakeFiles/disabled.dir/disabled.c.o
tests/server/disabled: tests/server/CMakeFiles/disabled.dir/build.make
tests/server/disabled: /usr/lib/x86_64-linux-gnu/libssl.so
tests/server/disabled: /usr/lib/x86_64-linux-gnu/libcrypto.so
tests/server/disabled: tests/server/CMakeFiles/disabled.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/pauliusrag/Desktop/git/stocks-analysis-tool/libs/curl/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking C executable disabled"
	cd /home/pauliusrag/Desktop/git/stocks-analysis-tool/libs/curl/tests/server && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/disabled.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
tests/server/CMakeFiles/disabled.dir/build: tests/server/disabled
.PHONY : tests/server/CMakeFiles/disabled.dir/build

tests/server/CMakeFiles/disabled.dir/clean:
	cd /home/pauliusrag/Desktop/git/stocks-analysis-tool/libs/curl/tests/server && $(CMAKE_COMMAND) -P CMakeFiles/disabled.dir/cmake_clean.cmake
.PHONY : tests/server/CMakeFiles/disabled.dir/clean

tests/server/CMakeFiles/disabled.dir/depend:
	cd /home/pauliusrag/Desktop/git/stocks-analysis-tool/libs/curl && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/pauliusrag/Desktop/git/stocks-analysis-tool/libs/curl /home/pauliusrag/Desktop/git/stocks-analysis-tool/libs/curl/tests/server /home/pauliusrag/Desktop/git/stocks-analysis-tool/libs/curl /home/pauliusrag/Desktop/git/stocks-analysis-tool/libs/curl/tests/server /home/pauliusrag/Desktop/git/stocks-analysis-tool/libs/curl/tests/server/CMakeFiles/disabled.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : tests/server/CMakeFiles/disabled.dir/depend

