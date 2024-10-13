@echo off
:OTHERPC
set /P "CompName=Please enter the computer name: "
:ANOTHERTASK
set /P "TaskName=Please enter the task name: "
taskkill /s %CompName% /pid %TaskName%* /f
pause
@echo off
ECHO y=Yes , n=No , o=Other PC 
SET /P M=Kill Another Task ?:
IF %M%==y GOTO ANOTHERTASK
IF %M%==n GOTO NO
IF %M%==o GOTO OTHERPC

:NO
EXIT