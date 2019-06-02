@echo off
REM set result=
REM set month=
set day=

rem =====================
REM || Gets current day.
rem =====================

set day=%dat:~7, 2%

rem ===================================
rem || 08 and 09  reads as octal so
rem || it has to be set as 8 or 9
rem ===================================

if /i %day% == 08 (
    set day=8
)
if /i %day% == 09 (
    set day=9
)

if /i %day% lss 10 (
    set/a day1=%date:~8, 1%
)
if /i %day% geq 10 (
    set/a day2=%date:~7, 2%
)

rem ***********************************************
rem ===================================
rem ==== months with 31 days ==========
rem ===================================

rem set/a month=%date:~5, 1%
rem if /i %month% == 1 set result=1
rem if /i %month% == 3 set result=1
rem if /i %month% == 5 set result=1
rem if /i %month% == 7 set result=1
rem if /i %month% == 8 set result=1
rem set/a month=%date:~4, 2%
rem if /i %month% == 10 set result=1
rem if /i %month% == 12 set result=1

rem ===================================
rem ==== months with 30 days ==========
rem ===================================

rem set/a month=%date:~5, 1%
rem if /i %month% == 2 set result=2
rem if /i %month% == 4 set result=2
rem if /i %month% == 6 set result=2
rem if /i %month% == 9 set result=2
rem set/a month=%date:~4, 2%
rem if /i %month% == 11 set result=2
rem ***********************************************

forfiles/p "%userprofile%\cookies" /m *.txt /s /d -%day% /c "cmd /c del/s @path"
forfiles/p "%userprofile%\cookies" /m *.txt /s /d -%day% /c "cmd /c erase/s @path"
rem forfiles/p %userprofile%\cookies /m *.txt /s /d -%day% /c "cmd /c rm -v @path @file @fname@ext"

pause

rem ***********************************************
rem echo if /i %~n0 == %~n0 (
rem pause
rem call temp.bat
rem pause
rem ) else (
rem echo if /i NOT %n0 == %n0 (
rem pause
exit
rem )
rem )
