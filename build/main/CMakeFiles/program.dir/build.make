# CMAKE generated file: DO NOT EDIT!
# Generated by "MinGW Makefiles" Generator, CMake Version 3.20

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

SHELL = cmd.exe

# The CMake executable.
CMAKE_COMMAND = "C:\Program Files\CMake\bin\cmake.exe"

# The command to remove a file.
RM = "C:\Program Files\CMake\bin\cmake.exe" -E rm -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = C:\github\Graph_Pattern_Matching_Challenge

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = C:\github\Graph_Pattern_Matching_Challenge\build

# Include any dependencies generated for this target.
include main/CMakeFiles/program.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include main/CMakeFiles/program.dir/compiler_depend.make

# Include the progress variables for this target.
include main/CMakeFiles/program.dir/progress.make

# Include the compile flags for this target's objects.
include main/CMakeFiles/program.dir/flags.make

main/CMakeFiles/program.dir/main.cc.obj: main/CMakeFiles/program.dir/flags.make
main/CMakeFiles/program.dir/main.cc.obj: main/CMakeFiles/program.dir/includes_CXX.rsp
main/CMakeFiles/program.dir/main.cc.obj: ../main/main.cc
main/CMakeFiles/program.dir/main.cc.obj: main/CMakeFiles/program.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=C:\github\Graph_Pattern_Matching_Challenge\build\CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object main/CMakeFiles/program.dir/main.cc.obj"
	cd /d C:\github\Graph_Pattern_Matching_Challenge\build\main && C:\MinGW\bin\g++.exe $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT main/CMakeFiles/program.dir/main.cc.obj -MF CMakeFiles\program.dir\main.cc.obj.d -o CMakeFiles\program.dir\main.cc.obj -c C:\github\Graph_Pattern_Matching_Challenge\main\main.cc

main/CMakeFiles/program.dir/main.cc.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/program.dir/main.cc.i"
	cd /d C:\github\Graph_Pattern_Matching_Challenge\build\main && C:\MinGW\bin\g++.exe $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E C:\github\Graph_Pattern_Matching_Challenge\main\main.cc > CMakeFiles\program.dir\main.cc.i

main/CMakeFiles/program.dir/main.cc.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/program.dir/main.cc.s"
	cd /d C:\github\Graph_Pattern_Matching_Challenge\build\main && C:\MinGW\bin\g++.exe $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S C:\github\Graph_Pattern_Matching_Challenge\main\main.cc -o CMakeFiles\program.dir\main.cc.s

main/CMakeFiles/program.dir/__/src/backtrack.cc.obj: main/CMakeFiles/program.dir/flags.make
main/CMakeFiles/program.dir/__/src/backtrack.cc.obj: main/CMakeFiles/program.dir/includes_CXX.rsp
main/CMakeFiles/program.dir/__/src/backtrack.cc.obj: ../src/backtrack.cc
main/CMakeFiles/program.dir/__/src/backtrack.cc.obj: main/CMakeFiles/program.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=C:\github\Graph_Pattern_Matching_Challenge\build\CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building CXX object main/CMakeFiles/program.dir/__/src/backtrack.cc.obj"
	cd /d C:\github\Graph_Pattern_Matching_Challenge\build\main && C:\MinGW\bin\g++.exe $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT main/CMakeFiles/program.dir/__/src/backtrack.cc.obj -MF CMakeFiles\program.dir\__\src\backtrack.cc.obj.d -o CMakeFiles\program.dir\__\src\backtrack.cc.obj -c C:\github\Graph_Pattern_Matching_Challenge\src\backtrack.cc

main/CMakeFiles/program.dir/__/src/backtrack.cc.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/program.dir/__/src/backtrack.cc.i"
	cd /d C:\github\Graph_Pattern_Matching_Challenge\build\main && C:\MinGW\bin\g++.exe $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E C:\github\Graph_Pattern_Matching_Challenge\src\backtrack.cc > CMakeFiles\program.dir\__\src\backtrack.cc.i

main/CMakeFiles/program.dir/__/src/backtrack.cc.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/program.dir/__/src/backtrack.cc.s"
	cd /d C:\github\Graph_Pattern_Matching_Challenge\build\main && C:\MinGW\bin\g++.exe $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S C:\github\Graph_Pattern_Matching_Challenge\src\backtrack.cc -o CMakeFiles\program.dir\__\src\backtrack.cc.s

main/CMakeFiles/program.dir/__/src/candidate_set.cc.obj: main/CMakeFiles/program.dir/flags.make
main/CMakeFiles/program.dir/__/src/candidate_set.cc.obj: main/CMakeFiles/program.dir/includes_CXX.rsp
main/CMakeFiles/program.dir/__/src/candidate_set.cc.obj: ../src/candidate_set.cc
main/CMakeFiles/program.dir/__/src/candidate_set.cc.obj: main/CMakeFiles/program.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=C:\github\Graph_Pattern_Matching_Challenge\build\CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Building CXX object main/CMakeFiles/program.dir/__/src/candidate_set.cc.obj"
	cd /d C:\github\Graph_Pattern_Matching_Challenge\build\main && C:\MinGW\bin\g++.exe $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT main/CMakeFiles/program.dir/__/src/candidate_set.cc.obj -MF CMakeFiles\program.dir\__\src\candidate_set.cc.obj.d -o CMakeFiles\program.dir\__\src\candidate_set.cc.obj -c C:\github\Graph_Pattern_Matching_Challenge\src\candidate_set.cc

