# CMAKE generated file: DO NOT EDIT!
# Generated by "NMake Makefiles" Generator, CMake Version 3.20

# Delete rule output on recipe failure.
.DELETE_ON_ERROR:

#=============================================================================
# Special targets provided by cmake.

# Disable implicit rules so canonical targets will work.
.SUFFIXES:

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

!IF "$(OS)" == "Windows_NT"
NULL=
!ELSE
NULL=nul
!ENDIF
SHELL = cmd.exe

# The CMake executable.
CMAKE_COMMAND = "C:\Program Files\JetBrains\CLion 2021.2.3\bin\cmake\win\bin\cmake.exe"

# The command to remove a file.
RM = "C:\Program Files\JetBrains\CLion 2021.2.3\bin\cmake\win\bin\cmake.exe" -E rm -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = C:\Users\RebalFarhat\Desktop\cpp\ex01\exercise-1-chess-AyhamF2000\Chess

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = C:\Users\RebalFarhat\Desktop\cpp\ex01\exercise-1-chess-AyhamF2000\Chess\cmake-build-debug

# Include any dependencies generated for this target.
include CMakeFiles\Chess.dir\depend.make
# Include the progress variables for this target.
include CMakeFiles\Chess.dir\progress.make

# Include the compile flags for this target's objects.
include CMakeFiles\Chess.dir\flags.make

CMakeFiles\Chess.dir\src\Piece.cpp.obj: CMakeFiles\Chess.dir\flags.make
CMakeFiles\Chess.dir\src\Piece.cpp.obj: ..\src\Piece.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=C:\Users\RebalFarhat\Desktop\cpp\ex01\exercise-1-chess-AyhamF2000\Chess\cmake-build-debug\CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/Chess.dir/src/Piece.cpp.obj"
	C:\PROGRA~1\MICROS~3\2022\COMMUN~1\VC\Tools\MSVC\1438~1.331\bin\Hostx86\x86\cl.exe @<<
 /nologo /TP $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) /FoCMakeFiles\Chess.dir\src\Piece.cpp.obj /FdCMakeFiles\Chess.dir\ /FS -c C:\Users\RebalFarhat\Desktop\cpp\ex01\exercise-1-chess-AyhamF2000\Chess\src\Piece.cpp
<<

CMakeFiles\Chess.dir\src\Piece.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/Chess.dir/src/Piece.cpp.i"
	C:\PROGRA~1\MICROS~3\2022\COMMUN~1\VC\Tools\MSVC\1438~1.331\bin\Hostx86\x86\cl.exe > CMakeFiles\Chess.dir\src\Piece.cpp.i @<<
 /nologo /TP $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E C:\Users\RebalFarhat\Desktop\cpp\ex01\exercise-1-chess-AyhamF2000\Chess\src\Piece.cpp
<<

CMakeFiles\Chess.dir\src\Piece.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/Chess.dir/src/Piece.cpp.s"
	C:\PROGRA~1\MICROS~3\2022\COMMUN~1\VC\Tools\MSVC\1438~1.331\bin\Hostx86\x86\cl.exe @<<
 /nologo /TP $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) /FoNUL /FAs /FaCMakeFiles\Chess.dir\src\Piece.cpp.s /c C:\Users\RebalFarhat\Desktop\cpp\ex01\exercise-1-chess-AyhamF2000\Chess\src\Piece.cpp
<<

CMakeFiles\Chess.dir\src\Board.cpp.obj: CMakeFiles\Chess.dir\flags.make
CMakeFiles\Chess.dir\src\Board.cpp.obj: ..\src\Board.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=C:\Users\RebalFarhat\Desktop\cpp\ex01\exercise-1-chess-AyhamF2000\Chess\cmake-build-debug\CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building CXX object CMakeFiles/Chess.dir/src/Board.cpp.obj"
	C:\PROGRA~1\MICROS~3\2022\COMMUN~1\VC\Tools\MSVC\1438~1.331\bin\Hostx86\x86\cl.exe @<<
 /nologo /TP $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) /FoCMakeFiles\Chess.dir\src\Board.cpp.obj /FdCMakeFiles\Chess.dir\ /FS -c C:\Users\RebalFarhat\Desktop\cpp\ex01\exercise-1-chess-AyhamF2000\Chess\src\Board.cpp
