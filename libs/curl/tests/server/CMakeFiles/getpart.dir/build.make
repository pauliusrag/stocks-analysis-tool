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
include tests/server/CMakeFiles/getpart.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include tests/server/CMakeFiles/getpart.dir/compiler_depend.make

# Include the progress variables for this target.
include tests/server/CMakeFiles/getpart.dir/progress.make

# Include the compile flags for this target's objects.
include tests/server/CMakeFiles/getpart.dir/flags.make

tests/server/CMakeFiles/getpart.dir/__/__/lib/mprintf.c.o: tests/server/CMakeFiles/getpart.dir/flags.make
tests/server/CMakeFiles/getpart.dir/__/__/lib/mprintf.c.o: lib/mprintf.c
tests/server/CMakeFiles/getpart.dir/__/__/lib/mprintf.c.o: tests/server/CMakeFiles/getpart.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/pauliusrag/Desktop/git/stocks-analysis-tool/libs/curl/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building C object tests/server/CMakeFiles/getpart.dir/__/__/lib/mprintf.c.o"
	cd /home/pauliusrag/Desktop/git/stocks-analysis-tool/libs/curl/tests/server && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -MD -MT tests/server/CMakeFiles/getpart.dir/__/__/lib/mprintf.c.o -MF CMakeFiles/getpart.dir/__/__/lib/mprintf.c.o.d -o CMakeFiles/getpart.dir/__/__/lib/mprintf.c.o -c /home/pauliusrag/Desktop/git/stocks-analysis-tool/libs/curl/lib/mprintf.c

tests/server/CMakeFiles/getpart.dir/__/__/lib/mprintf.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/getpart.dir/__/__/lib/mprintf.c.i"
	cd /home/pauliusrag/Desktop/git/stocks-analysis-tool/libs/curl/tests/server && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/pauliusrag/Desktop/git/stocks-analysis-tool/libs/curl/lib/mprintf.c > CMakeFiles/getpart.dir/__/__/lib/mprintf.c.i

tests/server/CMakeFiles/getpart.dir/__/__/lib/mprintf.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/getpart.dir/__/__/lib/mprintf.c.s"
	cd /home/pauliusrag/Desktop/git/stocks-analysis-tool/libs/curl/tests/server && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/pauliusrag/Desktop/git/stocks-analysis-tool/libs/curl/lib/mprintf.c -o CMakeFiles/getpart.dir/__/__/lib/mprintf.c.s

tests/server/CMakeFiles/getpart.dir/__/__/lib/nonblock.c.o: tests/server/CMakeFiles/getpart.dir/flags.make
tests/server/CMakeFiles/getpart.dir/__/__/lib/nonblock.c.o: lib/nonblock.c
tests/server/CMakeFiles/getpart.dir/__/__/lib/nonblock.c.o: tests/server/CMakeFiles/getpart.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/pauliusrag/Desktop/git/stocks-analysis-tool/libs/curl/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building C object tests/server/CMakeFiles/getpart.dir/__/__/lib/nonblock.c.o"
	cd /home/pauliusrag/Desktop/git/stocks-analysis-tool/libs/curl/tests/server && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -MD -MT tests/server/CMakeFiles/getpart.dir/__/__/lib/nonblock.c.o -MF CMakeFiles/getpart.dir/__/__/lib/nonblock.c.o.d -o CMakeFiles/getpart.dir/__/__/lib/nonblock.c.o -c /home/pauliusrag/Desktop/git/stocks-analysis-tool/libs/curl/lib/nonblock.c

tests/server/CMakeFiles/getpart.dir/__/__/lib/nonblock.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/getpart.dir/__/__/lib/nonblock.c.i"
	cd /home/pauliusrag/Desktop/git/stocks-analysis-tool/libs/curl/tests/server && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/pauliusrag/Desktop/git/stocks-analysis-tool/libs/curl/lib/nonblock.c > CMakeFiles/getpart.dir/__/__/lib/nonblock.c.i

tests/server/CMakeFiles/getpart.dir/__/__/lib/nonblock.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/getpart.dir/__/__/lib/nonblock.c.s"
	cd /home/pauliusrag/Desktop/git/stocks-analysis-tool/libs/curl/tests/server && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/pauliusrag/Desktop/git/stocks-analysis-tool/libs/curl/lib/nonblock.c -o CMakeFiles/getpart.dir/__/__/lib/nonblock.c.s