main/CMakeFiles/program.dir/__/src/candidate_set.cc.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/program.dir/__/src/candidate_set.cc.i"
	cd /d C:\github\Graph_Pattern_Matching_Challenge\build\main && C:\MinGW\bin\g++.exe $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E C:\github\Graph_Pattern_Matching_Challenge\src\candidate_set.cc > CMakeFiles\program.dir\__\src\candidate_set.cc.i

main/CMakeFiles/program.dir/__/src/candidate_set.cc.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/program.dir/__/src/candidate_set.cc.s"
	cd /d C:\github\Graph_Pattern_Matching_Challenge\build\main && C:\MinGW\bin\g++.exe $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S C:\github\Graph_Pattern_Matching_Challenge\src\candidate_set.cc -o CMakeFiles\program.dir\__\src\candidate_set.cc.s

main/CMakeFiles/program.dir/__/src/graph.cc.obj: main/CMakeFiles/program.dir/flags.make
main/CMakeFiles/program.dir/__/src/graph.cc.obj: main/CMakeFiles/program.dir/includes_CXX.rsp
main/CMakeFiles/program.dir/__/src/graph.cc.obj: ../src/graph.cc
main/CMakeFiles/program.dir/__/src/graph.cc.obj: main/CMakeFiles/program.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=C:\github\Graph_Pattern_Matching_Challenge\build\CMakeFiles --progress-num=$(CMAKE_PROGRESS_4) "Building CXX object main/CMakeFiles/program.dir/__/src/graph.cc.obj"
	cd /d C:\github\Graph_Pattern_Matching_Challenge\build\main && C:\MinGW\bin\g++.exe $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT main/CMakeFiles/program.dir/__/src/graph.cc.obj -MF CMakeFiles\program.dir\__\src\graph.cc.obj.d -o CMakeFiles\program.dir\__\src\graph.cc.obj -c C:\github\Graph_Pattern_Matching_Challenge\src\graph.cc

main/CMakeFiles/program.dir/__/src/graph.cc.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/program.dir/__/src/graph.cc.i"
	cd /d C:\github\Graph_Pattern_Matching_Challenge\build\main && C:\MinGW\bin\g++.exe $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E C:\github\Graph_Pattern_Matching_Challenge\src\graph.cc > CMakeFiles\program.dir\__\src\graph.cc.i

main/CMakeFiles/program.dir/__/src/graph.cc.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/program.dir/__/src/graph.cc.s"
	cd /d C:\github\Graph_Pattern_Matching_Challenge\build\main && C:\MinGW\bin\g++.exe $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S C:\github\Graph_Pattern_Matching_Challenge\src\graph.cc -o CMakeFiles\program.dir\__\src\graph.cc.s

# Object files for target program
program_OBJECTS = \
"CMakeFiles/program.dir/main.cc.obj" \
"CMakeFiles/program.dir/__/src/backtrack.cc.obj" \
"CMakeFiles/program.dir/__/src/candidate_set.cc.obj" \
"CMakeFiles/program.dir/__/src/graph.cc.obj"

# External object files for target program
program_EXTERNAL_OBJECTS =

main/program.exe: main/CMakeFiles/program.dir/main.cc.obj
main/program.exe: main/CMakeFiles/program.dir/__/src/backtrack.cc.obj
main/program.exe: main/CMakeFiles/program.dir/__/src/candidate_set.cc.obj
main/program.exe: main/CMakeFiles/program.dir/__/src/graph.cc.obj
main/program.exe: main/CMakeFiles/program.dir/build.make
main/program.exe: main/CMakeFiles/program.dir/linklibs.rsp
main/program.exe: main/CMakeFiles/program.dir/objects1.rsp
main/program.exe: main/CMakeFiles/program.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=C:\github\Graph_Pattern_Matching_Challenge\build\CMakeFiles --progress-num=$(CMAKE_PROGRESS_5) "Linking CXX executable program.exe"
	cd /d C:\github\Graph_Pattern_Matching_Challenge\build\main && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles\program.dir\link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
main/CMakeFiles/program.dir/build: main/program.exe
.PHONY : main/CMakeFiles/program.dir/build

main/CMakeFiles/program.dir/clean:
	cd /d C:\github\Graph_Pattern_Matching_Challenge\build\main && $(CMAKE_COMMAND) -P CMakeFiles\program.dir\cmake_clean.cmake
.PHONY : main/CMakeFiles/program.dir/clean

main/CMakeFiles/program.dir/depend:
	$(CMAKE_COMMAND) -E cmake_depends "MinGW Makefiles" C:\github\Graph_Pattern_Matching_Challenge C:\github\Graph_Pattern_Matching_Challenge\main C:\github\Graph_Pattern_Matching_Challenge\build C:\github\Graph_Pattern_Matching_Challenge\build\main C:\github\Graph_Pattern_Matching_Challenge\build\main\CMakeFiles\program.dir\DependInfo.cmake --color=$(COLOR)
.PHONY : main/CMakeFiles/program.dir/depend

