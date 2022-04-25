@echo off
set two=%2


goto %3

:0
goto done




:1

pkunzip -d sbpnp.zip %two%\
echo %two%\envmastr.exe /l winbootdir= >> c:\autoexec.bat
echo %two%\ctcm.exe >> c:\autoexec.bat
goto done

:2

pkunzip -d sbpci.zip %two%\

pkunzip -d ecw.zip %two%\
echo device=%two%\emm386.exe auto >> c:\config.sys
echo SET BLASTER=A220 I7 D1 H7 P330 T6 >> c:\autoexec.bat
echo SET SBPCI=%two% >> c:\autoexec.bat
echo %two%\SBINIT.COM >> c:\autoexec.bat
goto done

:3
pkunzip -d sblive.zip %two%\
pkunzip -d ecw.zip %two%\
echo device=%two%\emm386.exe ON >> c:\config.sys
echo SET CTSYN=%two% >> c:\autoexec.bat
echo SET MIDI=SYNTH:1 MAP:E MODE:0 >> c:\autoexec.bat
echo SET BLASTER=A220 I5 D1 H5 P330 E620 T6 >> c:\autoexec.bat
echo %two%\SBEINIT.COM >> c:\autoexec.bat
goto done

:4
pkunzip -d ess.zip %two%\
echo %two%\ESSCFG.EXE /I:7 /D:1 >> c:\autoexec.bat
goto done

:5
pkunzip -d via.zip %two%\
echo %two%\VIAUDIO.COM >> c:\autoexec.bat
echo %two%\VIAFMTSR.COM >> c:\autoexec.bat
echo SET BLASTER=A220 I5 D1 P330 >> c:\autoexec.bat
goto done

:6
pkunzip -d cmedia.zip %two%\
echo %two%\SETAUDIO.COM >> c:\autoexec.bat
echo SET BLASTER=A220 I5 D1 H5 T4 >> c:\autoexec.bat
echo %two%\C3DMIX.COM /MFF000 /FFF000 /WFF000 /L00100 /E00100 /A00100 /C00100 /P00000 /400000 /R0f0ff /D040ff >> c:\autoexec.bat
goto done


:done