tests/server/CMakeFiles/getpart.dir/__/__/lib/strtoofft.c.o: tests/server/CMakeFiles/getpart.dir/flags.make
tests/server/CMakeFiles/getpart.dir/__/__/lib/strtoofft.c.o: lib/strtoofft.c
tests/server/CMakeFiles/getpart.dir/__/__/lib/strtoofft.c.o: tests/server/CMakeFiles/getpart.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/pauliusrag/Desktop/git/stocks-analysis-tool/libs/curl/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Building C object tests/server/CMakeFiles/getpart.dir/__/__/lib/strtoofft.c.o"
	cd /home/pauliusrag/Desktop/git/stocks-analysis-tool/libs/curl/tests/server && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -MD -MT tests/server/CMakeFiles/getpart.dir/__/__/lib/strtoofft.c.o -MF CMakeFiles/getpart.dir/__/__/lib/strtoofft.c.o.d -o CMakeFiles/getpart.dir/__/__/lib/strtoofft.c.o -c /home/pauliusrag/Desktop/git/stocks-analysis-tool/libs/curl/lib/strtoofft.c

tests/server/CMakeFiles/getpart.dir/__/__/lib/strtoofft.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/getpart.dir/__/__/lib/strtoofft.c.i"
	cd /home/pauliusrag/Desktop/git/stocks-analysis-tool/libs/curl/tests/server && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/pauliusrag/Desktop/git/stocks-analysis-tool/libs/curl/lib/strtoofft.c > CMakeFiles/getpart.dir/__/__/lib/strtoofft.c.i

tests/server/CMakeFiles/getpart.dir/__/__/lib/strtoofft.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/getpart.dir/__/__/lib/strtoofft.c.s"
	cd /home/pauliusrag/Desktop/git/stocks-analysis-tool/libs/curl/tests/server && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/pauliusrag/Desktop/git/stocks-analysis-tool/libs/curl/lib/strtoofft.c -o CMakeFiles/getpart.dir/__/__/lib/strtoofft.c.s

tests/server/CMakeFiles/getpart.dir/__/__/lib/warnless.c.o: tests/server/CMakeFiles/getpart.dir/flags.make
tests/server/CMakeFiles/getpart.dir/__/__/lib/warnless.c.o: lib/warnless.c
tests/server/CMakeFiles/getpart.dir/__/__/lib/warnless.c.o: tests/server/CMakeFiles/getpart.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/pauliusrag/Desktop/git/stocks-analysis-tool/libs/curl/CMakeFiles --progress-num=$(CMAKE_PROGRESS_4) "Building C object tests/server/CMakeFiles/getpart.dir/__/__/lib/warnless.c.o"
	cd /home/pauliusrag/Desktop/git/stocks-analysis-tool/libs/curl/tests/server && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -MD -MT tests/server/CMakeFiles/getpart.dir/__/__/lib/warnless.c.o -MF CMakeFiles/getpart.dir/__/__/lib/warnless.c.o.d -o CMakeFiles/getpart.dir/__/__/lib/warnless.c.o -c /home/pauliusrag/Desktop/git/stocks-analysis-tool/libs/curl/lib/warnless.c

tests/server/CMakeFiles/getpart.dir/__/__/lib/warnless.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/getpart.dir/__/__/lib/warnless.c.i"
	cd /home/pauliusrag/Desktop/git/stocks-analysis-tool/libs/curl/tests/server && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/pauliusrag/Desktop/git/stocks-analysis-tool/libs/curl/lib/warnless.c > CMakeFiles/getpart.dir/__/__/lib/warnless.c.i

tests/server/CMakeFiles/getpart.dir/__/__/lib/warnless.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/getpart.dir/__/__/lib/warnless.c.s"
	cd /home/pauliusrag/Desktop/git/stocks-analysis-tool/libs/curl/tests/server && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/pauliusrag/Desktop/git/stocks-analysis-tool/libs/curl/lib/warnless.c -o CMakeFiles/getpart.dir/__/__/lib/warnless.c.s

