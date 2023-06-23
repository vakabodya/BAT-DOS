@echo off
echo Starting BAT-DOS...
echo.
echo.
echo HIMEM is testing extended...done.
echo.
DOS\SMARTDRV.BAT /X

:command_prompt
set /p command="C:\>"

rem Check if the command is empty
if "%command%"=="" goto command_prompt

rem Handle the command
if "%command%"=="dir" goto command_dir
if "%command%"=="cd" goto command_cd
if "%command%"=="copy" goto command_copy
if "%command%"=="del" goto command_del
if "%command%"=="exit" goto command_exit

rem Handle unrecognized commands
echo Unrecognized command: %command%
goto command_prompt

:command_dir
rem Add your logic for the "dir" command here
dir
goto command_prompt

:command_cd
rem Add your logic for the "cd" command here
cd %command:~3%
goto command_prompt

:command_copy
rem Add your logic for the "copy" command here
copy %command:~5%
goto command_prompt

:command_del
rem Add your logic for the "del" command here
del %command:~4%
goto command_prompt

:command_exit
echo Exitting BAT-DOS...
exit
