@echo off
REM Determine script location for Windows Batch file

set scriptDir=%~dp0
REM scriptDir=%scriptDir:~0,-1%

echo Current script directory is %scriptDir%
pause