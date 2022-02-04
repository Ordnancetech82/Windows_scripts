@echo off
Echo 1. Enable Fastboot
Echo 2. Disable Fastboot
Echo.

Choice /C 12 /M "Enable or Disable Fastboot?"

If Errorlevel 2 Goto dable
If Errorlevel 1 goto enabl

REM +++++Enable Fastboot+++++
:enabl
reg add "HKLM\System\CurrentControlSet\Control\Session Manager\Power" /v HiberbootEnabled /t REG_Dword /d 0x00000001 /f
goto end

REM +++++Disable Fastboot+++++
:dable
reg add "HKLM\System\CurrentControlSet\Control\Session Manager\Power" /v HiberbootEnabled /t REG_Dword /d 0x00000000 /f
goto end

:end
Echo Change has been made
pause 
