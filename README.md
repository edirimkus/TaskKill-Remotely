# Remote Task Killer

## Overview
This batch script allows administrators to remotely terminate tasks on specified computers. It is useful for managing tasks and troubleshooting issues across multiple machines.

## Script Breakdown
1. **Set Computer Name:**
   Prompts the user to enter the computer name.
   ```batch
   :OTHERPC
   set /P "CompName=Please enter the computer name: "
   ```

2. **Set Task Name**: Prompts the user to enter the task name or process ID and terminates the task on the specified computer.
   ```batch
   :ANOTHERTASK
   set /P "TaskName=Please enter the task name: "
   taskkill /s %CompName% /pid %TaskName%* /f
   pause
   ```

3. **Prompt for More Actions**: Asks the user if they want to terminate another task on the same or different computer or exit.
   ```batch
   @echo off
   ECHO y=Yes , n=No , o=Other PC
   SET /P M=Kill Another Task ?: 
   IF %M%==y GOTO ANOTHERTASK
   IF %M%==n GOTO NO
   IF %M%==o GOTO OTHERPC
   :NO
   EXIT
   ```

## Usage

1. **Run the Script**: Execute the script in a PowerShell session with appropriate permissions.
   ```batch
   .\remote-task-killer.bat
   ```

## License
This script is licensed under the MIT License. See the LICENSE file for details.