tests/server/CMakeFiles/getpart.dir/__/__/lib/timediff.c.o: tests/server/CMakeFiles/getpart.dir/flags.make
tests/server/CMakeFiles/getpart.dir/__/__/lib/timediff.c.o: lib/timediff.c
tests/server/CMakeFiles/getpart.dir/__/__/lib/timediff.c.o: tests/server/CMakeFiles/getpart.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/pauliusrag/Desktop/git/stocks-analysis-tool/libs/curl/CMakeFiles --progress-num=$(CMAKE_PROGRESS_5) "Building C object tests/server/CMakeFiles/getpart.dir/__/__/lib/timediff.c.o"
	cd /home/pauliusrag/Desktop/git/stocks-analysis-tool/libs/curl/tests/server && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -MD -MT tests/server/CMakeFiles/getpart.dir/__/__/lib/timediff.c.o -MF CMakeFiles/getpart.dir/__/__/lib/timediff.c.o.d -o CMakeFiles/getpart.dir/__/__/lib/timediff.c.o -c /home/pauliusrag/Desktop/git/stocks-analysis-tool/libs/curl/lib/timediff.c

tests/server/CMakeFiles/getpart.dir/__/__/lib/timediff.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/getpart.dir/__/__/lib/timediff.c.i"
	cd /home/pauliusrag/Desktop/git/stocks-analysis-tool/libs/curl/tests/server && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/pauliusrag/Desktop/git/stocks-analysis-tool/libs/curl/lib/timediff.c > CMakeFiles/getpart.dir/__/__/lib/timediff.c.i

tests/server/CMakeFiles/getpart.dir/__/__/lib/timediff.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/getpart.dir/__/__/lib/timediff.c.s"
	cd /home/pauliusrag/Desktop/git/stocks-analysis-tool/libs/curl/tests/server && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/pauliusrag/Desktop/git/stocks-analysis-tool/libs/curl/lib/timediff.c -o CMakeFiles/getpart.dir/__/__/lib/timediff.c.s

tests/server/CMakeFiles/getpart.dir/__/__/lib/dynbuf.c.o: tests/server/CMakeFiles/getpart.dir/flags.make
tests/server/CMakeFiles/getpart.dir/__/__/lib/dynbuf.c.o: lib/dynbuf.c
tests/server/CMakeFiles/getpart.dir/__/__/lib/dynbuf.c.o: tests/server/CMakeFiles/getpart.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/pauliusrag/Desktop/git/stocks-analysis-tool/libs/curl/CMakeFiles --progress-num=$(CMAKE_PROGRESS_6) "Building C object tests/server/CMakeFiles/getpart.dir/__/__/lib/dynbuf.c.o"
	cd /home/pauliusrag/Desktop/git/stocks-analysis-tool/libs/curl/tests/server && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -MD -MT tests/server/CMakeFiles/getpart.dir/__/__/lib/dynbuf.c.o -MF CMakeFiles/getpart.dir/__/__/lib/dynbuf.c.o.d -o CMakeFiles/getpart.dir/__/__/lib/dynbuf.c.o -c /home/pauliusrag/Desktop/git/stocks-analysis-tool/libs/curl/lib/dynbuf.c

tests/server/CMakeFiles/getpart.dir/__/__/lib/dynbuf.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/getpart.dir/__/__/lib/dynbuf.c.i"
	cd /home/pauliusrag/Desktop/git/stocks-analysis-tool/libs/curl/tests/server && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/pauliusrag/Desktop/git/stocks-analysis-tool/libs/curl/lib/dynbuf.c > CMakeFiles/getpart.dir/__/__/lib/dynbuf.c.i

tests/server/CMakeFiles/getpart.dir/__/__/lib/dynbuf.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/getpart.dir/__/__/lib/dynbuf.c.s"
	cd /home/pauliusrag/Desktop/git/stocks-analysis-tool/libs/curl/tests/server && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/pauliusrag/Desktop/git/stocks-analysis-tool/libs/curl/lib/dynbuf.c -o CMakeFiles/getpart.dir/__/__/lib/dynbuf.c.s

tests/server/CMakeFiles/getpart.dir/__/__/lib/strdup.c.o: tests/server/CMakeFiles/getpart.dir/flags.make
tests/server/CMakeFiles/getpart.dir/__/__/lib/strdup.c.o: lib/strdup.c
tests/server/CMakeFiles/getpart.dir/__/__/lib/strdup.c.o: tests/server/CMakeFiles/getpart.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/pauliusrag/Desktop/git/stocks-analysis-tool/libs/curl/CMakeFiles --progress-num=$(CMAKE_PROGRESS_7) "Building C object tests/server/CMakeFiles/getpart.dir/__/__/lib/strdup.c.o"
	cd /home/pauliusrag/Desktop/git/stocks-analysis-tool/libs/curl/tests/server && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -MD -MT tests/server/CMakeFiles/getpart.dir/__/__/lib/strdup.c.o -MF CMakeFiles/getpart.dir/__/__/lib/strdup.c.o.d -o CMakeFiles/getpart.dir/__/__/lib/strdup.c.o -c /home/pauliusrag/Desktop/git/stocks-analysis-tool/libs/curl/lib/strdup.c

