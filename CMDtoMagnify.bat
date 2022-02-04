Set /P "Label=Enter Volume Letter"

cd %Label%:\Windows\System32
@echo off
cls
Echo A. Set CMD Override
Echo B. Revert CMD Override
Echo.

Choice /C ab /M "Select Option"

If Errorlevel a goto a
If Errorlevel b goto b

@echo off

:a
Ren cmd.exe cmd.old
Ren magnify.exe cmd.exe
Ren cmd.old magnify.exe
pause
goto end

:b
Ren magnify.exe cmd.old
Ren cmd.exe magnify.exe
Ren cmd.old cmd.exe
pause
goto end

:end