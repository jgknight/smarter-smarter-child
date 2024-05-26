@echo off
setlocal enabledelayedexpansion

rem This script launches SmarterSmarterChild under Windows. Because it assumes
rem that the executable and settings.bat file are located in the same directory
rem as this script, the script can be run from any directory.

set SCRIPT_DIR=%~dp0
set ENV_FILE=%SCRIPT_DIR%settings.bat
set EXEC_FILE=%SCRIPT_DIR%bin\smarter_smarter_child.exe

rem Load the settings file.
if exist "%ENV_FILE%" (
    call "%ENV_FILE%"
) else (
    echo error: environment file '%ENV_FILE%' not found.
    exit /b 1
)

rem Start SmarterSmarterChild.
if exist "%EXEC_FILE%" (
    echo starting...
    start /b "" "%EXEC_FILE%"
) else (
    echo error: executable '%EXEC_FILE%' not found.
    exit /b 1
)