tests/server/CMakeFiles/getpart.dir/__/__/lib/strdup.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/getpart.dir/__/__/lib/strdup.c.i"
	cd /home/pauliusrag/Desktop/git/stocks-analysis-tool/libs/curl/tests/server && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/pauliusrag/Desktop/git/stocks-analysis-tool/libs/curl/lib/strdup.c > CMakeFiles/getpart.dir/__/__/lib/strdup.c.i

tests/server/CMakeFiles/getpart.dir/__/__/lib/strdup.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/getpart.dir/__/__/lib/strdup.c.s"
	cd /home/pauliusrag/Desktop/git/stocks-analysis-tool/libs/curl/tests/server && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/pauliusrag/Desktop/git/stocks-analysis-tool/libs/curl/lib/strdup.c -o CMakeFiles/getpart.dir/__/__/lib/strdup.c.s

tests/server/CMakeFiles/getpart.dir/__/__/lib/strcase.c.o: tests/server/CMakeFiles/getpart.dir/flags.make
tests/server/CMakeFiles/getpart.dir/__/__/lib/strcase.c.o: lib/strcase.c
tests/server/CMakeFiles/getpart.dir/__/__/lib/strcase.c.o: tests/server/CMakeFiles/getpart.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/pauliusrag/Desktop/git/stocks-analysis-tool/libs/curl/CMakeFiles --progress-num=$(CMAKE_PROGRESS_8) "Building C object tests/server/CMakeFiles/getpart.dir/__/__/lib/strcase.c.o"
	cd /home/pauliusrag/Desktop/git/stocks-analysis-tool/libs/curl/tests/server && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -MD -MT tests/server/CMakeFiles/getpart.dir/__/__/lib/strcase.c.o -MF CMakeFiles/getpart.dir/__/__/lib/strcase.c.o.d -o CMakeFiles/getpart.dir/__/__/lib/strcase.c.o -c /home/pauliusrag/Desktop/git/stocks-analysis-tool/libs/curl/lib/strcase.c

tests/server/CMakeFiles/getpart.dir/__/__/lib/strcase.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/getpart.dir/__/__/lib/strcase.c.i"
	cd /home/pauliusrag/Desktop/git/stocks-analysis-tool/libs/curl/tests/server && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/pauliusrag/Desktop/git/stocks-analysis-tool/libs/curl/lib/strcase.c > CMakeFiles/getpart.dir/__/__/lib/strcase.c.i

tests/server/CMakeFiles/getpart.dir/__/__/lib/strcase.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/getpart.dir/__/__/lib/strcase.c.s"
	cd /home/pauliusrag/Desktop/git/stocks-analysis-tool/libs/curl/tests/server && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/pauliusrag/Desktop/git/stocks-analysis-tool/libs/curl/lib/strcase.c -o CMakeFiles/getpart.dir/__/__/lib/strcase.c.s

tests/server/CMakeFiles/getpart.dir/__/__/lib/curl_multibyte.c.o: tests/server/CMakeFiles/getpart.dir/flags.make
tests/server/CMakeFiles/getpart.dir/__/__/lib/curl_multibyte.c.o: lib/curl_multibyte.c
tests/server/CMakeFiles/getpart.dir/__/__/lib/curl_multibyte.c.o: tests/server/CMakeFiles/getpart.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/pauliusrag/Desktop/git/stocks-analysis-tool/libs/curl/CMakeFiles --progress-num=$(CMAKE_PROGRESS_9) "Building C object tests/server/CMakeFiles/getpart.dir/__/__/lib/curl_multibyte.c.o"
	cd /home/pauliusrag/Desktop/git/stocks-analysis-tool/libs/curl/tests/server && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -MD -MT tests/server/CMakeFiles/getpart.dir/__/__/lib/curl_multibyte.c.o -MF CMakeFiles/getpart.dir/__/__/lib/curl_multibyte.c.o.d -o CMakeFiles/getpart.dir/__/__/lib/curl_multibyte.c.o -c /home/pauliusrag/Desktop/git/stocks-analysis-tool/libs/curl/lib/curl_multibyte.c

