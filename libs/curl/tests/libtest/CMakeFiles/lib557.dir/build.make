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
include tests/libtest/CMakeFiles/lib557.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include tests/libtest/CMakeFiles/lib557.dir/compiler_depend.make

# Include the progress variables for this target.
include tests/libtest/CMakeFiles/lib557.dir/progress.make

# Include the compile flags for this target's objects.
include tests/libtest/CMakeFiles/lib557.dir/flags.make

tests/libtest/CMakeFiles/lib557.dir/lib557.c.o: tests/libtest/CMakeFiles/lib557.dir/flags.make
tests/libtest/CMakeFiles/lib557.dir/lib557.c.o: tests/libtest/lib557.c
tests/libtest/CMakeFiles/lib557.dir/lib557.c.o: tests/libtest/CMakeFiles/lib557.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/pauliusrag/Desktop/git/stocks-analysis-tool/libs/curl/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building C object tests/libtest/CMakeFiles/lib557.dir/lib557.c.o"
	cd /home/pauliusrag/Desktop/git/stocks-analysis-tool/libs/curl/tests/libtest && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -MD -MT tests/libtest/CMakeFiles/lib557.dir/lib557.c.o -MF CMakeFiles/lib557.dir/lib557.c.o.d -o CMakeFiles/lib557.dir/lib557.c.o -c /home/pauliusrag/Desktop/git/stocks-analysis-tool/libs/curl/tests/libtest/lib557.c

tests/libtest/CMakeFiles/lib557.dir/lib557.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/lib557.dir/lib557.c.i"
	cd /home/pauliusrag/Desktop/git/stocks-analysis-tool/libs/curl/tests/libtest && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/pauliusrag/Desktop/git/stocks-analysis-tool/libs/curl/tests/libtest/lib557.c > CMakeFiles/lib557.dir/lib557.c.i

tests/libtest/CMakeFiles/lib557.dir/lib557.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/lib557.dir/lib557.c.s"
	cd /home/pauliusrag/Desktop/git/stocks-analysis-tool/libs/curl/tests/libtest && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/pauliusrag/Desktop/git/stocks-analysis-tool/libs/curl/tests/libtest/lib557.c -o CMakeFiles/lib557.dir/lib557.c.s

tests/libtest/CMakeFiles/lib557.dir/__/__/lib/timediff.c.o: tests/libtest/CMakeFiles/lib557.dir/flags.make
tests/libtest/CMakeFiles/lib557.dir/__/__/lib/timediff.c.o: lib/timediff.c
tests/libtest/CMakeFiles/lib557.dir/__/__/lib/timediff.c.o: tests/libtest/CMakeFiles/lib557.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/pauliusrag/Desktop/git/stocks-analysis-tool/libs/curl/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building C object tests/libtest/CMakeFiles/lib557.dir/__/__/lib/timediff.c.o"
	cd /home/pauliusrag/Desktop/git/stocks-analysis-tool/libs/curl/tests/libtest && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -MD -MT tests/libtest/CMakeFiles/lib557.dir/__/__/lib/timediff.c.o -MF CMakeFiles/lib557.dir/__/__/lib/timediff.c.o.d -o CMakeFiles/lib557.dir/__/__/lib/timediff.c.o -c /home/pauliusrag/Desktop/git/stocks-analysis-tool/libs/curl/lib/timediff.c

tests/libtest/CMakeFiles/lib557.dir/__/__/lib/timediff.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/lib557.dir/__/__/lib/timediff.c.i"
	cd /home/pauliusrag/Desktop/git/stocks-analysis-tool/libs/curl/tests/libtest && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/pauliusrag/Desktop/git/stocks-analysis-tool/libs/curl/lib/timediff.c > CMakeFiles/lib557.dir/__/__/lib/timediff.c.i

tests/libtest/CMakeFiles/lib557.dir/__/__/lib/timediff.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/lib557.dir/__/__/lib/timediff.c.s"
	cd /home/pauliusrag/Desktop/git/stocks-analysis-tool/libs/curl/tests/libtest && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/pauliusrag/Desktop/git/stocks-analysis-tool/libs/curl/lib/timediff.c -o CMakeFiles/lib557.dir/__/__/lib/timediff.c.s

