@echo off
REM Goodbye_test.txt is a file of 78 lines
REM this script will select a line at random
REM and echo it on screen
:start
echo Hi
echo Press any key to say Good bye..
pause>null
goto goodbye

:start2
cls
echo Hi again..
echo Press anykey to say Good bye..
pause>nul

:goodbye
cls
set linecount=78
set /a number=(%random% %% %linecount%)+1
For /f "skip=%number% delims=" %%L in ('type %~dp0\Goodbye_test.txt') do set line=%%L & goto next
:next
echo %line%
echo Press anykey to say Hi
pause>null
goto :start2