tests/server/CMakeFiles/getpart.dir/__/__/lib/curl_multibyte.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/getpart.dir/__/__/lib/curl_multibyte.c.i"
	cd /home/pauliusrag/Desktop/git/stocks-analysis-tool/libs/curl/tests/server && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/pauliusrag/Desktop/git/stocks-analysis-tool/libs/curl/lib/curl_multibyte.c > CMakeFiles/getpart.dir/__/__/lib/curl_multibyte.c.i

tests/server/CMakeFiles/getpart.dir/__/__/lib/curl_multibyte.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/getpart.dir/__/__/lib/curl_multibyte.c.s"
	cd /home/pauliusrag/Desktop/git/stocks-analysis-tool/libs/curl/tests/server && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/pauliusrag/Desktop/git/stocks-analysis-tool/libs/curl/lib/curl_multibyte.c -o CMakeFiles/getpart.dir/__/__/lib/curl_multibyte.c.s

tests/server/CMakeFiles/getpart.dir/getpart.c.o: tests/server/CMakeFiles/getpart.dir/flags.make
tests/server/CMakeFiles/getpart.dir/getpart.c.o: tests/server/getpart.c
tests/server/CMakeFiles/getpart.dir/getpart.c.o: tests/server/CMakeFiles/getpart.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/pauliusrag/Desktop/git/stocks-analysis-tool/libs/curl/CMakeFiles --progress-num=$(CMAKE_PROGRESS_10) "Building C object tests/server/CMakeFiles/getpart.dir/getpart.c.o"
	cd /home/pauliusrag/Desktop/git/stocks-analysis-tool/libs/curl/tests/server && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -MD -MT tests/server/CMakeFiles/getpart.dir/getpart.c.o -MF CMakeFiles/getpart.dir/getpart.c.o.d -o CMakeFiles/getpart.dir/getpart.c.o -c /home/pauliusrag/Desktop/git/stocks-analysis-tool/libs/curl/tests/server/getpart.c

tests/server/CMakeFiles/getpart.dir/getpart.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/getpart.dir/getpart.c.i"
	cd /home/pauliusrag/Desktop/git/stocks-analysis-tool/libs/curl/tests/server && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/pauliusrag/Desktop/git/stocks-analysis-tool/libs/curl/tests/server/getpart.c > CMakeFiles/getpart.dir/getpart.c.i

tests/server/CMakeFiles/getpart.dir/getpart.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/getpart.dir/getpart.c.s"
	cd /home/pauliusrag/Desktop/git/stocks-analysis-tool/libs/curl/tests/server && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/pauliusrag/Desktop/git/stocks-analysis-tool/libs/curl/tests/server/getpart.c -o CMakeFiles/getpart.dir/getpart.c.s

tests/server/CMakeFiles/getpart.dir/__/__/lib/base64.c.o: tests/server/CMakeFiles/getpart.dir/flags.make
tests/server/CMakeFiles/getpart.dir/__/__/lib/base64.c.o: lib/base64.c
tests/server/CMakeFiles/getpart.dir/__/__/lib/base64.c.o: tests/server/CMakeFiles/getpart.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/pauliusrag/Desktop/git/stocks-analysis-tool/libs/curl/CMakeFiles --progress-num=$(CMAKE_PROGRESS_11) "Building C object tests/server/CMakeFiles/getpart.dir/__/__/lib/base64.c.o"
	cd /home/pauliusrag/Desktop/git/stocks-analysis-tool/libs/curl/tests/server && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -MD -MT tests/server/CMakeFiles/getpart.dir/__/__/lib/base64.c.o -MF CMakeFiles/getpart.dir/__/__/lib/base64.c.o.d -o CMakeFiles/getpart.dir/__/__/lib/base64.c.o -c /home/pauliusrag/Desktop/git/stocks-analysis-tool/libs/curl/lib/base64.c

tests/server/CMakeFiles/getpart.dir/__/__/lib/base64.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/getpart.dir/__/__/lib/base64.c.i"
	cd /home/pauliusrag/Desktop/git/stocks-analysis-tool/libs/curl/tests/server && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/pauliusrag/Desktop/git/stocks-analysis-tool/libs/curl/lib/base64.c > CMakeFiles/getpart.dir/__/__/lib/base64.c.i