<<

CMakeFiles\Chess.dir\src\Board.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/Chess.dir/src/Board.cpp.i"
	C:\PROGRA~1\MICROS~3\2022\COMMUN~1\VC\Tools\MSVC\1438~1.331\bin\Hostx86\x86\cl.exe > CMakeFiles\Chess.dir\src\Board.cpp.i @<<
 /nologo /TP $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E C:\Users\RebalFarhat\Desktop\cpp\ex01\exercise-1-chess-AyhamF2000\Chess\src\Board.cpp
<<

CMakeFiles\Chess.dir\src\Board.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/Chess.dir/src/Board.cpp.s"
	C:\PROGRA~1\MICROS~3\2022\COMMUN~1\VC\Tools\MSVC\1438~1.331\bin\Hostx86\x86\cl.exe @<<
 /nologo /TP $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) /FoNUL /FAs /FaCMakeFiles\Chess.dir\src\Board.cpp.s /c C:\Users\RebalFarhat\Desktop\cpp\ex01\exercise-1-chess-AyhamF2000\Chess\src\Board.cpp
<<

CMakeFiles\Chess.dir\src\Pieces\Rook.cpp.obj: CMakeFiles\Chess.dir\flags.make
CMakeFiles\Chess.dir\src\Pieces\Rook.cpp.obj: ..\src\Pieces\Rook.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=C:\Users\RebalFarhat\Desktop\cpp\ex01\exercise-1-chess-AyhamF2000\Chess\cmake-build-debug\CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Building CXX object CMakeFiles/Chess.dir/src/Pieces/Rook.cpp.obj"
	C:\PROGRA~1\MICROS~3\2022\COMMUN~1\VC\Tools\MSVC\1438~1.331\bin\Hostx86\x86\cl.exe @<<
 /nologo /TP $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) /FoCMakeFiles\Chess.dir\src\Pieces\Rook.cpp.obj /FdCMakeFiles\Chess.dir\ /FS -c C:\Users\RebalFarhat\Desktop\cpp\ex01\exercise-1-chess-AyhamF2000\Chess\src\Pieces\Rook.cpp
<<

CMakeFiles\Chess.dir\src\Pieces\Rook.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/Chess.dir/src/Pieces/Rook.cpp.i"
	C:\PROGRA~1\MICROS~3\2022\COMMUN~1\VC\Tools\MSVC\1438~1.331\bin\Hostx86\x86\cl.exe > CMakeFiles\Chess.dir\src\Pieces\Rook.cpp.i @<<
 /nologo /TP $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E C:\Users\RebalFarhat\Desktop\cpp\ex01\exercise-1-chess-AyhamF2000\Chess\src\Pieces\Rook.cpp
<<

CMakeFiles\Chess.dir\src\Pieces\Rook.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/Chess.dir/src/Pieces/Rook.cpp.s"
	C:\PROGRA~1\MICROS~3\2022\COMMUN~1\VC\Tools\MSVC\1438~1.331\bin\Hostx86\x86\cl.exe @<<
 /nologo /TP $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) /FoNUL /FAs /FaCMakeFiles\Chess.dir\src\Pieces\Rook.cpp.s /c C:\Users\RebalFarhat\Desktop\cpp\ex01\exercise-1-chess-AyhamF2000\Chess\src\Pieces\Rook.cpp
<<

