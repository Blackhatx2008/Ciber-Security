ECHO OFF
color 5e
cls
if EXIST "Control Panel.{21EC2020-3AEA-1069-A2DD-08002B30309D}" goto UNLOCK
if NOT EXIST Privado goto MDLOCKER
:CONFIRM
set/p "cho=lock folder?? (s/n)? "
if %cho%==S goto LOCK
if %cho%==s goto LOCK
if %cho%==n goto END
if %cho%==N goto END
echo Eleccion Invalida
pause
cls
goto CONFIRM
:LOCK
ren Privado "Control Panel.{21EC2020-3AEA-1069-A2DD-08002B30309D}"
attrib +h +s "Control Panel.{21EC2020-3AEA-1069-A2DD-08002B30309D}"
msg * Se ha bloqueado la carpeta
goto End
:UNLOCK
set /p "pass=Write the password to enter "
if NOT %pass%==password goto FAIL
attrib -h -s "Control Panel.{21EC2020-3AEA-1069-A2DD-08002B30309D}"
ren "Control Panel.{21EC2020-3AEA-1069-A2DD-08002B30309D}" Privado
msg * Acceso permitido
goto End
:FAIL
goto UNLOCK2
:FAIL2
goto end
shutdown /p
:MDLOCKER
md Privado
echo La carpeta se ha creado
pause
goto End
:UNLOCK2
echo last Chance
set /p "pass=Clave? "
if not %pass%==password goto FAIL2
attrib -h -s "Control Panel.{21EC2020-3AEA-1069-A2DD-08002B30309D}"
ren "Control Panel.{21EC2020-3AEA-1069-A2DD-08002B30309D}" Privado
msg * Desbloqueado
:End