tests/server/CMakeFiles/getpart.dir/__/__/lib/base64.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/getpart.dir/__/__/lib/base64.c.s"
	cd /home/pauliusrag/Desktop/git/stocks-analysis-tool/libs/curl/tests/server && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/pauliusrag/Desktop/git/stocks-analysis-tool/libs/curl/lib/base64.c -o CMakeFiles/getpart.dir/__/__/lib/base64.c.s

tests/server/CMakeFiles/getpart.dir/__/__/lib/memdebug.c.o: tests/server/CMakeFiles/getpart.dir/flags.make
tests/server/CMakeFiles/getpart.dir/__/__/lib/memdebug.c.o: lib/memdebug.c
tests/server/CMakeFiles/getpart.dir/__/__/lib/memdebug.c.o: tests/server/CMakeFiles/getpart.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/pauliusrag/Desktop/git/stocks-analysis-tool/libs/curl/CMakeFiles --progress-num=$(CMAKE_PROGRESS_12) "Building C object tests/server/CMakeFiles/getpart.dir/__/__/lib/memdebug.c.o"
	cd /home/pauliusrag/Desktop/git/stocks-analysis-tool/libs/curl/tests/server && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -MD -MT tests/server/CMakeFiles/getpart.dir/__/__/lib/memdebug.c.o -MF CMakeFiles/getpart.dir/__/__/lib/memdebug.c.o.d -o CMakeFiles/getpart.dir/__/__/lib/memdebug.c.o -c /home/pauliusrag/Desktop/git/stocks-analysis-tool/libs/curl/lib/memdebug.c

tests/server/CMakeFiles/getpart.dir/__/__/lib/memdebug.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/getpart.dir/__/__/lib/memdebug.c.i"
	cd /home/pauliusrag/Desktop/git/stocks-analysis-tool/libs/curl/tests/server && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/pauliusrag/Desktop/git/stocks-analysis-tool/libs/curl/lib/memdebug.c > CMakeFiles/getpart.dir/__/__/lib/memdebug.c.i

tests/server/CMakeFiles/getpart.dir/__/__/lib/memdebug.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/getpart.dir/__/__/lib/memdebug.c.s"
	cd /home/pauliusrag/Desktop/git/stocks-analysis-tool/libs/curl/tests/server && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/pauliusrag/Desktop/git/stocks-analysis-tool/libs/curl/lib/memdebug.c -o CMakeFiles/getpart.dir/__/__/lib/memdebug.c.s

tests/server/CMakeFiles/getpart.dir/testpart.c.o: tests/server/CMakeFiles/getpart.dir/flags.make
tests/server/CMakeFiles/getpart.dir/testpart.c.o: tests/server/testpart.c
tests/server/CMakeFiles/getpart.dir/testpart.c.o: tests/server/CMakeFiles/getpart.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/pauliusrag/Desktop/git/stocks-analysis-tool/libs/curl/CMakeFiles --progress-num=$(CMAKE_PROGRESS_13) "Building C object tests/server/CMakeFiles/getpart.dir/testpart.c.o"
	cd /home/pauliusrag/Desktop/git/stocks-analysis-tool/libs/curl/tests/server && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -MD -MT tests/server/CMakeFiles/getpart.dir/testpart.c.o -MF CMakeFiles/getpart.dir/testpart.c.o.d -o CMakeFiles/getpart.dir/testpart.c.o -c /home/pauliusrag/Desktop/git/stocks-analysis-tool/libs/curl/tests/server/testpart.c

tests/server/CMakeFiles/getpart.dir/testpart.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/getpart.dir/testpart.c.i"
	cd /home/pauliusrag/Desktop/git/stocks-analysis-tool/libs/curl/tests/server && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/pauliusrag/Desktop/git/stocks-analysis-tool/libs/curl/tests/server/testpart.c > CMakeFiles/getpart.dir/testpart.c.i

tests/server/CMakeFiles/getpart.dir/testpart.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/getpart.dir/testpart.c.s"
	cd /home/pauliusrag/Desktop/git/stocks-analysis-tool/libs/curl/tests/server && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/pauliusrag/Desktop/git/stocks-analysis-tool/libs/curl/tests/server/testpart.c -o CMakeFiles/getpart.dir/testpart.c.s

