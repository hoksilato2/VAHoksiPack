@echo off
mode con: cols=115 lines=45
set OPTIONSVER=3.7.7-1
set PACKVER=4.0.1-2b
set VAVER=1.8.9
set VAPVER=3.5.3-1
set EDDIVER=4.0.1
set PERSOVER=4.0.1-1bT3
set G19SVER=3.7.7888.21039 (beta)
set VAdlink=https://voiceattack.com/FileSend.aspx?id=VoiceAttackInstaller.exe
set EDDIdlink=https://github.com/EDCD/EDDI/releases/download/Release/4.0.1/EDDI-%EDDIVER%.exe
rem set G19Sdlink=https://apps.magicmau.nl/EliteG19s/EliteG19s-latest.msi
set G19Sdlink=https://apps.magicmau.nl/Beta/EliteG19s-3.7.7888.21039.msi
set BindEDdlink=https://github.com/Corysia/bindED/releases/download/1.0.0.1/bindED.zip
set VAEXTdlink=https://github.com/Antaniserse/VAExtensions/releases/download/v2.0/VAExtensions.zip
set unzipdlink=http://stahlworks.com/dev/unzip.exe
set cort2anadlink=https://github.com/hoksilato2/Cortana-2-Ana/releases/download/0.9/Cortana-2-Ana-09.cmd

