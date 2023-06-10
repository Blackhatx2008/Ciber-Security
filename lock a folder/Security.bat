ECHO OFF
color 1e
cls
if EXIST "Control Panel.{21EC2020-3AEA-1069-A2DD-08002B30309D}" goto UNLOCK
if NOT EXIST Privado goto MDLOCKER
:CONFIRM
set/p "cho=Estas seguro que queres bloquear la carpeta (s/n)? "
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
set /p "pass=Escriba la clave para desbloquear "
if NOT %pass%==2223504604guillem goto FAIL
attrib -h -s "Control Panel.{21EC2020-3AEA-1069-A2DD-08002B30309D}"
ren "Control Panel.{21EC2020-3AEA-1069-A2DD-08002B30309D}" Privado
msg * Acceso permitido
goto End
:FAIL
msg * Clave incorrecta, vuelva a intentarlo 
goto UNLOCK2
:FAIL2
echo Acceso denegado, reinicie el programa
goto end
:MDLOCKER
md Privado
echo La carpeta se ha creado
pause
goto End
:UNLOCK2
echo Ultima Chance
set /p "pass=Clave? "
if not %pass%==theflacee goto FAIL2
attrib -h -s "Control Panel.{21EC2020-3AEA-1069-A2DD-08002B30309D}"
ren "Control Panel.{21EC2020-3AEA-1069-A2DD-08002B30309D}" Privado
msg * Desbloqueado
:End