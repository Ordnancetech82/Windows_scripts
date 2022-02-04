SET /P Drive= Input Drive Letter
ren %Drive%:\Windows\System32\config\DEFAULT default.old
ren %Drive%:\Windows\System32\config\SAM sam.old
ren %Drive%:\Windows\System32\config\SECURITY security.old
ren %Drive%:\Windows\System32\config\SOFTWARE software.old
ren %Drive%:\Windows\System32\config\SYSTEM system.old

pause

copy %Drive%:\Windows\System32\config\RegBack\DEFAULT %Drive%:\Windows\System32\config
copy  %Drive%:\Windows\System32\config\RegBack\SAM %Drive%:\Windows\System32\config
copy %Drive%:\Windows\System32\config\RegBack\SECURITY %Drive%:\Windows\System32\config
copy %Drive%:\Windows\System32\config\RegBack\SOFTWARE %Drive%:\Windows\System32\config
copy %Drive%:\Windows\System32\config\RegBack\SYSTEM %Drive%:\Windows\System32\config

pause