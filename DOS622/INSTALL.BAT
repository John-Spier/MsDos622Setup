@echo off
cls
set one=%1
set two=%2
set three=%3
set four=%4
if "%one%"=="" goto dontdo

goto %four%a
:0a
goto %three%
:0
goto end
:4
rem copy wina20.386 c:\
rem pause
:2
if exist %one%.axe goto autoexec
:2b
if exist %one%.cfg goto config
:2c

:1
if not exist %two% md %two%

pkunzip -d %one%.zip %two%\
rem the next line might not work IT DOES
echo path %%path%%;%two% >> C:\autoexec.bat
goto end
:autoexec
rem stuff
sed s/THEFILE123/%two%/ %one%.axe >> c:\autoexec.bat
goto 2b
:config
rem stuff
sed s/THEFILE123/%two%/ %one%.cfg >> c:\config.sys
goto 2c
:dontdo
echo do not use this file. it is for use by setup2.exe only.
goto end

:1a
if %three%==0 goto end
%one%.bat %one% %two% %three% %four%
:END