CMakeFiles\Chess.dir\src\Pieces\Knight.cpp.obj: CMakeFiles\Chess.dir\flags.make
CMakeFiles\Chess.dir\src\Pieces\Knight.cpp.obj: ..\src\Pieces\Knight.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=C:\Users\RebalFarhat\Desktop\cpp\ex01\exercise-1-chess-AyhamF2000\Chess\cmake-build-debug\CMakeFiles --progress-num=$(CMAKE_PROGRESS_4) "Building CXX object CMakeFiles/Chess.dir/src/Pieces/Knight.cpp.obj"
	C:\PROGRA~1\MICROS~3\2022\COMMUN~1\VC\Tools\MSVC\1438~1.331\bin\Hostx86\x86\cl.exe @<<
 /nologo /TP $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) /FoCMakeFiles\Chess.dir\src\Pieces\Knight.cpp.obj /FdCMakeFiles\Chess.dir\ /FS -c C:\Users\RebalFarhat\Desktop\cpp\ex01\exercise-1-chess-AyhamF2000\Chess\src\Pieces\Knight.cpp
<<

CMakeFiles\Chess.dir\src\Pieces\Knight.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/Chess.dir/src/Pieces/Knight.cpp.i"
	C:\PROGRA~1\MICROS~3\2022\COMMUN~1\VC\Tools\MSVC\1438~1.331\bin\Hostx86\x86\cl.exe > CMakeFiles\Chess.dir\src\Pieces\Knight.cpp.i @<<
 /nologo /TP $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E C:\Users\RebalFarhat\Desktop\cpp\ex01\exercise-1-chess-AyhamF2000\Chess\src\Pieces\Knight.cpp
<<

CMakeFiles\Chess.dir\src\Pieces\Knight.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/Chess.dir/src/Pieces/Knight.cpp.s"
	C:\PROGRA~1\MICROS~3\2022\COMMUN~1\VC\Tools\MSVC\1438~1.331\bin\Hostx86\x86\cl.exe @<<
 /nologo /TP $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) /FoNUL /FAs /FaCMakeFiles\Chess.dir\src\Pieces\Knight.cpp.s /c C:\Users\RebalFarhat\Desktop\cpp\ex01\exercise-1-chess-AyhamF2000\Chess\src\Pieces\Knight.cpp
<<

CMakeFiles\Chess.dir\src\Pieces\Bishop.cpp.obj: CMakeFiles\Chess.dir\flags.make
CMakeFiles\Chess.dir\src\Pieces\Bishop.cpp.obj: ..\src\Pieces\Bishop.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=C:\Users\RebalFarhat\Desktop\cpp\ex01\exercise-1-chess-AyhamF2000\Chess\cmake-build-debug\CMakeFiles --progress-num=$(CMAKE_PROGRESS_5) "Building CXX object CMakeFiles/Chess.dir/src/Pieces/Bishop.cpp.obj"
	C:\PROGRA~1\MICROS~3\2022\COMMUN~1\VC\Tools\MSVC\1438~1.331\bin\Hostx86\x86\cl.exe @<<
 /nologo /TP $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) /FoCMakeFiles\Chess.dir\src\Pieces\Bishop.cpp.obj /FdCMakeFiles\Chess.dir\ /FS -c C:\Users\RebalFarhat\Desktop\cpp\ex01\exercise-1-chess-AyhamF2000\Chess\src\Pieces\Bishop.cpp
<<

CMakeFiles\Chess.dir\src\Pieces\Bishop.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/Chess.dir/src/Pieces/Bishop.cpp.i"
	C:\PROGRA~1\MICROS~3\2022\COMMUN~1\VC\Tools\MSVC\1438~1.331\bin\Hostx86\x86\cl.exe > CMakeFiles\Chess.dir\src\Pieces\Bishop.cpp.i @<<
 /nologo /TP $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E C:\Users\RebalFarhat\Desktop\cpp\ex01\exercise-1-chess-AyhamF2000\Chess\src\Pieces\Bishop.cpp
<<

CMakeFiles\Chess.dir\src\Pieces\Bishop.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/Chess.dir/src/Pieces/Bishop.cpp.s"
	C:\PROGRA~1\MICROS~3\2022\COMMUN~1\VC\Tools\MSVC\1438~1.331\bin\Hostx86\x86\cl.exe @<<
 /nologo /TP $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) /FoNUL /FAs /FaCMakeFiles\Chess.dir\src\Pieces\Bishop.cpp.s /c C:\Users\RebalFarhat\Desktop\cpp\ex01\exercise-1-chess-AyhamF2000\Chess\src\Pieces\Bishop.cpp
