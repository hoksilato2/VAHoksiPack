@echo off
color 0E
cls
echo --------------------------------
echo     Cortana disponible en TTS
echo 		by cmdr. Hoksilato
echo --------------------------------
echo.
echo.
echo.

SETLOCAL ENABLEDELAYEDEXPANSION


if not exist %userprofile%\Cortana_Backup md %userprofile%\Cortana_Backup
if exist %userprofile%\Cortana_Backup echo Directorio %userprofile%\Cortana_Backup creado. > %temp%\cortana2ana.log

if exist "%userprofile%\Cortana_Backup\tokens_TTS_es-ES.xml" echo Detectada configuracion realizada, saltando...
if exist "%userprofile%\Cortana_Backup\tokens_TTS_es-ES.xml" goto backupreg

echo.
echo Cogiendo propiedad de tokens_TTS_es-ES.xml...
takeown /F "%windir%\SysWOW64\Speech_OneCore\common\es-ES\tokens_TTS_es-ES.xml" /A >> %temp%\cortana2ana.log

echo.
echo Dando permisos administrador a tokens_TTS_es-ES.xml...
icacls "%windir%\SysWOW64\Speech_OneCore\common\es-ES\tokens_TTS_es-ES.xml" /grant Administradores:f >> %temp%\cortana2ana.log

echo.
echo Creando copia de seguridad de tokens_TTS_es-ES.xml...
copy /Y "%windir%\SysWOW64\Speech_OneCore\common\es-ES\tokens_TTS_es-ES.xml" "%userprofile%\Cortana_Backup\tokens_TTS_es-ES.xml" >> %temp%\cortana2ana.log

echo.
echo Editando tokens_TTS_es-ES.xml...
findstr /v "</Tokens>" "%windir%\SysWOW64\Speech_OneCore\common\es-ES\tokens_TTS_es-ES.xml" > "%temp%\tokens_TTS_es-ES.xml"

echo ^<Category name="Voices" categoryBase="HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Speech_OneCore"^> > "%temp%\Ana-token.txt"
echo    ^<Token name="MSTTS_V110_esES_Ana"^> >> "%temp%\Ana-token.txt"
echo       ^<String name="" value="Microsoft Ana - Spanish (Spain)" /^> >> "%temp%\Ana-token.txt"
echo       ^<String name="LangDataPath" value="%windir%\Speech_OneCore\Engines\TTS\es-ES\MSTTSLocesES.dat" /^> >> "%temp%\Ana-token.txt"
echo       ^<String name="VoicePath" value="%windir%\Speech_OneCore\Engines\TTS\es-ES\M3082Ana" /^> >> "%temp%\Ana-token.txt"
echo       ^<String name="409" value="Microsoft Ana - Spanish (Spain)" /^> >> "%temp%\Ana-token.txt"
echo       ^<String name="CLSID" value="{179F3D56-1B0B-42B2-A962-59B7EF59FE1B}" /^> >> "%temp%\Ana-token.txt"
echo       ^<Attribute name="Version" value="11.0" /^> >> "%temp%\Ana-token.txt"
echo       ^<Attribute name="Language" value="C0A" /^> >> "%temp%\Ana-token.txt"
echo       ^<Attribute name="Gender" value="Female" /^> >> "%temp%\Ana-token.txt"
echo       ^<Attribute name="Age" value="Adult" /^> >> "%temp%\Ana-token.txt"
echo       ^<Attribute name="DataVersion" value="11.0.2013.1022" /^> >> "%temp%\Ana-token.txt"
echo       ^<Attribute name="SharedPronunciation" value="" /^> >> "%temp%\Ana-token.txt"
echo       ^<Attribute name="Name" value="Microsoft Ana" /^> >> "%temp%\Ana-token.txt"
echo       ^<Attribute name="Vendor" value="Microsoft" /^> >> "%temp%\Ana-token.txt"
echo       ^<Attribute name="SampleText" value="Has seleccionado %%1 como voz predeterminada." /^> >> "%temp%\Ana-token.txt"
echo    ^</Token^> >> "%temp%\Ana-token.txt"
echo  ^</Category^> >> "%temp%\Ana-token.txt"
echo ^</Tokens^> >> "%temp%\Ana-token.txt"

type "%temp%\Ana-token.txt" >> "%temp%\tokens_TTS_es-ES.xml"
type "%temp%\tokens_TTS_es-ES.xml" > "%windir%\SysWOW64\Speech_OneCore\common\es-ES\tokens_TTS_es-ES.xml"

echo.
echo Devolviendo permisos de TrustedInstaller a tokens_TTS_es-ES.xml...
icacls "%windir%\SysWOW64\Speech_OneCore\common\es-ES\tokens_TTS_es-ES.xml" /setowner "NT SERVICE\TrustedInstaller" >> %temp%\cortana2ana.log

