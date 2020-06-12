@echo off
mode con: cols=115 lines=45
set OPTIONSVER=3.3.3-1
set PACKVER=3.3.6-2
set VAVER=1.7.3
set VAPVER=3.3.6-2
set EDDIVER=3.3.6
set PERSOVER=3.3.6-1b
set G19SVER=3.3.3
color 0E
echo.                                                                                                    
echo         [0m[37m                                                   ...                                            
echo                                                     ..':cc;co;;,.                                         
echo                                              ..',;:cdkkkko,..'oxl:,.                                      
echo                                        ..';::::cclolc;..      ,oc',::'.                                   
echo                                  .':c:c:;,',;;;::,[0m[7m²²²²²²²²²²±±±±±±°°°°°°°°°°°°     HoksiPack %PACKVER%      [0m[37m
echo                               .''','.....;:cc;'.       [0m[7m²²±±±±±±±°°°°°°°°°°°°           by cmdr. Hoksilato  [0m[37m
echo                            .':c;.    .;:c;'.                     ,o;     .,::,..                          
echo                           ';;..  .':::,.                          ,l,       .':c;..                       
echo                       ..,;,...,;c:,..                              ,l,         .,::,..                    
echo                     .,ccc;,:c:;'.                                   'c;.          .,cc;.
echo                  ,lolccc;'.                                          .cl.            .,::,.
echo                 ,ldxd:;'.                                             .cl.              .,::,.            
echo                ,do:..                                                  .cl.                .,::'          
echo              ..'.                                                       .cl.                 .:l'         
echo              :kd'                                                        .cl.                ,do.         
echo             .cddl.                                                        .cc.             .,lkl.         
echo            .:d,.cl.                     'c;...                             .cc.           .cldl.          
echo            .ckl.'l:.                   ,oc,::ccc;'..                        .:l.         .cllo,           
echo            .c0k' .l:.                 .ox:'.'''';:ccc;.                      .cl.       ,l:;o:            
echo            .cKk'  ;o,                  ..,:ccc:::;'cd;                        .cl.     ,o;.co.            
echo            .cKk.  .:l'                        ...';:,                          .cl.  .,c;..lc.            
echo            .c0k'   .:o,                                                         .cl'.cc. .co'             
echo            'od;.    .lo.                                                         .cloc.  ;o:.             
echo           .:d'       'oc.                                                      .,:dkl.  'ol.              
echo            :o'        'l:.                                                ..,:::,;do.  .lo'               
echo           .:o'         :d'                                           ..;:cc:,..  ;o;   .ll.               
echo           .:d'          dl..                                     ..;:cc;'..     .lo.  .co'                
echo           .:d'          :ccl                                 .',:::;..          ;o;   ,o;                 
echo           .:d'            :o.                          ...,;;::,.              .ol.  .ll.                 
echo           'l:.            .l:.                    ..';:cc:;..                 .co'   :o.                  
echo           :d'              'oc.               ..;::::;..                      .ll.  .lc                   
echo           :o.               ;o,           ..,;c:,..                                              
echo           ;xdc;'...         .:l'     ..,::::,.                        [0m - VoiceAttack: [91m%VAVER%       [0m[37m
echo           .,ldxxxocccccc;'''',ll'..,cc:,'..                           [0m  ú VAP:        [92m%VAPVER%            [0m[37m
echo              :dc::lol:'.,:::ccoxc:do,.                                [0m - EDDI:        [92m%EDDIVER%              [0m[37m
echo                   .,:c:;,.   .....:c:;'.                              [0m  ú Shirka:     [92m%PERSOVER%          [0m[37m
echo                       .';;,..       .';c:,'.                          [0m - G19s:        [91m%G19SVER%    [0m[37m
echo                           .;::;,.       .,;:cc:'.                     [0m  ú Options:   [91m %OPTIONSVER%           [0m[37m
echo                              .,:cc:'.       .',:cc;'.                    
echo                                 ..,:::;'.        .,:::;'..               ,oxd,                            
echo                                      .';::....       .';::::,..         .okx,                             
echo                                          ...;cccccc;,''',,,',ccc;'.    .ckk;                              
echo                                               .....,:::::ccccclodxxd,..'ld;                               
echo                                                           .....,:clc',:,,'                                 
echo    [0m­Pulsa una tecla para empezar!
pause>nul

net session >nul 2>&1
if not %errorlevel% == 0 goto ERROR_ADMIN
 
cls                                                                                                    
echo.                                       
echo.                                     
echo.                                 
echo                                            [0m[7m²²²²²²²²²²±±±±±±°°°°°°°°°°°°     HoksiPack %PACKVER%      [0m[0m
echo                                                 [0m[7m²²±±±±±±±°°°°°°°°°°°°           by cmdr. Hoksilato  [0m[0m                                                                                                    
echo.
echo.
echo.
echo.
echo.
echo Instalador Ejecut ndose en: 
echo    [96m%~dp0

:quequieres
echo.
echo [0m¨Qu‚ quieres hacer?
echo.
echo 1. Instalar
echo 2. Actualizar (solo configuraci¢n)
echo 3. Reparar
echo.
SET /p inst_mode=Selecciona una opci¢n (1,2,3):[97m 

if %inst_mode%==1 goto Instalar
if %inst_mode%==2 goto Actualizar
if %inst_mode%==3 goto Reparar

echo.
echo No has contestado correctamente, Escribe la opci¢n que quieras.
echo Te lo vuelvo a preguntar,
goto quequieres

:Instalar
SET /p inst_VA=[0m¨Quieres instalar VoiceAttack? (S/N):[97m 
SET /p inst_EDDI=[0m¨Quieres instalar EDDI? (S/N):[97m
SET /p inst_G19s=[0m¨Quieres instalar G19s Companion? (S/N):[97m 
SET /p inst_Ana=[0m¨Quieres poder usar la voz de Cortana? (S/N):[97m 


if %inst_EDDI%==s set inst_EDDI=S
if %inst_EDDI%==si set inst_EDDI=S

if %inst_VA%==s set inst_VA==S
if %inst_VA%==si set inst_VA==S

if %inst_G19s%==s set inst_G19s==S
if %inst_G19s%==si set inst_G19s==S

if %inst_Ana%==s set inst_Ana==S
if %inst_Ana%==si set inst_Ana==S
goto VA

:Actualizar
set inst_EDDI=N
set inst_VA==N
set inst_G19s==N
set inst_Ana==N
goto VA

:Reparar
echo.
echo Reparar, ejecutar  de nuevo los instaladores de los programas que quieras y renombrar  las carpetas de su configuraci¢n.
echo.
SET /p inst_VA=[0m¨Quieres reparar VoiceAttack? (S/N):[97m 
SET /p inst_EDDI=[0m¨Quieres reparar EDDI? (S/N):[97m
SET /p inst_G19s=[0m¨Quieres reparar G19s Companion? (S/N):[97m 
SET /p inst_Ana=[0m¨Quieres reparar la voz de Cortana? (S/N):[97m 

if %inst_EDDI%==s set inst_EDDI=S
if %inst_EDDI%==si set inst_EDDI=S

if %inst_VA%==s set inst_VA==S
if %inst_VA%==si set inst_VA==S

if %inst_G19s%==s set inst_G19s==S
if %inst_G19s%==si set inst_G19s==S

if %inst_Ana%==s set inst_Ana==S
if %inst_Ana%==si set inst_Ana==S
goto VA

:VA
if not %inst_VA% == S goto EDDI
if exist "%~dp0Extras\VAPORTABLE\VoiceAttack.exe" goto VAPORTABLE

:VANORMAL

echo.
echo [0mAbriendo instalador VoiceAttack %VAVER%...
"%~dp0VA\VoiceAttackinstaller.exe"

echo.
echo Si has abierto VoiceAttack, ci‚rralo
echo Luego lo configuraremos mas tarde
pause
goto EDDI

:VAPORTABLE
echo.
echo Se ha detectado que dispones de la versi¢n Portable de VoiceAttack.
SET /P VA_portable=¨Quieres usar esta versi¢n en lugar de la instalaci¢n oficial? (S/N)

if %VA_portable%==N goto VANORMAL
if %VA_portable%==n goto VANORMAL
if %VA_portable%==NO goto VANORMAL
if %VA_portable%==S set inst_VA=portable
if %VA_portable%==s set inst_VA=portable
if %VA_portable%==si set inst_VA=portable 

echo.
echo De acuerdo, entonces se copiar  VoiceAttack en tu escritorio.
echo Despu‚s de todo este proceso podr s moverlo donde quieras.
echo.
pause

echo [0mModificando archivo Hosts...[37m
echo.>> C:\Windows\System32\drivers\etc\hosts
echo 127.0.0.1 www.voiceattack.com>> C:\Windows\System32\drivers\etc\hosts

::Buscando Escritorio...
for /f "tokens=3" %%a in ('reg query "HKCU\Software\Microsoft\Windows\CurrentVersion\Explorer\Shell Folders"  /v Desktop  ^|findstr /ri "REG_SZ"') do set DESKTOP=%%a

echo.
Echo [0mCopiando VoiceAttack Portable en %DESKTOP%...[37m
md %DESKTOP%\VAPORTABLE
xcopy /Y /E /Q "%~dp0Extras\VAPORTABLE" "%DESKTOP%\VAPORTABLE"
echo.

:EDDI
if not %inst_EDDI% == S goto G19s
if %inst_VA% == portable echo EDDI esta preinstalado en la versi¢n Portable de VA.
if %inst_VA% == portable echo Redirigiendo instalacion...
if %inst_VA% == portable goto G19s
echo.
echo [0mAbriendo instalador EDDI %EDDIVER%...

echo.
echo Si has instalado VoiceAttack, debes instalar EDDI en la siguiente carpeta:
echo.
echo [96m.\VoiceAttack\Apps\EDDI[0m
"%~dp0EDDI\EDDI-%EDDIVER%.exe"
echo.
echo Si has abierto EDDI, ci‚rralo
echo Luego lo configuraremos.
pause

:G19s
if not %inst_G19s% == S goto PrepareALL
echo.
echo Instalando Elite G19s Companion %G19SVER%...
"%~dp0G19s\EliteG19s-%G19SVER%.msi" /passive


:PrepareALL
cls                                                                                                    
echo.                                       
echo.                                     
echo.                                 
echo                                            [0m[7m²²²²²²²²²²±±±±±±°°°°°°°°°°°°     HoksiPack %PACKVER%      [0m[0m
echo                                                 [0m[7m²²±±±±±±±°°°°°°°°°°°°           by cmdr. Hoksilato  [0m[0m                                                                                                    
echo.
echo.
echo.
echo.
echo.
if %inst_mode% == 1 echo Preparando configuraci¢n...
if %inst_mode% == 2 echo Actualizando configuraci¢n...
if %inst_mode% == 3 echo Reparando y actualizando configuraci¢n...



set "SystemPath=%SystemRoot%\System32"
if exist "%SystemRoot%\Sysnative\cmd.exe" set "SystemPath=%SystemRoot%\Sysnative"

%SystemPath%\WindowsPowerShell\v1.0\powershell set-executionpolicy remotesigned
rem powershell %~dp0listsoft.ps1
%SystemPath%\WindowsPowerShell\v1.0\powershell -EncodedCommand RwBlAHQALQBDAGgAaQBsAGQASQB0AGUAbQAgAEgASwBMAE0AOgBcAFMATwBGAFQAVwBBAFIARQBcAFcAbwB3ADYANAAzADIATgBvAGQAZQBcAE0AaQBjAHIAbwBzAG8AZgB0AFwAVwBpAG4AZABvAHcAcwBcAEMAdQByAHIAZQBuAHQAVgBlAHIAcwBpAG8AbgBcAFUAbgBpAG4AcwB0AGEAbABsACAAfAAgACUAIAB7ACAARwBlAHQALQBJAHQAZQBtAFAAcgBvAHAAZQByAHQAeQAgACQAXwAuAFAAcwBQAGEAdABoACAAfQAgAHwAIABTAGUAbABlAGMAdAAgAEkAbgBzAHQAYQBsAGwATABvAGMAYQB0AGkAbwBuACAAfAAgAE8AdQB0AC0ARgBpAGwAZQAgAC0AZgBpAGwAZQBwAGEAdABoACAAJABlAG4AdgA6AHQAZQBtAHAAXABsAGkAcwB0AHMAbwBmAHQALgBsAG8AZwANAAoADQAKAEcAZQB0AC0AQwBoAGkAbABkAEkAdABlAG0AIABIAEsATABNADoAXABTAE8ARgBUAFcAQQBSAEUAXABNAGkAYwByAG8AcwBvAGYAdABcAFcAaQBuAGQAbwB3AHMAXABDAHUAcgByAGUAbgB0AFYAZQByAHMAaQBvAG4AXABVAG4AaQBuAHMAdABhAGwAbAAgAHwAIAAlACAAewAgAEcAZQB0AC0ASQB0AGUAbQBQAHIAbwBwAGUAcgB0AHkAIAAkAF8ALgBQAHMAUABhAHQAaAAgAH0AIAB8ACAAUwBlAGwAZQBjAHQAIABJAG4AcwB0AGEAbABsAEwAbwBjAGEAdABpAG8AbgAgAHwAIABPAHUAdAAtAEYAaQBsAGUAIAAtAGEAcABwAGUAbgBkACAALQBmAGkAbABlAHAAYQB0AGgAIAAkAGUAbgB2ADoAdABlAG0AcABcAGwAaQBzAHQAcwBvAGYAdAAuAGwAbwBnAA0ACgANAAoA


echo.
echo [0mComprobando instalaci¢n de EDDI...[37m
echo.
type "%temp%\listsoft.log" | findstr /C:"EDDI">"ruta_EDDI.log"
set /p ruta_EDDI=<"ruta_EDDI.log"
if %errorlevel% == 1 set ruta_EDDI=NO
if "%ruta_EDDI%" == "NO" echo [31mNo se ha encontrado EDDI instalado.[37m
if not "%ruta_EDDI%" == "NO" echo [0mRuta de instalaci¢n de EDDI:[37m
if not "%ruta_EDDI%" == "NO" echo %ruta_EDDI%

echo.
echo [0mComprobando instalaci¢n VoiceAttack...[37m
echo.
type "%temp%\listsoft.log" | findstr /C:"VoiceAttack" | findstr /V "EDDI">ruta_VA.log
rem if %errorlevel% == 1 type "%temp%\listsoft.txt" | findstr /C:"VoiceAttack" | findstr /V "EDDI">ruta_VA.log
set /p ruta_VA=<ruta_VA.log
if %errorlevel% == 1 set ruta_VA=NO
if "%ruta_VA%" == "NO" echo [31mNo se ha encontrado VoiceAttack instalado.[37m
if not "%ruta_VA%" == "NO" echo [0mRuta de instalaci¢n de VoiceAttack:[37m
if not "%ruta_VA%" == "NO" echo %ruta_VA%

if not "%ruta_VA%" == "NO" goto NEXT

echo En algunos casos, si tienes la versi¢n de Steam instalada puede que no lo detecte :-(
set /p VAREPAIR=¨Quieres mirar de arreglarlo? (S/N): 

if %VAREPAIR%==s set VAREPAIR=S
if %VAREPAIR%==si set VAREPAIR=S
if not %VAREPAIR%==S goto NEXT

set VAU=C
:FINDSTEAM
echo.
echo [31mBuscando instalaci¢n de VoiceAttack versi¢n Steam en %VAU%:\...[37m
dir %VAU%:\ /s /b /o:n /ad > %temp%\allfolders.log
type "%temp%\allfolders.log" | findstr /C:"VoiceAttack" | findstr /C:"Steam">ruta_VA.log 
set /p ruta_VA=<ruta_VA.log
echo [0mRuta de instalaci¢n de VoiceAttack:[37m
echo %ruta_VA%
if %errorlevel% == 1 goto FINDSTEAMNOC
goto NEXT

:FINDSTEAMNOC
echo [0mNo se ha encontrado la ruta de instalaci¢n de VoiceAttack.
SET /P VAU=Si est  en una unidad que no es la C:\, escribe aqu¡ la unidad (SOLO la letra):[37m 

echo Unidad seleccionada: %VAU%:\


:NEXT
echo.
echo [0mComprobando instalaci¢n de Elite G19s Companion...[37m
echo.
if exist %localappdata%\Programs\EliteG19s\EliteG19s.Windows.exe set ruta_G19s=%localappdata%\Programs\EliteG19s
if not exist %localappdata%\Programs\EliteG19s\EliteG19s.Windows.exe set ruta_G19s=NO
if "%ruta_G19s%" == "NO" echo [31mNo se ha encontrado Elite G19s Companion instalado.[37m
if not "%ruta_G19s%" == "NO" echo [0mRuta de instalaci¢n de Elite G19s Companion:[37m
if not "%ruta_G19s%" == "NO" echo %ruta_G19s%

:PrepareEDDI
if %inst_EDDI% == S goto CONFEDDI
if not "%ruta_EDDI%" == "NO" echo.
if not "%ruta_EDDI%" == "NO" echo [0mSe ha detectado EDDI ya instalado
set conf_EDDI=Notset
if not "%ruta_EDDI%" == "NO" set /p conf_EDDI=¨Deseas actualizar su configuraci¢n? (S/N):[37m 
if %conf_EDDI% == s set conf_EDDI=S
if %conf_EDDI% == si set conf_EDDI=S
if %conf_EDDI% == S goto CONFEDDI

if not %inst_EDDI% == S goto PrepareVA
if %inst_VA% == portable echo EDDI ya viene preinstalado en VA Portable
if %inst_VA% == portable echo Redirigiendo instalacion...
if %inst_VA% == portable goto PrepareG19s
goto PrepareVA

:CONFEDDI
echo.
echo [0mRuta de instalaci¢n de EDDI:[37m
echo %ruta_EDDI%

for /f "tokens=1 delims=:" %%u in ("%ruta_EDDI%") do set VAU=%%u

if %inst_mode% == 3 echo.
if %inst_mode% == 3 echo [0mReparando configuraci¢n de EDDI...[37m
if %inst_mode% == 3 ren "%APPDATA%\EDDI" "EDDI.%time:~0,2%%time:~3,2%%time:~6,2%_%date:~-10,2%%date:~-7,2%%date:~-4,4%.bak"

echo.
echo [0mcopiando archivo "eddi.es.json"...[37m
%VAU%:
cd %ruta_EDDI%
xcopy /Y "%~dp0EDDI\eddi.es.json"

echo.
echo [0mCopiando Shirka...[37m
xcopy /Y "%~dp0EDDI\Shirka*" "%APPDATA%\EDDI\Personalities\"


:PrepareVA
if %inst_VA% == S goto CONFVA
echo TEST: %~dp0ruta_VA.log
findstr /C:"Steam" "%~dp0ruta_VA.log" > nul
if %errorlevel% == 0 goto VASTEAM

if not "%ruta_VA%" == "NO" echo.
if not "%ruta_VA%" == "NO" echo [0mSe ha detectado VoiceAttack ya instalado
set conf_VA=Notset
if not "%ruta_VA%" == "NO" set /p conf_VA=¨Deseas actualizar su configuraci¢n? (S/N):[37m 
if %conf_VA% == s set conf_VA=S
if %conf_VA% == si set conf_VA=S
if %conf_VA% == S goto CONFVA

if not %inst_VA% == S goto PrepareG19s
goto PrepareG19s

:VAERROR
echo ­ERROR! ­No se encuentra la ruta de instalacion de VoiceAttack! Descartando configuraci¢n...
ping 127.0.0.1>nul
goto PrepareG19s

:VASTEAM
set /p ruta_VA=<ruta_VA.log
if %errorlevel% == 1 goto VAERROR
echo.
echo [0mDetectada versi¢n Steam de VoiceAttack
set /p VASTEAMCONF=¨Quieres configurarlo de todos modos? (S/N):[37m 
if %VASTEAMCONF% == s set VASTEAMCONF=S
if %VASTEAMCONF% == si set VASTEAMCONF=S
if %VASTEAMCONF% == S goto CONFVA
goto PrepareG19s

:CONFVA
echo.
echo [0mRuta de instalaci¢n de VA:[37m
echo %ruta_VA%
for /f "tokens=1 delims=:" %%u in ("%ruta_VA%") do set VAU=%%u

if %inst_mode% == 3 goto VAconfRepair
goto VAconfNORepair

:VAconfREPAIR
echo.
echo [0mReparando configuraci¢n de VA...[37m
ren %APPDATA%\Voiceattack "Voiceattack.%time:~0,2%%time:~3,2%%time:~6,2%_%date:~-10,2%%date:~-7,2%%date:~-4,4%.bak"
ren "%LOCALAPPDATA%\VoiceAttack.com" "Voiceattack.com.%time:~0,2%%time:~3,2%%time:~6,2%_%date:~-10,2%%date:~-7,2%%date:~-4,4%.bak"

:VAconfNORepair
echo.
echo [0mInstalando plugins...[37m
%VAU%:
cd %ruta_VA%
xcopy /Q /E /Y /I "%~dp0VA\Apps" .\Apps
xcopy /Q /E /Y /I "%~dp0VA\Sounds" .\Sounds

echo.
if not exist "%appdata%\Voiceattack\VoiceAttack.dat" echo [0mAbriendo VoiceAttack (1a vez)...
if not exist "%appdata%\Voiceattack\VoiceAttack.dat" echo Por favor, no intentes configurar nada, en cuanto se haya abierto VA, ci‚rralo
if not exist "%appdata%\Voiceattack\VoiceAttack.dat" START /WAIT "" "%ruta_VA%\Voiceattack.exe"


echo.
echo [0mConfigurando VoiceAttack...[37m
echo.
if exist "%appdata%\Voiceattack\VoiceAttack.dat" echo Generando backup de la configuracion de VoiceAttack...[37m
if exist "%appdata%\Voiceattack\VoiceAttack.dat" ren "%appdata%\Voiceattack\VoiceAttack.dat" "Voiceattack.dat.%time:~0,2%%time:~3,2%%time:~6,2%_%date:~-10,2%%date:~-7,2%%date:~-4,4%.bak"
xcopy /Y /Q "%~dp0VA\Voiceattack.dat" "%appdata%\Voiceattack\"

echo.
echo [0mBuscando configuraci¢n predeterminada...
cd %localappdata%
dir /s /b "user.config">"%~dp0uc.log"
findstr /C:"VoiceAttack" "%~dp0uc.log">"%~dp0vauc.log"
set /p ruta_VAUC=<"%~dp0vauc.log"


echo Ruta de configuraci¢n VA:[37m
echo %ruta_VAUC%

echo.
echo [0mGenerando Backup de user.config...[37m
ren "%ruta_VAUC%" "user.config.%time:~0,2%%time:~3,2%%time:~6,2%_%date:~-10,2%%date:~-7,2%%date:~-4,4%.bak"

echo.
echo [0mTrasladando propiedades...[37m
xcopy /Y /Q "%~dp0VA\user.config*" %ruta_VAUC%*


:PrepareG19s
if %inst_G19s% == S goto CONFG19s

if not "%ruta_G19s%" == "NO" echo.
if not "%ruta_G19s%" == "NO" echo [0mSe ha detectado Elite G19s Companion ya instalado
set conf_G19s=Notset
if not "%ruta_G19s%" == "NO" set /p conf_G19s=¨Deseas actualizar su configuraci¢n? (S/N):[37m 
if %conf_G19s% == s set conf_G19s=S
if %conf_G19s% == si set conf_G19s=S
if %conf_G19s% == S goto CONFG19s

if not %inst_G19s% == S goto CORTANA2ANA
goto CORTANA2ANA

:CONFG19s
echo.
echo [0mGenerando Backup de options.json...[37m
ren "%appdata%\EliteG19s\options.json" "options.json.%time:~0,2%%time:~3,2%%time:~6,2%_%date:~-10,2%%date:~-7,2%%date:~-4,4%.bak"
echo.
echo [0mConfigurando Elite G19s Companion...[37m
xcopy /Y /Q "%~dp0G19s\options.json" "%appdata%\EliteG19s\"

:CORTANA2ANA
if not %inst_Ana% == S goto ALLINSTALLED
echo.
echo [0mAbriendo configurador de motor TTS de Cortana...[37m
START CMD /c "%~dp0Cortana2Ana\Cortana2Ana.cmd"

:ALLINSTALLED
if %inst_VA% == portable goto READYVA
if not %inst_VA% == S goto FI

:READYVA
if not %inst_VA% == S goto FI

echo.
echo [0mAbriendo VoiceAttack...[37m
if inst_VA == portable START "" "%~dp0Extras\VA\VoiceAttack.exe"
if not inst_VA == portable START "" "%ruta_VA%\Voiceattack.exe"
ping 127.0.0.1>nul


:FI
cls                                                                                                    
echo.[0m                                       
echo.                                     
echo.                                 
echo                                            [0m[7m²²²²²²²²²²±±±±±±°°°°°°°°°°°°     HoksiPack %PACKVER%      [0m[0m
echo                                                 [0m[7m²²±±±±±±±°°°°°°°°°°°°           by cmdr. Hoksilato  [0m[0m                                                                                                    
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo ­TODO INSTALADO y Configurado!
echo.
echo ­Disfruta de Elite Dangerous!
echo.
echo.
echo.
echo Una vez finalizada la instalaci¢n podr s usar VoiceAttack sin comprar licencia.
echo Pero cualquier cambio en la configuraci¢n requerir  de la licencia (­S¢lo el precio de un combinado!)
echo Si tienes licencia comprada podr s:
echo.
echo - Cambiar el nombre del comandante
echo - Usar varios archivos de binds de teclado
echo - Modificar las Playlists del sistema "moodmusic"
echo - Seleccionar Proveedor de m£sica y el volumen predeterminado
echo.
echo.
echo Pulsa una tecla si quieres ver c¢mo revisar la configuraci¢n necesaria para que el VAP funcione correctamente.
echo *IMPORTANTE: Los pasos 5 y 6 son necesarios y se pueden realizar sin tener licencia de VoiceAttack.
pause>nul

cls                                                                                                    
echo.[0m                                       
echo.                                     
echo.                                 
echo                                            [0m[7m²²²²²²²²²²±±±±±±°°°°°°°°°°°°     HoksiPack %PACKVER%      [0m[0m
echo                                                 [0m[7m²²±±±±±±±°°°°°°°°°°°°           by cmdr. Hoksilato  [0m[0m                                                                                                    
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo Una vez abierto VoiceAttack...
echo.
echo 1.- Dir¡gete al men£ opciones (llave inglesa) y verifica:
echo - "Enable Plugin Support" -^> habilitado
echo - "Apps Folder" -^> pon la ruta de la carpeta "Apps" en la carpeta de instalaci¢n de VoiceAttack
echo.  
echo 2.- Fuera del men£ opciones pulsa "Alt+E"
echo - Abre las opciones de perfil pulsando en el check [V] al lado del nombre
echo - Selecciona la pesta¤a "Command each time this profile is loaded"
echo - Busca el comando "Startup" 
echo - Click en "OK" para cerrar la ventana "Profile Options"
echo.
echo 3.- Aun en el editor del Profile, dir¡gete a la secci¢n "Variables", comando "VAR-Commander-Name"
echo - Edita dicho comando y busca la linea de descripci¢n para ayudarte a editar el nombre de CMDR.
echo.
echo 4.- Dir¡gete a la secci¢n "Variables", comando "BindED"
echo - Edita dicho comando y busca la l¡nea de descripci¢n para ayudarte a editar la ruta de tus binds.
echo   (S¢lo es necesario si la ruta difiere de la predeterminada, o si quieres usar unos binds en espec¡fico)
echo.
echo 5.- Abre la configuraci¢n de EDDI diciento: "Configuraci¢n EDDI"
echo.
echo 6.- Ves a la pesta¤a "Contestador vocal" y Activa la personalidad deseada.
echo.
echo 7.- MUY Recomendable configurar:
echo - API de Frontier
echo - Contestador EDSM
echo - Detalles del comandante
echo - Activar todos los "plugins" excepto el "Monitor de Galnet" dado que a£n no es compatible con la Galnet Espa¤ola.
echo.
echo -FIN- Pulsa una tecla para abrir la WIKI del HoksiPack y finalizar.
pause>nul
START "" "https://github.com/hoksilato2/VAHoksiPack/wiki/Me-apetece-una-cervecita..."

exit

:ERROR_ADMIN
cls                                                                                                    
echo.                                       
echo.                                     
echo.                                 
echo                                            [0m[7m²²²²²²²²²²±±±±±±°°°°°°°°°°°°     HoksiPack %PACKVER%      [0m[0m
echo                                                 [0m[7m²²±±±±±±±°°°°°°°°°°°°           by cmdr. Hoksilato  [0m[0m                                                                                                    
echo.
echo.
echo.
echo.
echo.
echo.[31m­ATENCION![0m
echo.
echo No has abierto HoksiPack con permisos de administrador...
echo.
echo Vuelve a abrirlo haciendo clic derecho y seleccionando la opci¢n: "Ejecutar como Administrador"
echo.
echo Pulsa una tecla para cerrar.
START "" "https://github.com/hoksilato2/VAHoksiPack/wiki"
pause>nul
exit [0m

 