<<

CMakeFiles\Chess.dir\src\Pieces\Queen.cpp.obj: CMakeFiles\Chess.dir\flags.make
CMakeFiles\Chess.dir\src\Pieces\Queen.cpp.obj: ..\src\Pieces\Queen.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=C:\Users\RebalFarhat\Desktop\cpp\ex01\exercise-1-chess-AyhamF2000\Chess\cmake-build-debug\CMakeFiles --progress-num=$(CMAKE_PROGRESS_6) "Building CXX object CMakeFiles/Chess.dir/src/Pieces/Queen.cpp.obj"
	C:\PROGRA~1\MICROS~3\2022\COMMUN~1\VC\Tools\MSVC\1438~1.331\bin\Hostx86\x86\cl.exe @<<
 /nologo /TP $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) /FoCMakeFiles\Chess.dir\src\Pieces\Queen.cpp.obj /FdCMakeFiles\Chess.dir\ /FS -c C:\Users\RebalFarhat\Desktop\cpp\ex01\exercise-1-chess-AyhamF2000\Chess\src\Pieces\Queen.cpp
<<

CMakeFiles\Chess.dir\src\Pieces\Queen.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/Chess.dir/src/Pieces/Queen.cpp.i"
	C:\PROGRA~1\MICROS~3\2022\COMMUN~1\VC\Tools\MSVC\1438~1.331\bin\Hostx86\x86\cl.exe > CMakeFiles\Chess.dir\src\Pieces\Queen.cpp.i @<<
 /nologo /TP $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E C:\Users\RebalFarhat\Desktop\cpp\ex01\exercise-1-chess-AyhamF2000\Chess\src\Pieces\Queen.cpp
<<

CMakeFiles\Chess.dir\src\Pieces\Queen.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/Chess.dir/src/Pieces/Queen.cpp.s"
	C:\PROGRA~1\MICROS~3\2022\COMMUN~1\VC\Tools\MSVC\1438~1.331\bin\Hostx86\x86\cl.exe @<<
 /nologo /TP $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) /FoNUL /FAs /FaCMakeFiles\Chess.dir\src\Pieces\Queen.cpp.s /c C:\Users\RebalFarhat\Desktop\cpp\ex01\exercise-1-chess-AyhamF2000\Chess\src\Pieces\Queen.cpp
<<

CMakeFiles\Chess.dir\src\Pieces\King.cpp.obj: CMakeFiles\Chess.dir\flags.make
CMakeFiles\Chess.dir\src\Pieces\King.cpp.obj: ..\src\Pieces\King.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=C:\Users\RebalFarhat\Desktop\cpp\ex01\exercise-1-chess-AyhamF2000\Chess\cmake-build-debug\CMakeFiles --progress-num=$(CMAKE_PROGRESS_7) "Building CXX object CMakeFiles/Chess.dir/src/Pieces/King.cpp.obj"
	C:\PROGRA~1\MICROS~3\2022\COMMUN~1\VC\Tools\MSVC\1438~1.331\bin\Hostx86\x86\cl.exe @<<
 /nologo /TP $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) /FoCMakeFiles\Chess.dir\src\Pieces\King.cpp.obj /FdCMakeFiles\Chess.dir\ /FS -c C:\Users\RebalFarhat\Desktop\cpp\ex01\exercise-1-chess-AyhamF2000\Chess\src\Pieces\King.cpp
<<

CMakeFiles\Chess.dir\src\Pieces\King.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/Chess.dir/src/Pieces/King.cpp.i"
	C:\PROGRA~1\MICROS~3\2022\COMMUN~1\VC\Tools\MSVC\1438~1.331\bin\Hostx86\x86\cl.exe > CMakeFiles\Chess.dir\src\Pieces\King.cpp.i @<<
 /nologo /TP $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E C:\Users\RebalFarhat\Desktop\cpp\ex01\exercise-1-chess-AyhamF2000\Chess\src\Pieces\King.cpp
