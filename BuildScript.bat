@echo off
REM Advanced Build Script for HiPplus Language

REM Define variables
set SRC_DIR=src
set OUT_DIR=bin
set COMPILER=hipplus-compiler
set FLAGS=--optimize --verbose

REM Create output directory if it doesn't exist
if not exist %OUT_DIR% mkdir %OUT_DIR%

REM Compile source files
echo Compiling HiPplus source files...
%COMPILER% %SRC_DIR%\*.hip+ -o %OUT_DIR%\output.exe %FLAGS%

REM Check compilation status
if errorlevel 1 (
    echo Compilation failed.
) else (
    echo Compilation successful.
)

REM Pause to keep the console window open
pause