# Object files for target getpart
getpart_OBJECTS = \
"CMakeFiles/getpart.dir/__/__/lib/mprintf.c.o" \
"CMakeFiles/getpart.dir/__/__/lib/nonblock.c.o" \
"CMakeFiles/getpart.dir/__/__/lib/strtoofft.c.o" \
"CMakeFiles/getpart.dir/__/__/lib/warnless.c.o" \
"CMakeFiles/getpart.dir/__/__/lib/timediff.c.o" \
"CMakeFiles/getpart.dir/__/__/lib/dynbuf.c.o" \
"CMakeFiles/getpart.dir/__/__/lib/strdup.c.o" \
"CMakeFiles/getpart.dir/__/__/lib/strcase.c.o" \
"CMakeFiles/getpart.dir/__/__/lib/curl_multibyte.c.o" \
"CMakeFiles/getpart.dir/getpart.c.o" \
"CMakeFiles/getpart.dir/__/__/lib/base64.c.o" \
"CMakeFiles/getpart.dir/__/__/lib/memdebug.c.o" \
"CMakeFiles/getpart.dir/testpart.c.o"

# External object files for target getpart
getpart_EXTERNAL_OBJECTS =

tests/server/getpart: tests/server/CMakeFiles/getpart.dir/__/__/lib/mprintf.c.o
tests/server/getpart: tests/server/CMakeFiles/getpart.dir/__/__/lib/nonblock.c.o
tests/server/getpart: tests/server/CMakeFiles/getpart.dir/__/__/lib/strtoofft.c.o
tests/server/getpart: tests/server/CMakeFiles/getpart.dir/__/__/lib/warnless.c.o
tests/server/getpart: tests/server/CMakeFiles/getpart.dir/__/__/lib/timediff.c.o
tests/server/getpart: tests/server/CMakeFiles/getpart.dir/__/__/lib/dynbuf.c.o
tests/server/getpart: tests/server/CMakeFiles/getpart.dir/__/__/lib/strdup.c.o
tests/server/getpart: tests/server/CMakeFiles/getpart.dir/__/__/lib/strcase.c.o
tests/server/getpart: tests/server/CMakeFiles/getpart.dir/__/__/lib/curl_multibyte.c.o
tests/server/getpart: tests/server/CMakeFiles/getpart.dir/getpart.c.o
tests/server/getpart: tests/server/CMakeFiles/getpart.dir/__/__/lib/base64.c.o
tests/server/getpart: tests/server/CMakeFiles/getpart.dir/__/__/lib/memdebug.c.o
tests/server/getpart: tests/server/CMakeFiles/getpart.dir/testpart.c.o
tests/server/getpart: tests/server/CMakeFiles/getpart.dir/build.make
tests/server/getpart: /usr/lib/x86_64-linux-gnu/libssl.so
tests/server/getpart: /usr/lib/x86_64-linux-gnu/libcrypto.so
tests/server/getpart: tests/server/CMakeFiles/getpart.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/pauliusrag/Desktop/git/stocks-analysis-tool/libs/curl/CMakeFiles --progress-num=$(CMAKE_PROGRESS_14) "Linking C executable getpart"
	cd /home/pauliusrag/Desktop/git/stocks-analysis-tool/libs/curl/tests/server && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/getpart.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
tests/server/CMakeFiles/getpart.dir/build: tests/server/getpart
.PHONY : tests/server/CMakeFiles/getpart.dir/build

tests/server/CMakeFiles/getpart.dir/clean:
	cd /home/pauliusrag/Desktop/git/stocks-analysis-tool/libs/curl/tests/server && $(CMAKE_COMMAND) -P CMakeFiles/getpart.dir/cmake_clean.cmake
.PHONY : tests/server/CMakeFiles/getpart.dir/clean

tests/server/CMakeFiles/getpart.dir/depend:
	cd /home/pauliusrag/Desktop/git/stocks-analysis-tool/libs/curl && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/pauliusrag/Desktop/git/stocks-analysis-tool/libs/curl /home/pauliusrag/Desktop/git/stocks-analysis-tool/libs/curl/tests/server /home/pauliusrag/Desktop/git/stocks-analysis-tool/libs/curl /home/pauliusrag/Desktop/git/stocks-analysis-tool/libs/curl/tests/server /home/pauliusrag/Desktop/git/stocks-analysis-tool/libs/curl/tests/server/CMakeFiles/getpart.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : tests/server/CMakeFiles/getpart.dir/depend