tests/libtest/CMakeFiles/lib557.dir/first.c.o: tests/libtest/CMakeFiles/lib557.dir/flags.make
tests/libtest/CMakeFiles/lib557.dir/first.c.o: tests/libtest/first.c
tests/libtest/CMakeFiles/lib557.dir/first.c.o: tests/libtest/CMakeFiles/lib557.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/pauliusrag/Desktop/git/stocks-analysis-tool/libs/curl/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Building C object tests/libtest/CMakeFiles/lib557.dir/first.c.o"
	cd /home/pauliusrag/Desktop/git/stocks-analysis-tool/libs/curl/tests/libtest && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -MD -MT tests/libtest/CMakeFiles/lib557.dir/first.c.o -MF CMakeFiles/lib557.dir/first.c.o.d -o CMakeFiles/lib557.dir/first.c.o -c /home/pauliusrag/Desktop/git/stocks-analysis-tool/libs/curl/tests/libtest/first.c

tests/libtest/CMakeFiles/lib557.dir/first.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/lib557.dir/first.c.i"
	cd /home/pauliusrag/Desktop/git/stocks-analysis-tool/libs/curl/tests/libtest && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/pauliusrag/Desktop/git/stocks-analysis-tool/libs/curl/tests/libtest/first.c > CMakeFiles/lib557.dir/first.c.i

tests/libtest/CMakeFiles/lib557.dir/first.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/lib557.dir/first.c.s"
	cd /home/pauliusrag/Desktop/git/stocks-analysis-tool/libs/curl/tests/libtest && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/pauliusrag/Desktop/git/stocks-analysis-tool/libs/curl/tests/libtest/first.c -o CMakeFiles/lib557.dir/first.c.s

# Object files for target lib557
lib557_OBJECTS = \
"CMakeFiles/lib557.dir/lib557.c.o" \
"CMakeFiles/lib557.dir/__/__/lib/timediff.c.o" \
"CMakeFiles/lib557.dir/first.c.o"

# External object files for target lib557
lib557_EXTERNAL_OBJECTS =

tests/libtest/lib557: tests/libtest/CMakeFiles/lib557.dir/lib557.c.o
tests/libtest/lib557: tests/libtest/CMakeFiles/lib557.dir/__/__/lib/timediff.c.o
tests/libtest/lib557: tests/libtest/CMakeFiles/lib557.dir/first.c.o
tests/libtest/lib557: tests/libtest/CMakeFiles/lib557.dir/build.make
tests/libtest/lib557: lib/libcurl.so.4.8.0
tests/libtest/lib557: /usr/lib/x86_64-linux-gnu/libssl.so
tests/libtest/lib557: /usr/lib/x86_64-linux-gnu/libcrypto.so
tests/libtest/lib557: tests/libtest/CMakeFiles/lib557.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/pauliusrag/Desktop/git/stocks-analysis-tool/libs/curl/CMakeFiles --progress-num=$(CMAKE_PROGRESS_4) "Linking C executable lib557"
	cd /home/pauliusrag/Desktop/git/stocks-analysis-tool/libs/curl/tests/libtest && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/lib557.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
tests/libtest/CMakeFiles/lib557.dir/build: tests/libtest/lib557
.PHONY : tests/libtest/CMakeFiles/lib557.dir/build

tests/libtest/CMakeFiles/lib557.dir/clean:
	cd /home/pauliusrag/Desktop/git/stocks-analysis-tool/libs/curl/tests/libtest && $(CMAKE_COMMAND) -P CMakeFiles/lib557.dir/cmake_clean.cmake
.PHONY : tests/libtest/CMakeFiles/lib557.dir/clean

tests/libtest/CMakeFiles/lib557.dir/depend:
	cd /home/pauliusrag/Desktop/git/stocks-analysis-tool/libs/curl && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/pauliusrag/Desktop/git/stocks-analysis-tool/libs/curl /home/pauliusrag/Desktop/git/stocks-analysis-tool/libs/curl/tests/libtest /home/pauliusrag/Desktop/git/stocks-analysis-tool/libs/curl /home/pauliusrag/Desktop/git/stocks-analysis-tool/libs/curl/tests/libtest /home/pauliusrag/Desktop/git/stocks-analysis-tool/libs/curl/tests/libtest/CMakeFiles/lib557.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : tests/libtest/CMakeFiles/lib557.dir/depend

