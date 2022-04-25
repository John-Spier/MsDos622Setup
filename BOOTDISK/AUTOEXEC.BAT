@echo off
set temp=s:\
lh shsucdx.exe /d:banana01,R
lh ctmouse.exe
lh doskey.com
lh doslfn.com
xmsdsk.exe 16 s: /y
copy shutdown.com s:\
rem copy sd.bat s:\
path a:\;r:\dos622
echo Loading Setup...
setup.bat
