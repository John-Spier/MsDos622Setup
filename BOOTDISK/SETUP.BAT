@echo off
set ninex=%1
rem xmsdsk 16 s: /y > nul
s:
disk 1|find "No partitions defined" > nul
if not errorlevel 1 goto empty
disk 1|find " PRI DOS"|find "DOS"|find "FAT" > nul
if errorlevel 1 goto fail
disk 1|find " PRI DOS"|find "C:"|find "Unformatted"|find "FAT" > nul
if not errorlevel 1 goto format
disk 1|find "      PRI DOS"|find "C:"|find "FAT" > nul
if not errorlevel 1 disk /act /p:1
:setup
choice Setup MS-DOS 6.22
if errorlevel 2 goto end
rem goto end
:butt
r:
cd dos622
setup2.exe
if exist s:\sd.bat goto sd
goto end
:empty
choice Partition hard disk
if errorlevel 2 goto end
rem goto end
:asshole
disk 1 /cre /-32 /pri /for /q /v:FISHSOFT
echo Press any key to restart the computer.
pause >nul
shutdown r
goto end
:fail
echo Setup Failed!
goto end
:format
choice Format hard disk
if errorlevel 2 goto end
rem goto end
:anus
format c: /v:FISHSOFT /autotest /s /y
goto setup
:sd
S:
SD.BAT
:end