<<

CMakeFiles\Chess.dir\src\Pieces\King.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/Chess.dir/src/Pieces/King.cpp.s"
	C:\PROGRA~1\MICROS~3\2022\COMMUN~1\VC\Tools\MSVC\1438~1.331\bin\Hostx86\x86\cl.exe @<<
 /nologo /TP $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) /FoNUL /FAs /FaCMakeFiles\Chess.dir\src\Pieces\King.cpp.s /c C:\Users\RebalFarhat\Desktop\cpp\ex01\exercise-1-chess-AyhamF2000\Chess\src\Pieces\King.cpp
<<

CMakeFiles\Chess.dir\src\Pieces\Pawn.cpp.obj: CMakeFiles\Chess.dir\flags.make
CMakeFiles\Chess.dir\src\Pieces\Pawn.cpp.obj: ..\src\Pieces\Pawn.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=C:\Users\RebalFarhat\Desktop\cpp\ex01\exercise-1-chess-AyhamF2000\Chess\cmake-build-debug\CMakeFiles --progress-num=$(CMAKE_PROGRESS_8) "Building CXX object CMakeFiles/Chess.dir/src/Pieces/Pawn.cpp.obj"
	C:\PROGRA~1\MICROS~3\2022\COMMUN~1\VC\Tools\MSVC\1438~1.331\bin\Hostx86\x86\cl.exe @<<
 /nologo /TP $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) /FoCMakeFiles\Chess.dir\src\Pieces\Pawn.cpp.obj /FdCMakeFiles\Chess.dir\ /FS -c C:\Users\RebalFarhat\Desktop\cpp\ex01\exercise-1-chess-AyhamF2000\Chess\src\Pieces\Pawn.cpp
<<

CMakeFiles\Chess.dir\src\Pieces\Pawn.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/Chess.dir/src/Pieces/Pawn.cpp.i"
	C:\PROGRA~1\MICROS~3\2022\COMMUN~1\VC\Tools\MSVC\1438~1.331\bin\Hostx86\x86\cl.exe > CMakeFiles\Chess.dir\src\Pieces\Pawn.cpp.i @<<
 /nologo /TP $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E C:\Users\RebalFarhat\Desktop\cpp\ex01\exercise-1-chess-AyhamF2000\Chess\src\Pieces\Pawn.cpp
<<

CMakeFiles\Chess.dir\src\Pieces\Pawn.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/Chess.dir/src/Pieces/Pawn.cpp.s"
	C:\PROGRA~1\MICROS~3\2022\COMMUN~1\VC\Tools\MSVC\1438~1.331\bin\Hostx86\x86\cl.exe @<<
 /nologo /TP $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) /FoNUL /FAs /FaCMakeFiles\Chess.dir\src\Pieces\Pawn.cpp.s /c C:\Users\RebalFarhat\Desktop\cpp\ex01\exercise-1-chess-AyhamF2000\Chess\src\Pieces\Pawn.cpp
<<

CMakeFiles\Chess.dir\src\main.cpp.obj: CMakeFiles\Chess.dir\flags.make
CMakeFiles\Chess.dir\src\main.cpp.obj: ..\src\main.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=C:\Users\RebalFarhat\Desktop\cpp\ex01\exercise-1-chess-AyhamF2000\Chess\cmake-build-debug\CMakeFiles --progress-num=$(CMAKE_PROGRESS_9) "Building CXX object CMakeFiles/Chess.dir/src/main.cpp.obj"
	C:\PROGRA~1\MICROS~3\2022\COMMUN~1\VC\Tools\MSVC\1438~1.331\bin\Hostx86\x86\cl.exe @<<
 /nologo /TP $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) /FoCMakeFiles\Chess.dir\src\main.cpp.obj /FdCMakeFiles\Chess.dir\ /FS -c C:\Users\RebalFarhat\Desktop\cpp\ex01\exercise-1-chess-AyhamF2000\Chess\src\main.cpp
