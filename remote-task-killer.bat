@echo off
REM Initialize the process

:OTHERPC
set /P "CompName=Please enter the computer name: "

:ANOTHERTASK
set /P "TaskName=Please enter the task name or process ID: "

REM Taskkill command to end the specified task on the remote computer
taskkill /s %CompName% /pid %TaskName%* /f

REM Pause to allow user to see the output
pause

:AGAIN
echo y=Yes , n=No , o=Other PC 
set /P "M=Kill Another Task ?: "

if /I "%M%"=="y" goto ANOTHERTASK
if /I "%M%"=="n" goto NO
if /I "%M%"=="o" goto OTHERPC

:INVALID
echo Invalid option. Please enter y, n, or o.
goto AGAIN

:NO
exit