echo.
echo Restaurando permisos de tokens_TTS_es-ES.xml...
icacls "%windir%\SysWOW64\Speech_OneCore\common\es-ES\tokens_TTS_es-ES.xml" /reset >> %temp%\cortana2ana.log

:backupreg
echo.
if exist "%userprofile%\Cortana_Backup\hkey-local-s-m-speech-voices-tokens.reg" echo Detectado backup de registro realizado, saltando...
if exist "%userprofile%\Cortana_Backup\hkey-local-s-m-speech-voices-tokens.reg" goto anareg

echo.
echo Creando backup de claves de registro...
reg export HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Speech\Voices\Tokens "%userprofile%\Cortana_Backup\hkey-local-s-m-speech-voices-tokens.reg"
reg export HKEY_CURRENT_USER\SOFTWARE\Microsoft\Speech_OneCore\Isolated "%userprofile%\Cortana_Backup\hkey-user-s-m-speech_onecore-isolated.reg"
echo Backup de claves creadas  >> %temp%\cortana2ana.log

:anareg
echo.
echo Modificando claves de registro...

set "SystemPath=%SystemRoot%\System32"
if exist "%SystemRoot%\Sysnative\cmd.exe" set "SystemPath=%SystemRoot%\Sysnative"

%SystemPath%\REG.EXE IMPORT "%~dp01-Voice-Ana-Cortana.reg"
echo Generadas claves de registro usando %~dp01-Voice-Ana-Cortana.reg >> %temp%\cortana2ana.log

echo.
echo Extrayendo claves Isolated...
reg query HKEY_CURRENT_USER\SOFTWARE\Microsoft\Speech_OneCore\Isolated> "%temp%\isolated.txt"
echo Claves Isolated generadas: >> %temp%\cortana2ana.log
type %temp%\isolated.txt>> %temp%\cortana2ana.log

:isolated1
echo.
cls
if exist %temp%\isolated.log del /Q %temp%\isolated.log
for /F "tokens=1,2,3,4,5,6 delims=\" %%a in (%temp%\isolated.txt) do ( 
	echo %%f>>%temp%\isolated.log
	echo %%f>%temp%\isocode.log
	set /p isocode=<"%temp%\isocode.log"
	echo Windows Registry Editor Version 5.00 > %temp%\isocode.reg
	echo. >> %temp%\isocode.reg
	echo [HKEY_CURRENT_USER\SOFTWARE\Microsoft\Speech_OneCore\Isolated\!isocode!\HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Speech_OneCore\Voices\Tokens\MSTTS_V110_esES_Ana] >> %temp%\isocode.reg
	echo @="Microsoft Ana - Spanish (Spain)" >> %temp%\isocode.reg
	echo "LangDataPath"="%%windir%%\\Speech_OneCore\\Engines\\TTS\\es-ES\\MSTTSLocesES.dat" >> %temp%\isocode.reg
	echo "VoicePath"="%%windir%%\\Speech_OneCore\\Engines\\TTS\\es-ES\\M3082Ana" >> %temp%\isocode.reg
	echo "409"="Microsoft Ana - Spanish (Spain)" >> %temp%\isocode.reg
	echo "CLSID"="{179F3D56-1B0B-42B2-A962-59B7EF59FE1B}" >> %temp%\isocode.reg
	echo. >> %temp%\isocode.reg
	echo [HKEY_CURRENT_USER\SOFTWARE\Microsoft\Speech_OneCore\Isolated\!isocode!\HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Speech_OneCore\Voices\Tokens\MSTTS_V110_esES_Ana\Attributes] >> %temp%\isocode.reg
	echo "Version"="11.0" >> %temp%\isocode.reg
	echo "Language"="C0A" >> %temp%\isocode.reg
	echo "Gender"="Female" >> %temp%\isocode.reg
	echo "Age"="Adult" >> %temp%\isocode.reg
	echo "DataVersion"="11.0.2013.1022" >> %temp%\isocode.reg
	echo "SharedPronunciation"="" >> %temp%\isocode.reg
	echo "Name"="Microsoft Ana" >> %temp%\isocode.reg
	echo "Vendor"="Microsoft" >> %temp%\isocode.reg
	echo "SampleText"="Has seleccionado %%1 como voz predeterminada." >> %temp%\isocode.reg
	
	regedit /s %temp%\isocode.reg
	echo clave de registro modificada con isolated !isocode!
	echo clave de registro modificada con isolated !isocode! >> %temp%\cortana2ana.log
)

echo.
echo Activando voces adicionales de Windows 10...
powershell -File %~dp0AV.ps1

:fin