rem color 0E
echo.                                                                                                    
echo         [0m[37m                                                   ...                                            
echo                                                     ..':cc;co;;,.                                         
echo                                              ..',;:cdkkkko,..'oxl:,.                                      
echo                                        ..';::::cclolc;..      ,oc',::'.                                   
echo                                  .':c:c:;,',;;;::,[93m[7m²²²²²²²²²²±±±±±±°°°°°°°°°°°°     HoksiPack %PACKVER%      [0m[37m
echo                               .''','.....;:cc;'.       [93m[7m²²±±±±±±±°°°°°°°°°°°°           by cmdr. Hoksilato  [0m[37m
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
echo           ;xdc;'...         .:l'     ..,::::,.                        [93m - VoiceAttack: [91m%VAVER%       [0m[37m
echo           .,ldxxxocccccc;'''',ll'..,cc:,'..                           [93m  ú VAP:        [91m%VAPVER%            [0m[37m
echo              :dc::lol:'.,:::ccoxc:do,.                                [93m - EDDI:        [91m%EDDIVER%              [0m[37m
echo                   .,:c:;,.   .....:c:;'.                              [93m  ú Shirka:     [92m%PERSOVER%          [0m[37m
echo                       .';;,..       .';c:,'.                          [93m - G19s:        [91m%G19SVER%    [0m[37m
echo                           .;::;,.       .,;:cc:'.                     [93m  ú Options:   [91m %OPTIONSVER%           [0m[37m
echo                              .,:cc:'.       .',:cc;'.                    
echo                                 ..,:::;'.        .,:::;'..               ,oxd,                            
echo                                      .';::....       .';::::,..         .okx,                             
echo                                          ...;cccccc;,''',,,',ccc;'.    .ckk;                              
echo                                               .....,:::::ccccclodxxd,..'ld;                               
echo                                                           .....,:clc',:,,'                                 
echo    [93m­Pulsa una tecla para empezar!
pause>nul

net session >nul 2>&1
if not %errorlevel% == 0 goto ERROR_ADMIN
 
cls                                                                                                    
echo.                                       
echo.                                     
echo.                                 
echo                                            [93m[7m²²²²²²²²²²±±±±±±°°°°°°°°°°°°     HoksiPack %PACKVER%      [0m[0m
echo                                                 [93m[7m²²±±±±±±±°°°°°°°°°°°°           by cmdr. Hoksilato  [0m[0m                                                                                                    
echo.
echo.
echo.
echo.
echo.
echo Instalador Ejecut ndose en: 
echo    [96m%~dp0

:quequieres
echo.
echo [93m¨Qu‚ quieres hacer?
echo.
echo 1. Instalar (descarga, instalaci¢n y configuraci¢n)
echo 2. Actualizar (solo configuraci¢n)
echo 3. Reparar (descarga, instalaci¢n y reparaci¢n de configuraci¢n)
echo.
SET /p inst_mode=Selecciona una opci¢n (1,2,3):[97m 

if %inst_mode%==1 goto Instalar
if %inst_mode%==2 goto Actualizar
if %inst_mode%==3 goto Reparar

echo.
echo Alguna opci¢n no la has contestado correctamente.
echo Te lo vuelvo a preguntar,
goto quequieres

:Instalar
SET /p inst_VA=[93m¨Quieres instalar VoiceAttack? (S/N):[97m 
SET /p inst_EDDI=[93m¨Quieres instalar EDDI? (S/N):[97m
SET /p inst_G19s=[93m¨Quieres instalar G19s Companion? (S/N):[97m 
SET /p inst_Ana=[93m¨Quieres poder usar la voz de Cortana? (S/N):[97m 


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
SET /p inst_VA=[93m¨Quieres reparar VoiceAttack? (S/N):[97m 
SET /p inst_EDDI=[93m¨Quieres reparar EDDI? (S/N):[97m
SET /p inst_G19s=[93m¨Quieres reparar G19s Companion? (S/N):[97m 
SET /p inst_Ana=[93m¨Quieres reparar la voz de Cortana? (S/N):[97m 

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

:VANORMAL
echo.
if %inst_mode%==1 (set /p VAVERSTEAM="[93m¨Querr s usar la versi¢n [96mSteam[93m de VoiceAttack? (S/N):[97m ") else (set /p VAVERSTEAM="[93m¨Est s usando la versi¢n [96mSteam[93m de VoiceAttack? (S/N):[97m ") 


if %VAVERSTEAM%==s goto VAVERSTEAMADV
if %VAVERSTEAM%==si goto VAVERSTEAMADV


if %inst_mode%==3 echo.
if %inst_mode%==1 echo.
if %inst_mode%==3 echo [97mSi tienes la versi¢n [96mSteam[97m de VoiceAttack, cancela el instalador que aparecer  a continuaci¢n.[0m
if %inst_mode%==1 echo [97mSi tienes la versi¢n [96mSteam[97m de VoiceAttack, cancela el instalador que aparecer  a continuaci¢n.[0m

echo.
echo [93mDescargando instalador VoiceAttack %VAVER%...
echo fuente: [96m%VAdlink%[0m
powershell -command Invoke-WebRequest %VAdlink% -OutFile '%~dp0VoiceAttackinstaller.exe'
echo.
echo [93mAbriendo instalador VoiceAttack %VAVER%...
"%~dp0VoiceAttackinstaller.exe"

echo.
echo [0mSi has abierto VoiceAttack, ci‚rralo
echo Luego lo configuraremos mas tarde [93m
echo.
pause
goto EDDI

:VAVERSTEAMADV
if %inst_mode%==3 goto VAVERSTEAMINSTNO
echo.
echo [93mPara utilizar la versi¢n [96mSteam[93m de VoiceAttack, antes necesitar s instalarla.
set /p VAVERSTEAMINST=¨Quieres instalarla ahora? Requiere de Steam ya instalado. (S/N):[97m 

if %VAVERSTEAMINST%==s goto VAVERSTEAMINSTSI
if %VAVERSTEAMINST%==si goto VAVERSTEAMINSTSI
if %VAVERSTEAMINST%==n goto VAVERSTEAMINSTNO
if %VAVERSTEAMINST%==no goto VAVERSTEAMINSTNO

goto EDDI
:VAVERSTEAMINSTSI
echo.
echo [0mAbriendo [96mSteam[0m para la instalaci¢n de VoiceAttack...
echo [97m­Necesitar s tener [96mSteam[097m instalado!
::VA Demo
::start "" "steam://install/601070"
::VA de pago
start "" "steam://install/583010"
echo.
echo [93mPulse una tecla cuando ya tengas la versi¢n [96mSteam[93m instalada...
pause>nul
goto EDDI

:VAVERSTEAMINSTNO
echo.
echo Si ya tienes VoiceAttack instalado desde Steam pulsa una tecla, de lo contrario cierra este instalador.
pause>nul

:EDDI
if not %inst_EDDI% == S goto G19s
if %inst_VA% == portable echo EDDI esta preinstalado en la versi¢n Portable de VA.
if %inst_VA% == portable echo Redirigiendo instalacion...
if %inst_VA% == portable goto G19s

echo.
echo [93mDescargando EDDI %EDDIVER%...[0m
echo fuente: [96m%EDDIdlink%[0m
powershell -command Invoke-WebRequest %EDDIdlink% -OutFile '%~dp0EDDI-%EDDIVER%.exe'

echo.
echo [93mAbriendo instalador EDDI %EDDIVER%...

echo.
echo [0mSi has instalado VoiceAttack, debes instalar EDDI en la siguiente carpeta:[93m
echo.
echo [96m.\VoiceAttack\Apps\EDDI[93m
"%~dp0\EDDI-%EDDIVER%.exe"
echo.
echo [0mSi has abierto EDDI, ci‚rralo
echo Luego lo configuraremos.[93m
echo.
pause

:G19s
if not %inst_G19s% == S goto PrepareALL
echo.
echo Descargando Elite G19s Companion %G19SVER%...[0m
echo fuente: [96m%G19Sdlink%[0m
powershell -command Invoke-WebRequest %G19Sdlink% -OutFile '%~dp0EliteG19s-latest.msi'

echo.
echo [0mSInstalando Elite G19s Companion %G19SVER%...[0m
if exist "%~dp0EliteG19s-latest.msi" "%~dp0EliteG19s-latest.msi" /passive
if exist "%~dp0EliteG19s-%G19SVER%.msi" "%~dp0EliteG19s-%G19SVER%.msi" /passive

goto PrepareALL

:AFTEREPAIR
set inst_mode=2
goto Actualizar

:PrepareALL
cls                                                                                                    
echo.                                       
echo.                                     
echo.                                 
echo                                            [93m[7m²²²²²²²²²²±±±±±±°°°°°°°°°°°°     HoksiPack %PACKVER%      [0m[0m
echo                                                 [93m[7m²²±±±±±±±°°°°°°°°°°°°           by cmdr. Hoksilato  [0m[0m                                                                                                    
echo.
echo.
echo.
echo.
echo.
if %inst_mode% == 1 echo Preparando configuraci¢n...
if %inst_mode% == 2 echo Actualizando configuraci¢n...
if %inst_mode% == 3 echo Reparando configuraci¢n...



set "SystemPath=%SystemRoot%\System32"
if exist "%SystemRoot%\Sysnative\cmd.exe" set "SystemPath=%SystemRoot%\Sysnative"

%SystemPath%\WindowsPowerShell\v1.0\powershell set-executionpolicy remotesigned
rem powershell %~dp0listsoft.ps1
%SystemPath%\WindowsPowerShell\v1.0\powershell -EncodedCommand RwBlAHQALQBDAGgAaQBsAGQASQB0AGUAbQAgAEgASwBMAE0AOgBcAFMATwBGAFQAVwBBAFIARQBcAFcAbwB3ADYANAAzADIATgBvAGQAZQBcAE0AaQBjAHIAbwBzAG8AZgB0AFwAVwBpAG4AZABvAHcAcwBcAEMAdQByAHIAZQBuAHQAVgBlAHIAcwBpAG8AbgBcAFUAbgBpAG4AcwB0AGEAbABsACAAfAAgACUAIAB7ACAARwBlAHQALQBJAHQAZQBtAFAAcgBvAHAAZQByAHQAeQAgACQAXwAuAFAAcwBQAGEAdABoACAAfQAgAHwAIABTAGUAbABlAGMAdAAgAEkAbgBzAHQAYQBsAGwATABvAGMAYQB0AGkAbwBuACAAfAAgAE8AdQB0AC0ARgBpAGwAZQAgAC0AZgBpAGwAZQBwAGEAdABoACAAJABlAG4AdgA6AHQAZQBtAHAAXABsAGkAcwB0AHMAbwBmAHQALgBsAG8AZwANAAoADQAKAEcAZQB0AC0AQwBoAGkAbABkAEkAdABlAG0AIABIAEsATABNADoAXABTAE8ARgBUAFcAQQBSAEUAXABNAGkAYwByAG8AcwBvAGYAdABcAFcAaQBuAGQAbwB3AHMAXABDAHUAcgByAGUAbgB0AFYAZQByAHMAaQBvAG4AXABVAG4AaQBuAHMAdABhAGwAbAAgAHwAIAAlACAAewAgAEcAZQB0AC0ASQB0AGUAbQBQAHIAbwBwAGUAcgB0AHkAIAAkAF8ALgBQAHMAUABhAHQAaAAgAH0AIAB8ACAAUwBlAGwAZQBjAHQAIABJAG4AcwB0AGEAbABsAEwAbwBjAGEAdABpAG8AbgAgAHwAIABPAHUAdAAtAEYAaQBsAGUAIAAtAGEAcABwAGUAbgBkACAALQBmAGkAbABlAHAAYQB0AGgAIAAkAGUAbgB2ADoAdABlAG0AcABcAGwAaQBzAHQAcwBvAGYAdAAuAGwAbwBnAA0ACgANAAoA


echo.
echo [93mComprobando instalaci¢n de EDDI...[37m
echo.
type "%temp%\listsoft.log" | findstr /C:"EDDI">"ruta_EDDI.log"
set /p ruta_EDDI=<"ruta_EDDI.log"
if %errorlevel% == 1 set ruta_EDDI=NO
if "%ruta_EDDI%" == "NO" echo [31mNo se ha encontrado EDDI instalado.[37m
if not "%ruta_EDDI%" == "NO" echo [93mRuta de instalaci¢n de EDDI:[37m
if not "%ruta_EDDI%" == "NO" echo [96m%ruta_EDDI%[37m

echo.
echo [93mComprobando instalaci¢n VoiceAttack...[37m
echo.
type "%temp%\listsoft.log" | findstr /C:"VoiceAttack" | findstr /V "EDDI">ruta_VA.log
rem if %errorlevel% == 1 type "%temp%\listsoft.txt" | findstr /C:"VoiceAttack" | findstr /V "EDDI">ruta_VA.log
set /p ruta_VA=<ruta_VA.log
if %errorlevel% == 1 set ruta_VA=NO
if "%ruta_VA%" == "NO" echo [31mNo se ha encontrado VoiceAttack instalado.[37m
if not "%ruta_VA%" == "NO" echo [93mRuta de instalaci¢n de VoiceAttack:[37m
if not "%ruta_VA%" == "NO" echo [96m%ruta_VA%[37m

if not "%ruta_VA%" == "NO" goto NEXT

echo En algunos casos, si tienes la versi¢n de [96mSteam[93m instalada puede que no lo detecte :-(
set /p VAREPAIR=¨Quieres mirar de arreglarlo? (S/N): 

if %VAREPAIR%==s set VAREPAIR=S
if %VAREPAIR%==si set VAREPAIR=S
if not %VAREPAIR%==S goto NEXT

set VAU=C
:FINDSTEAM
echo.
echo [31mBuscando instalaci¢n de VoiceAttack versi¢n [96mSteam[93m en %VAU%:\...[37m
dir %VAU%:\ /s /b /o:n /ad > %temp%\allfolders.log
type "%temp%\allfolders.log" | findstr /C:"VoiceAttack" | findstr /C:"Steam">ruta_VA.log 
set /p ruta_VA=<ruta_VA.log
echo.
echo [93mRuta de instalaci¢n de VoiceAttack:[37m
echo %ruta_VA%
if %errorlevel% == 1 goto FINDSTEAMNOC
goto NEXT

:FINDSTEAMNOC
echo.
echo [93mNo se ha encontrado la ruta de instalaci¢n de VoiceAttack.
SET /P VAU=Si est  en una unidad que no es la C:\, escribe aqu¡ la unidad (SOLO la letra):[37m 

echo Unidad seleccionada: %VAU%:\
goto FINDSTEAM

:NEXT
echo.
echo [93mComprobando instalaci¢n de Elite G19s Companion...[37m
echo.
if exist %localappdata%\Programs\EliteG19s\EliteG19s.Windows.exe set ruta_G19s=%localappdata%\Programs\EliteG19s
if not exist %localappdata%\Programs\EliteG19s\EliteG19s.Windows.exe set ruta_G19s=NO
if "%ruta_G19s%" == "NO" echo [31mNo se ha encontrado Elite G19s Companion instalado.[37m
if not "%ruta_G19s%" == "NO" echo [93mRuta de instalaci¢n de Elite G19s Companion:[37m
if not "%ruta_G19s%" == "NO" echo [96m%ruta_G19s%[37m

:PrepareEDDI
if %inst_EDDI% == S goto CONFEDDI
if not "%ruta_EDDI%" == "NO" echo.
if not "%ruta_EDDI%" == "NO" echo [93mSe ha detectado EDDI ya instalado
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
echo [93mRuta de instalaci¢n de EDDI:[37m
echo [96m%ruta_EDDI%[37m
echo.

if %inst_mode% == 3 goto EDIT_RUTA_EDDI
goto NOEDIT_RUTA_EDDI

:EDIT_RUTA_EDDI
set /p ruta_EDDI_OK=[93m¨Es correcta la ruta de instalaci¢n de EDDI? (S/N):[37m 
if %ruta_EDDI_OK% == s set ruta_EDDI_OK=S
if %ruta_EDDI_OK% == si set ruta_EDDI_OK=S
if %ruta_EDDI_OK% == S goto NOEDIT_RUTA_EDDI

echo.
echo [93mOk, busca la carpeta donde est  ubicado EDDI...[37m

:::::::::::::::::::::
setlocal
set "psCommand="(new-object -COM 'Shell.Application')^
.BrowseForFolder(0,'Selecciona la carpeta de EDDI.',0,0).self.path""

for /f "usebackq delims=" %%I in (`powershell %psCommand%`) do set "ruta_EDDI=%%I"

setlocal enabledelayedexpansion
endlocal
:::::::::::::::::::::

goto CONFEDDI


:NOEDIT_RUTA_EDDI
for /f "tokens=1 delims=:" %%u in ("%ruta_EDDI%") do set VAU=%%u

if %inst_mode% == 3 echo.
if %inst_mode% == 3 echo [93mReparando configuraci¢n de EDDI...[37m
if %inst_mode% == 3 if not exist %APPDATA%\HoksiPack md %APPDATA%\HoksiPack
if %inst_mode% == 3 ren "%APPDATA%\EDDI" "EDDI.%time:~0,2%%time:~3,2%%time:~6,2%_%date:~-10,2%%date:~-7,2%%date:~-4,4%.bak"
if %inst_mode% == 3 for /D %%d in ("%APPDATA%\EDDI*") do move /Y "%%d" "%APPDATA%\HoksiPack\BACKUP_EDDI"

echo.
echo [93mcopiando archivo "eddi.es.json"...[37m
%VAU%:
cd /D %ruta_EDDI%
xcopy /Y "%~dp0EDDI\eddi.es.json"

echo.
echo [93mCopiando Shirka...[37m
xcopy /Y "%~dp0EDDI\Shirka*" "%APPDATA%\EDDI\Personalities\"


:PrepareVA
if %inst_VA% == S goto CONFVA
findstr /C:"Steam" "%~dp0ruta_VA.log" > nul
if %errorlevel% == 0 goto VASTEAM

if not "%ruta_VA%" == "NO" echo.
if not "%ruta_VA%" == "NO" echo [93mSe ha detectado VoiceAttack ya instalado
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
echo [93mDetectada versi¢n [96mSteam[93m de VoiceAttack
set /p VASTEAMCONF=¨Quieres configurarlo de todos modos? (S/N):[37m 
if %VASTEAMCONF% == s set VASTEAMCONF=S
if %VASTEAMCONF% == si set VASTEAMCONF=S
if %VASTEAMCONF% == S goto CONFVA
goto PrepareG19s

:CONFVA
echo.
echo [93mRuta de instalaci¢n de VA:[37m
echo [96m%ruta_VA%[37m


if %inst_mode% == 3 goto EDIT_RUTA_VA
goto NOEDIT_RUTA_VA

:EDIT_RUTA_VA
set /p ruta_VA_OK=[93m¨Es correcta la ruta de instalaci¢n de VA? (S/N):[37m 
if %ruta_VA_OK% == s set ruta_VA_OK=S
if %ruta_VA_OK% == si set ruta_VA_OK=S
if %ruta_VA_OK% == S goto NOEDIT_RUTA_VA

echo.
echo [93mOk, busca la carpeta donde est  ubicado VoiceAttack...[37m

:::::::::::::::::::::
setlocal
set "psCommand="(new-object -COM 'Shell.Application')^
.BrowseForFolder(0,'Selecciona la carpeta de VoiceAttack.',0,0).self.path""

for /f "usebackq delims=" %%I in (`powershell %psCommand%`) do set "ruta_VA=%%I"

setlocal enabledelayedexpansion
endlocal
:::::::::::::::::::::

goto CONFVA


:NOEDIT_RUTA_VA
for /f "tokens=1 delims=:" %%u in ("%ruta_VA%") do set VAU=%%u

if %inst_mode% == 3 goto VACREP
goto VACNOREP

:VACREP
echo.
echo [93mReparando configuraci¢n de VA...[37m
if not exist %APPDATA%\HoksiPack md %APPDATA%\HoksiPack
ren "%APPDATA%\Voiceattack" "Voiceattack.%time:~0,2%%time:~3,2%%time:~6,2%_%date:~-10,2%%date:~-7,2%%date:~-4,4%.bak"
for /D %%d in ("%APPDATA%\Voiceattack*") do move /Y "%%d" "%APPDATA%\HoksiPack\BACKUP_VA"

if not exist %LOCALAPPDATA%\HoksiPack md %LOCALAPPDATA%\HoksiPack
ren "%LOCALAPPDATA%\VoiceAttack.com" "Voiceattack.com%time:~0,2%%time:~3,2%%time:~6,2%_%date:~-10,2%%date:~-7,2%%date:~-4,4%.bak"
for /D %%d in ("%LOCALAPPDATA%\Voiceattack*") do move /Y "%%d" "%LOCALAPPDATA%\HoksiPack\BACKUP_VA"

:VACNOREP
%VAU%:
cd /D %ruta_VA%			   

echo.
echo [93mDescargando plugin BindED...
echo fuente: [96m%BindEDdlink%[0m
powershell -command Invoke-WebRequest %BindEDdlink% -OutFile '%~dp0bindED.zip'

echo.
echo [93mDescargando plugin VAExtensions...
echo fuente: [96m%VAEXTdlink%[0m
powershell -command Invoke-WebRequest %VAEXTdlink% -OutFile '%~dp0VAExtensions.zip'

echo.
echo [93mInstalando plugins...[37m
if not exist %~dp0Apps md %~dp0Apps
powershell -command Expand-Archive -Path '%~dp0bindED.zip' -DestinationPath '%~dp0VA\Apps\bindED'
powershell -command Expand-Archive -Path '%~dp0VAExtensions.zip' -DestinationPath '%~dp0VA\Apps\VAExtensions'


xcopy /Q /E /Y /I "%~dp0VA\Apps" .\Apps
xcopy /Q /E /Y /I "%~dp0VA\Sounds" .\Sounds

echo.
if not exist "%appdata%\Voiceattack\VoiceAttack.dat" echo [93mAbriendo VoiceAttack (1a vez)...
if not exist "%appdata%\Voiceattack\VoiceAttack.dat" echo Por favor, espera y no intentes configurar nada, en cuanto se haya abierto VA, ci‚rralo
if not exist "%appdata%\Voiceattack\VoiceAttack.dat" START /WAIT "" "%ruta_VA%\Voiceattack.exe"

ping 127.0.0.1>nul
echo Si no se ha abierto VoiceAttack,  brelo manualmente, no configures nada y ci‚rralo...
pause
echo.
echo [93mConfigurando VoiceAttack...[37m
if exist "%appdata%\Voiceattack\VoiceAttack.dat" echo.
if exist "%appdata%\Voiceattack\VoiceAttack.dat" echo Generando backup de la configuracion de VoiceAttack...[37m
if exist "%appdata%\Voiceattack\VoiceAttack.dat" ren "%appdata%\Voiceattack\VoiceAttack.dat" "Voiceattack.dat.%time:~0,2%%time:~3,2%%time:~6,2%_%date:~-10,2%%date:~-7,2%%date:~-4,4%.bak"
xcopy /Y /Q "%~dp0VA\Voiceattack.dat" "%appdata%\Voiceattack\"

echo.
echo [93mBuscando configuraci¢n predeterminada...
cd /D "%localappdata%\VoiceAttack.com"
dir /s /b "user.config">"%~dp0uc.log"
findstr /C:"VoiceAttack" "%~dp0uc.log">"%~dp0vauc.log"
set /p ruta_VAUC=<"%~dp0vauc.log"

echo.
echo Ruta de configuraci¢n VA:[37m
echo [96m%ruta_VAUC%[37m

echo.
echo [93mGenerando Backup de user.config...[37m
ren "%ruta_VAUC%" "user.config.%time:~0,2%%time:~3,2%%time:~6,2%_%date:~-10,2%%date:~-7,2%%date:~-4,4%.bak"

echo.
echo [93mTrasladando propiedades...[37m
xcopy /Y /Q "%~dp0VA\user.config*" "%ruta_VAUC%*"


:PrepareG19s
if %inst_G19s% == S goto CONFG19s

if not "%ruta_G19s%" == "NO" echo.
if not "%ruta_G19s%" == "NO" echo [93mSe ha detectado Elite G19s Companion ya instalado
set conf_G19s=Notset
if not "%ruta_G19s%" == "NO" set /p conf_G19s=¨Deseas actualizar su configuraci¢n? (S/N):[37m 
if %conf_G19s% == s set conf_G19s=S
if %conf_G19s% == si set conf_G19s=S
if %conf_G19s% == S goto CONFG19s

if not %inst_G19s% == S goto CORTANA2ANA
goto CORTANA2ANA

:CONFG19s
echo.
echo [93mGenerando Backup de options.json...[37m
ren "%appdata%\EliteG19s\options.json" "options.json.%time:~0,2%%time:~3,2%%time:~6,2%_%date:~-10,2%%date:~-7,2%%date:~-4,4%.bak"
echo.
echo [93mConfigurando Elite G19s Companion...[37m
xcopy /Y /Q "%~dp0G19s\options.json" "%appdata%\EliteG19s\"

:CORTANA2ANA
if not %inst_Ana% == S goto ALLINSTALLED

echo.
echo [93mDescargando Cortana-2-Ana.exe
echo fuente: [96m%cort2Anadlink%[0m
powershell -command Invoke-WebRequest %cort2Anadlink% -OutFile '%~dp0Cortana-2-Ana.cmd'

echo.
echo [93mAbriendo configurador de motor TTS de Cortana...[37m
"%~dp0Cortana-2-Ana.cmd"

:ALLINSTALLED
if %inst_VA% == portable goto READYVA
if not %inst_VA% == S goto FI

:READYVA
if not %inst_VA% == S goto FI

rem if %inst_mode% == 3 goto AFTEREPAIR

echo.
echo [93mAbriendo VoiceAttack...[37m
ping 127.0.0.1>nul

if inst_VA == portable START "" "%~dp0Extras\VA\VoiceAttack.exe"
if not inst_VA == portable START "" "%ruta_VA%\Voiceattack.exe"



:FI
cls                                                                                                    
echo.[0m                                       
echo.                                     
echo.                                 
echo                                            [93m[7m²²²²²²²²²²±±±±±±°°°°°°°°°°°°     HoksiPack %PACKVER%      [0m[0m
echo                                                 [93m[7m²²±±±±±±±°°°°°°°°°°°°           by cmdr. Hoksilato  [0m[37m                                                                                                    
echo.
echo.
echo.
echo.
echo.
echo.
echo.
if %inst_mode%==3 (echo ­TODO REPARADO!) else (echo ­TODO INSTALADO y Configurado!)
if %inst_mode%==3 echo Los backups de las anteriores configuraciones las encontrar s en: 
if %inst_mode%==3 echo [96m"%APPDATA%\HoksiPack"[0m y [96m"%LOCALAPPDATA%\HoksilPack"[37m
echo.
echo ­Disfruta de [93mElite Dangerous[37m!
echo.
echo.
echo.
echo Una vez finalizada la instalaci¢n podr s usar VoiceAttack sin comprar licencia.
echo Pero cualquier cambio en la configuraci¢n requerir  de la licencia (­S¢lo el precio de un combinado!)
echo Si NO tienes licencia, cada vez que abras VA tardar  m s en poder pulsar el bot¢n "Go!"
echo.
echo Si tienes licencia comprada podr s:
echo.
echo - Cambiar el nombre del comandante
echo - Usar varios archivos de binds de teclado
echo - Modificar las Playlists del sistema "moodmusic"
echo - Seleccionar Proveedor de m£sica y el volumen predeterminado
echo ...y muchas opciones m s!
echo.
echo.
echo Pulsa una tecla si quieres ver c¢mo revisar la configuraci¢n necesaria para que el VAP funcione correctamente.
echo [31mIMPORTANTE[0m: Los pasos 5 y 6 [93mSON NECESARIOS[0m y se pueden realizar sin tener licencia de VoiceAttack.
pause>nul

cls                                                                                                    
echo.[0m                                       
echo.                                     
echo.                                 
echo                                            [93m[7m²²²²²²²²²²±±±±±±°°°°°°°°°°°°     HoksiPack %PACKVER%      [0m[0m
echo                                                 [93m[7m²²±±±±±±±°°°°°°°°°°°°           by cmdr. Hoksilato  [0m[0m                                                                                                    
echo.
echo.
echo.
echo.
echo Una vez abierto VoiceAttack...
echo.
echo [93m1.[0m COMPROBACION de carpeta de plugins:
echo - Dir¡gete al men£ opciones (llave inglesa) y verifica:
echo - Pesta¤a General -^> "Enable Plugin Support" -^> HABILITADO
echo - "Apps Folder" -^> pon la ruta de la carpeta "Apps" en la carpeta de instalaci¢n de VoiceAttack
echo.  
echo [93m2.[0m COMPROBACION Startup Command ([31mSolo versi¢n VA de pago[0m)
echo - Fuera del men£ opciones selecciona el perfil Hoksilato %VAPVER% y luego pulsa "Alt+E"
echo - Abre las opciones de perfil pulsando en el bot¢n "Options" al lado del nombre del perfil
echo - En la pesta¤a "Profile Exec" HABILITA la opci¢n "Execute command each time this profile is loaded"
echo - Busca el comando "Startup" 
echo - Click en "OK" para cerrar la ventana "Profile Options"
echo.
echo [93m3.[0m CAMBIO de nombre de comandante ([31mSolo versi¢n VA de pago[0m)
echo - Aun en el editor del Profile, dir¡gete a la secci¢n "Variables", comando "VAR-Commander-Name"
echo - Edita dicho comando y busca la linea de descripci¢n para ayudarte a editar el nombre de CMDR.
echo.
echo [93m4.[0m MODIFICACION de ruta de binds ([31mSolo versi¢n VA de pago[0m)
echo - Dir¡gete a la secci¢n "Variables", comando "BindED"
echo - Edita dicho comando y busca la l¡nea de descripci¢n para ayudarte a editar la ruta de tus binds.
echo   (S¢lo es necesario si la ruta difiere de la predeterminada, o si quieres usar unos binds en espec¡fico)
echo.
echo [93m5.[0m CONFIGURACION EDDI ([93m­IMPORTANTE![0m)
echo - Abre la configuraci¢n de EDDI diciento: "Configuraci¢n EDDI"
echo - Ves a la pesta¤a "Asistente vocal" y Activa la personalidad "Shirka %PERSOVER%".
echo.
echo [93m6.[0m En EDDI, MUY Recomendable configurar: ([93m­IMPORTANTE![0m)
echo - API de Frontier
echo - Asistente de Inara
echo - Asistente EDSM
echo - Detalles del comandante
echo - Activar todos los "plugins" o monitores excepto el de la Galnet dado que a£n no es compatible con la Galnet Espa¤ola.
echo.
echo [93m -FIN-[0m Pulsa una tecla para abrir la WIKI del HoksiPack y finalizar.
pause>nul
START "" "https://github.com/hoksilato2/VAHoksiPack/wiki/Me-apetece-una-cervecita..."

exit

:ERROR_ADMIN
cls                                                                                                    
echo.                                       
echo.                                     
echo.                                 
echo                                            [93m[7m²²²²²²²²²²±±±±±±°°°°°°°°°°°°     HoksiPack %PACKVER%      [0m[0m
echo                                                 [93m[7m²²±±±±±±±°°°°°°°°°°°°           by cmdr. Hoksilato  [0m[0m                                                                                                    
echo.
echo.
echo.
echo.
echo.
echo.[31m­ATENCION![93m
echo.
echo No has abierto HoksiPack con permisos de administrador...
echo.
echo Vuelve a abrirlo haciendo clic derecho y seleccionando la opci¢n: "Ejecutar como Administrador"
echo.
echo Pulsa una tecla para cerrar.
START "" "https://github.com/hoksilato2/VAHoksiPack/wiki"
pause>nul
exit [93m

 