<<

CMakeFiles\Chess.dir\src\main.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/Chess.dir/src/main.cpp.i"
	C:\PROGRA~1\MICROS~3\2022\COMMUN~1\VC\Tools\MSVC\1438~1.331\bin\Hostx86\x86\cl.exe > CMakeFiles\Chess.dir\src\main.cpp.i @<<
 /nologo /TP $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E C:\Users\RebalFarhat\Desktop\cpp\ex01\exercise-1-chess-AyhamF2000\Chess\src\main.cpp
<<

CMakeFiles\Chess.dir\src\main.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/Chess.dir/src/main.cpp.s"
	C:\PROGRA~1\MICROS~3\2022\COMMUN~1\VC\Tools\MSVC\1438~1.331\bin\Hostx86\x86\cl.exe @<<
 /nologo /TP $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) /FoNUL /FAs /FaCMakeFiles\Chess.dir\src\main.cpp.s /c C:\Users\RebalFarhat\Desktop\cpp\ex01\exercise-1-chess-AyhamF2000\Chess\src\main.cpp
<<

CMakeFiles\Chess.dir\src\Chess.cpp.obj: CMakeFiles\Chess.dir\flags.make
CMakeFiles\Chess.dir\src\Chess.cpp.obj: ..\src\Chess.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=C:\Users\RebalFarhat\Desktop\cpp\ex01\exercise-1-chess-AyhamF2000\Chess\cmake-build-debug\CMakeFiles --progress-num=$(CMAKE_PROGRESS_10) "Building CXX object CMakeFiles/Chess.dir/src/Chess.cpp.obj"
	C:\PROGRA~1\MICROS~3\2022\COMMUN~1\VC\Tools\MSVC\1438~1.331\bin\Hostx86\x86\cl.exe @<<
 /nologo /TP $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) /FoCMakeFiles\Chess.dir\src\Chess.cpp.obj /FdCMakeFiles\Chess.dir\ /FS -c C:\Users\RebalFarhat\Desktop\cpp\ex01\exercise-1-chess-AyhamF2000\Chess\src\Chess.cpp
<<

CMakeFiles\Chess.dir\src\Chess.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/Chess.dir/src/Chess.cpp.i"
	C:\PROGRA~1\MICROS~3\2022\COMMUN~1\VC\Tools\MSVC\1438~1.331\bin\Hostx86\x86\cl.exe > CMakeFiles\Chess.dir\src\Chess.cpp.i @<<
 /nologo /TP $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E C:\Users\RebalFarhat\Desktop\cpp\ex01\exercise-1-chess-AyhamF2000\Chess\src\Chess.cpp
<<

CMakeFiles\Chess.dir\src\Chess.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/Chess.dir/src/Chess.cpp.s"
	C:\PROGRA~1\MICROS~3\2022\COMMUN~1\VC\Tools\MSVC\1438~1.331\bin\Hostx86\x86\cl.exe @<<
 /nologo /TP $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) /FoNUL /FAs /FaCMakeFiles\Chess.dir\src\Chess.cpp.s /c C:\Users\RebalFarhat\Desktop\cpp\ex01\exercise-1-chess-AyhamF2000\Chess\src\Chess.cpp
<<

# Object files for target Chess
Chess_OBJECTS = \
"CMakeFiles\Chess.dir\src\Piece.cpp.obj" \
"CMakeFiles\Chess.dir\src\Board.cpp.obj" \
"CMakeFiles\Chess.dir\src\Pieces\Rook.cpp.obj" \
"CMakeFiles\Chess.dir\src\Pieces\Knight.cpp.obj" \
"CMakeFiles\Chess.dir\src\Pieces\Bishop.cpp.obj" \
"CMakeFiles\Chess.dir\src\Pieces\Queen.cpp.obj" \
"CMakeFiles\Chess.dir\src\Pieces\King.cpp.obj" \
"CMakeFiles\Chess.dir\src\Pieces\Pawn.cpp.obj" \
"CMakeFiles\Chess.dir\src\main.cpp.obj" \
"CMakeFiles\Chess.dir\src\Chess.cpp.obj"

