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
include tests/libtest/CMakeFiles/chkhostname.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include tests/libtest/CMakeFiles/chkhostname.dir/compiler_depend.make

# Include the progress variables for this target.
include tests/libtest/CMakeFiles/chkhostname.dir/progress.make

# Include the compile flags for this target's objects.
include tests/libtest/CMakeFiles/chkhostname.dir/flags.make

tests/libtest/CMakeFiles/chkhostname.dir/chkhostname.c.o: tests/libtest/CMakeFiles/chkhostname.dir/flags.make
tests/libtest/CMakeFiles/chkhostname.dir/chkhostname.c.o: tests/libtest/chkhostname.c
tests/libtest/CMakeFiles/chkhostname.dir/chkhostname.c.o: tests/libtest/CMakeFiles/chkhostname.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/pauliusrag/Desktop/git/stocks-analysis-tool/libs/curl/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building C object tests/libtest/CMakeFiles/chkhostname.dir/chkhostname.c.o"
	cd /home/pauliusrag/Desktop/git/stocks-analysis-tool/libs/curl/tests/libtest && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -MD -MT tests/libtest/CMakeFiles/chkhostname.dir/chkhostname.c.o -MF CMakeFiles/chkhostname.dir/chkhostname.c.o.d -o CMakeFiles/chkhostname.dir/chkhostname.c.o -c /home/pauliusrag/Desktop/git/stocks-analysis-tool/libs/curl/tests/libtest/chkhostname.c

tests/libtest/CMakeFiles/chkhostname.dir/chkhostname.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/chkhostname.dir/chkhostname.c.i"
	cd /home/pauliusrag/Desktop/git/stocks-analysis-tool/libs/curl/tests/libtest && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/pauliusrag/Desktop/git/stocks-analysis-tool/libs/curl/tests/libtest/chkhostname.c > CMakeFiles/chkhostname.dir/chkhostname.c.i

tests/libtest/CMakeFiles/chkhostname.dir/chkhostname.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/chkhostname.dir/chkhostname.c.s"
	cd /home/pauliusrag/Desktop/git/stocks-analysis-tool/libs/curl/tests/libtest && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/pauliusrag/Desktop/git/stocks-analysis-tool/libs/curl/tests/libtest/chkhostname.c -o CMakeFiles/chkhostname.dir/chkhostname.c.s

tests/libtest/CMakeFiles/chkhostname.dir/__/__/lib/curl_gethostname.c.o: tests/libtest/CMakeFiles/chkhostname.dir/flags.make
tests/libtest/CMakeFiles/chkhostname.dir/__/__/lib/curl_gethostname.c.o: lib/curl_gethostname.c
tests/libtest/CMakeFiles/chkhostname.dir/__/__/lib/curl_gethostname.c.o: tests/libtest/CMakeFiles/chkhostname.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/pauliusrag/Desktop/git/stocks-analysis-tool/libs/curl/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building C object tests/libtest/CMakeFiles/chkhostname.dir/__/__/lib/curl_gethostname.c.o"
	cd /home/pauliusrag/Desktop/git/stocks-analysis-tool/libs/curl/tests/libtest && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -MD -MT tests/libtest/CMakeFiles/chkhostname.dir/__/__/lib/curl_gethostname.c.o -MF CMakeFiles/chkhostname.dir/__/__/lib/curl_gethostname.c.o.d -o CMakeFiles/chkhostname.dir/__/__/lib/curl_gethostname.c.o -c /home/pauliusrag/Desktop/git/stocks-analysis-tool/libs/curl/lib/curl_gethostname.c

tests/libtest/CMakeFiles/chkhostname.dir/__/__/lib/curl_gethostname.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/chkhostname.dir/__/__/lib/curl_gethostname.c.i"
	cd /home/pauliusrag/Desktop/git/stocks-analysis-tool/libs/curl/tests/libtest && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/pauliusrag/Desktop/git/stocks-analysis-tool/libs/curl/lib/curl_gethostname.c > CMakeFiles/chkhostname.dir/__/__/lib/curl_gethostname.c.i

tests/libtest/CMakeFiles/chkhostname.dir/__/__/lib/curl_gethostname.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/chkhostname.dir/__/__/lib/curl_gethostname.c.s"
	cd /home/pauliusrag/Desktop/git/stocks-analysis-tool/libs/curl/tests/libtest && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/pauliusrag/Desktop/git/stocks-analysis-tool/libs/curl/lib/curl_gethostname.c -o CMakeFiles/chkhostname.dir/__/__/lib/curl_gethostname.c.s

# Object files for target chkhostname
chkhostname_OBJECTS = \
"CMakeFiles/chkhostname.dir/chkhostname.c.o" \
"CMakeFiles/chkhostname.dir/__/__/lib/curl_gethostname.c.o"

# External object files for target chkhostname
chkhostname_EXTERNAL_OBJECTS =

tests/libtest/chkhostname: tests/libtest/CMakeFiles/chkhostname.dir/chkhostname.c.o
tests/libtest/chkhostname: tests/libtest/CMakeFiles/chkhostname.dir/__/__/lib/curl_gethostname.c.o
tests/libtest/chkhostname: tests/libtest/CMakeFiles/chkhostname.dir/build.make
tests/libtest/chkhostname: lib/libcurl.so.4.8.0
tests/libtest/chkhostname: /usr/lib/x86_64-linux-gnu/libssl.so
tests/libtest/chkhostname: /usr/lib/x86_64-linux-gnu/libcrypto.so
tests/libtest/chkhostname: tests/libtest/CMakeFiles/chkhostname.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/pauliusrag/Desktop/git/stocks-analysis-tool/libs/curl/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Linking C executable chkhostname"
	cd /home/pauliusrag/Desktop/git/stocks-analysis-tool/libs/curl/tests/libtest && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/chkhostname.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
tests/libtest/CMakeFiles/chkhostname.dir/build: tests/libtest/chkhostname
.PHONY : tests/libtest/CMakeFiles/chkhostname.dir/build

tests/libtest/CMakeFiles/chkhostname.dir/clean:
	cd /home/pauliusrag/Desktop/git/stocks-analysis-tool/libs/curl/tests/libtest && $(CMAKE_COMMAND) -P CMakeFiles/chkhostname.dir/cmake_clean.cmake
.PHONY : tests/libtest/CMakeFiles/chkhostname.dir/clean

tests/libtest/CMakeFiles/chkhostname.dir/depend:
	cd /home/pauliusrag/Desktop/git/stocks-analysis-tool/libs/curl && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/pauliusrag/Desktop/git/stocks-analysis-tool/libs/curl /home/pauliusrag/Desktop/git/stocks-analysis-tool/libs/curl/tests/libtest /home/pauliusrag/Desktop/git/stocks-analysis-tool/libs/curl /home/pauliusrag/Desktop/git/stocks-analysis-tool/libs/curl/tests/libtest /home/pauliusrag/Desktop/git/stocks-analysis-tool/libs/curl/tests/libtest/CMakeFiles/chkhostname.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : tests/libtest/CMakeFiles/chkhostname.dir/depend

