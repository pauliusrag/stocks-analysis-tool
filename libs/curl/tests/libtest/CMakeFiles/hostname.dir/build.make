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
include tests/libtest/CMakeFiles/hostname.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include tests/libtest/CMakeFiles/hostname.dir/compiler_depend.make

# Include the progress variables for this target.
include tests/libtest/CMakeFiles/hostname.dir/progress.make

# Include the compile flags for this target's objects.
include tests/libtest/CMakeFiles/hostname.dir/flags.make

tests/libtest/CMakeFiles/hostname.dir/sethostname.c.o: tests/libtest/CMakeFiles/hostname.dir/flags.make
tests/libtest/CMakeFiles/hostname.dir/sethostname.c.o: tests/libtest/sethostname.c
tests/libtest/CMakeFiles/hostname.dir/sethostname.c.o: tests/libtest/CMakeFiles/hostname.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/pauliusrag/Desktop/git/stocks-analysis-tool/libs/curl/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building C object tests/libtest/CMakeFiles/hostname.dir/sethostname.c.o"
	cd /home/pauliusrag/Desktop/git/stocks-analysis-tool/libs/curl/tests/libtest && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -MD -MT tests/libtest/CMakeFiles/hostname.dir/sethostname.c.o -MF CMakeFiles/hostname.dir/sethostname.c.o.d -o CMakeFiles/hostname.dir/sethostname.c.o -c /home/pauliusrag/Desktop/git/stocks-analysis-tool/libs/curl/tests/libtest/sethostname.c

tests/libtest/CMakeFiles/hostname.dir/sethostname.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/hostname.dir/sethostname.c.i"
	cd /home/pauliusrag/Desktop/git/stocks-analysis-tool/libs/curl/tests/libtest && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/pauliusrag/Desktop/git/stocks-analysis-tool/libs/curl/tests/libtest/sethostname.c > CMakeFiles/hostname.dir/sethostname.c.i

tests/libtest/CMakeFiles/hostname.dir/sethostname.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/hostname.dir/sethostname.c.s"
	cd /home/pauliusrag/Desktop/git/stocks-analysis-tool/libs/curl/tests/libtest && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/pauliusrag/Desktop/git/stocks-analysis-tool/libs/curl/tests/libtest/sethostname.c -o CMakeFiles/hostname.dir/sethostname.c.s

# Object files for target hostname
hostname_OBJECTS = \
"CMakeFiles/hostname.dir/sethostname.c.o"

# External object files for target hostname
hostname_EXTERNAL_OBJECTS =

tests/libtest/.libs/libhostname.so: tests/libtest/CMakeFiles/hostname.dir/sethostname.c.o
tests/libtest/.libs/libhostname.so: tests/libtest/CMakeFiles/hostname.dir/build.make
tests/libtest/.libs/libhostname.so: tests/libtest/CMakeFiles/hostname.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/pauliusrag/Desktop/git/stocks-analysis-tool/libs/curl/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking C shared module .libs/libhostname.so"
	cd /home/pauliusrag/Desktop/git/stocks-analysis-tool/libs/curl/tests/libtest && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/hostname.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
tests/libtest/CMakeFiles/hostname.dir/build: tests/libtest/.libs/libhostname.so
.PHONY : tests/libtest/CMakeFiles/hostname.dir/build

tests/libtest/CMakeFiles/hostname.dir/clean:
	cd /home/pauliusrag/Desktop/git/stocks-analysis-tool/libs/curl/tests/libtest && $(CMAKE_COMMAND) -P CMakeFiles/hostname.dir/cmake_clean.cmake
.PHONY : tests/libtest/CMakeFiles/hostname.dir/clean

tests/libtest/CMakeFiles/hostname.dir/depend:
	cd /home/pauliusrag/Desktop/git/stocks-analysis-tool/libs/curl && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/pauliusrag/Desktop/git/stocks-analysis-tool/libs/curl /home/pauliusrag/Desktop/git/stocks-analysis-tool/libs/curl/tests/libtest /home/pauliusrag/Desktop/git/stocks-analysis-tool/libs/curl /home/pauliusrag/Desktop/git/stocks-analysis-tool/libs/curl/tests/libtest /home/pauliusrag/Desktop/git/stocks-analysis-tool/libs/curl/tests/libtest/CMakeFiles/hostname.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : tests/libtest/CMakeFiles/hostname.dir/depend