# External object files for target Chess
Chess_EXTERNAL_OBJECTS =

Chess.exe: CMakeFiles\Chess.dir\src\Piece.cpp.obj
Chess.exe: CMakeFiles\Chess.dir\src\Board.cpp.obj
Chess.exe: CMakeFiles\Chess.dir\src\Pieces\Rook.cpp.obj
Chess.exe: CMakeFiles\Chess.dir\src\Pieces\Knight.cpp.obj
Chess.exe: CMakeFiles\Chess.dir\src\Pieces\Bishop.cpp.obj
Chess.exe: CMakeFiles\Chess.dir\src\Pieces\Queen.cpp.obj
Chess.exe: CMakeFiles\Chess.dir\src\Pieces\King.cpp.obj
Chess.exe: CMakeFiles\Chess.dir\src\Pieces\Pawn.cpp.obj
Chess.exe: CMakeFiles\Chess.dir\src\main.cpp.obj
Chess.exe: CMakeFiles\Chess.dir\src\Chess.cpp.obj
Chess.exe: CMakeFiles\Chess.dir\build.make
Chess.exe: CMakeFiles\Chess.dir\objects1.rsp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=C:\Users\RebalFarhat\Desktop\cpp\ex01\exercise-1-chess-AyhamF2000\Chess\cmake-build-debug\CMakeFiles --progress-num=$(CMAKE_PROGRESS_11) "Linking CXX executable Chess.exe"
	"C:\Program Files\JetBrains\CLion 2021.2.3\bin\cmake\win\bin\cmake.exe" -E vs_link_exe --intdir=CMakeFiles\Chess.dir --rc=C:\PROGRA~2\WI3CF2~1\10\bin\100226~1.0\x86\rc.exe --mt=C:\PROGRA~2\WI3CF2~1\10\bin\100226~1.0\x86\mt.exe --manifests -- C:\PROGRA~1\MICROS~3\2022\COMMUN~1\VC\Tools\MSVC\1438~1.331\bin\Hostx86\x86\link.exe /nologo @CMakeFiles\Chess.dir\objects1.rsp @<<
 /out:Chess.exe /implib:Chess.lib /pdb:C:\Users\RebalFarhat\Desktop\cpp\ex01\exercise-1-chess-AyhamF2000\Chess\cmake-build-debug\Chess.pdb /version:0.0 /machine:X86 /debug /INCREMENTAL /subsystem:console  kernel32.lib user32.lib gdi32.lib winspool.lib shell32.lib ole32.lib oleaut32.lib uuid.lib comdlg32.lib advapi32.lib 
<<

# Rule to build all files generated by this target.
CMakeFiles\Chess.dir\build: Chess.exe
.PHONY : CMakeFiles\Chess.dir\build

CMakeFiles\Chess.dir\clean:
	$(CMAKE_COMMAND) -P CMakeFiles\Chess.dir\cmake_clean.cmake
.PHONY : CMakeFiles\Chess.dir\clean

CMakeFiles\Chess.dir\depend:
	$(CMAKE_COMMAND) -E cmake_depends "NMake Makefiles" C:\Users\RebalFarhat\Desktop\cpp\ex01\exercise-1-chess-AyhamF2000\Chess C:\Users\RebalFarhat\Desktop\cpp\ex01\exercise-1-chess-AyhamF2000\Chess C:\Users\RebalFarhat\Desktop\cpp\ex01\exercise-1-chess-AyhamF2000\Chess\cmake-build-debug C:\Users\RebalFarhat\Desktop\cpp\ex01\exercise-1-chess-AyhamF2000\Chess\cmake-build-debug C:\Users\RebalFarhat\Desktop\cpp\ex01\exercise-1-chess-AyhamF2000\Chess\cmake-build-debug\CMakeFiles\Chess.dir\DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles\Chess.dir\depend

