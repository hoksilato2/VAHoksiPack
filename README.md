# VA HoksiPack
Paquete con herramientas para el juego Elite: Dangerous de Frontier.
Toda la información en español del juego en: http://eliteesp.es/introduccion-a-elite-dangerous/

ATENCIÓN ESTE README ESTÁ EN CONSTRUCCIÓN. Para mas información visitar:
https://forums.frontier.co.uk/showthread.php/428059-EDDI-en-espa%C3%B1ol-released


### Características
- Personalidad de IA de la nave (Shirka del cmdr. Altair28) con la ayuda del Software EDDI, VoiceAttack y G19s Companion
- Comandos básicos del juego mediante voz con EDDI y Voiceattack
- Consola externa con múltiples características gracias a la APP G19s Companion:
    - Escucha de Música local, Spotify, Youtube, Radios, Podcasts y más...
    - Tráfico aereo para mayor inmersión
    - Lector de Feeds
    - Herramientas como cálculo de rutas, búsqueda de tipo de astros por cercanía, commodities, materiales, shipyard...
    - Discord Rich Presence (https://discordapp.com/rich-presence)
- Mediante el perfil de VA para G19s he ideado lo que le llamo música ambiental automática. Consiste en:
    - Playlist de Spotify/Youtube adecuadas para cada circumstancia del juego.
    - Al decir "pon música" Sirka te pregunta por el género (Concierto, Rock, Electrónica o Relax)
    - Según la música que escojas esta se adecuará a la acción del juego según: 
          - Si estás dockeado en una estación
          - Si estás navegando por el espacio
          - Si estás en un momento de tensión (señales, Thargoides, Guardianes...)
          - Si estás siendo atacado.

Entre otras cosas. 

Podéis descargar la lista de todos los comandos, de aquí:

- [Comandos de Shirka](http://htmlpreview.github.io/?https://raw.githubusercontent.com/hoksilato2/VAHoksiPack/master/VAPs/Hoksilato%203.1.0-1-Profile.html)

Abajo de todo hay un recopilatorio de los posts originales del foro de Frontier con más información.


### Instrucciones

## Auto-instalador

1. Descargar [HoksiPack](https://github.com/hoksilato2/VAHoksiPack/releases)
2. Ejecutarlo con privilegios de administrador
3. Seleccionar los componentes que quieras instalar:
     - VoiceAttack
           - VoiceAttack Profile (archivo .VAP)
     - EDDI
           - Personalidad Shirka (archivo .json)
     - Elite G19s Companion
           - Opciones predeterminadas de G19s (archivo options.json)

4. Si ya tienes instalado algún componente y no necesitas actualizarlo puedes decirle que no, Hoksipack te preguntará más tarde si quieres actualizar la configuración.
5. ¡ATENCIÓN! Si actualizas la configuración perderás lo que hayas modificado en la configuración.


Una vez finalizada la instalación podrás usar VoiceAttack sin comprar licencia.
Pero cualqueir cambio en la configuración requerirá de la licencia (¡Sólo el precio de un combinado!)


Si tienes VoiceAttack de pago podrás editar los comandos entre los que recomiendo:
     - VA-Commander-Name: Para modificar el nombre el cual Shirka se referirá a ti (Por defecto "Señor" y "Comandante")
     - BindED: Modificar ruta de los binds de teclado en caso de que uses mas de uno o no uses la predeterminada
     - PLAYLIST xxxx: Para añadir las Playlist de Spotify o Youtube que quieras para la "moodmusic"

## Revisión de la auto-instalación
Una vez abierto VoiceAttack...

1. Dirígete al menú opciones (llave inglesa) y verifica:
- "Enable Plugin Support" -> habilitado
- "Apps Folder" -> pon la ruta de la carpeta "Apps" en la carpeta de instalación de VoiceAttack
  
2. Fuera del menú opciones pulsa "Alt+E"
- Abre las opciones de perfil pulsando en el check [V] al lado del nombre
- Selecciona la pestaña "Command each time this profile is loaded"
echo - Busca el comando "Startup" 
echo - Click en "OK" para cerrar la ventana "Profile Options"
echo.
echo 3.- Aun en el editor del Profile, dirígete a la sección "Variables", comando "VAR-Commander-Name"
- Edita dicho comando y busca la linea de descripción para ayudarte a editar el nombre de CMDR.

4.- Dirígete a la sección "Variables", comando "BindED"
- Edita dicho comando y busca la línea de descripción para ayudarte a editar la ruta de tus binds.
  (Sólo es necesario si la ruta difiere de la predeterminada, o si quieres usar unos binds en específico)

5. Abre la configuración de EDDI diciento: "Configuración EDDI"

6.- Ves a la pestaña "Contestador vocal" y Activa la personalidad deseada.

7.- MUY Recomendable configurar:
- API de Frontier
- Contestador EDSM
- Detalles del comandante
- Activar todos los "plugins" excepto el "Monitor de Galnet" dado que aún no es compatible con la Galnet Española.
  

## Manual
Pasos a seguir para añadir los perfiles de VoiceAttack, personalidad de EDDI e instalar el software y los plugins necesarios

### SHIRKA

0- Descargar VoiceAttack de [aquí](https://voiceattack.com/).

1- Descargar última versión del perfil VAP de Shirka modificada de [aquí](https://github.com/hoksilato2/VAHoksiPack/tree/master/VAPs)

2- Abrir VoiceAttack y mediante el botón de al lado del icono del cuadrado y el lápiz (o "Alt+E") y usar la opción "Import Profile"

3- Seleccionar el archivo .vap descargado.

4- Instalar EDDI. Podéis encontrarlo aquí: https://github.com/EDCD/EDDI/releases

5- (OPTATIVO) Puedes descargar una personalidad beta que voy cambiando cada vez que encuentro un error o pongo una mejora desde [esta carpeta](https://github.com/hoksilato2/VoiceAttack-Profiles/tree/master/Personalities/beta).

7- (OPTATIVO) Las personalidades beta hay que copiarlas en %userprofile%\AppData\Roaming\EDDI\personalities

Nota: Para descargar los archivos en la carpeta beta hay que usar el botón "Raw" con el botón derecho -> Decargar enlace..



## A tener en cuenta

(EN CONSTRUCCION)


## Instalar G19s Companion
 1- Instalar Elite G19s Companion clicando [aquí](https://apps.magicmau.nl) Una vez instalada se abrirá automáticamente.

 2- No configurar nada que te pida la aplicación y cerrarla.

 3- (EN CONTRUCCION) Descargar archivo json modificado de [aquí](https://raw.githubusercontent.com/hoksilato2/Elite-G19s-Companion-Options/master/options.json) (Usar botón derecho -> Decargar enlace..)

 4- Dirigirse a la carpeta "%appdata%\EliteG19s"

 5- Substituir options.json por el modificado que hemos descargado.

 6- Descargar plugin G19s para VA de [aquí](https://apps.magicmau.nl/EliteG19s-v2/VoiceAttack/EliteG19s-VoiceAttack-latest.zip)

 7- Guardar archivo .dll en la carpeta donde tenéis instalado VA:
    .\VoiceAttack\Apps\EliteG19s\EliteG19s.VoiceAttack.dll

 8- Abrir Elite G19s Companion y rellenar todos los campos que os pida.


## Configurar Playlists de Spotify
Para configurar las Playlist hay que añadirlas (o modificarlas) tanto en el archivo options.json de G19s, como en el perfil de VoiceAttack.


### En options.json
1- Editar archivo %appdata%\EliteG19s\options.json (podéis hacerlo también desde el menú OPTIONS de la APP)

2- Buscar línea con el siguiente texto:

      "SpotifyPlaylists": [

3- Si queréis añadir nuevas playlist acordaros de respetar el formato del archivo. Tened en cuenta que si añadís el contenido al final del apartado hay que quitar la última coma.

4- A partir de aquí, ya tendréis acceso a vuestras playlist desde la APP G19s.

### En Perfil VA
1- Editar perfil de VA

2- Editar dirección URI de Spotify de los comandos "PLAYLIST"

3- Si queréis añadir nuevas Playlist para que Sirka las reconozca, tenéis que modificar los comandos que empiezan por "enter" (nivel avanzado)


## Como conseguir dirección URI de Spotify

a) Abrir Spotify

b) buscar playlist deseada.

c) Buscar menú "..." donde está la opción de "compartir"

d) Usar opción "URI" para que se copie en el portapapeles.

e) el formato es como este: spotify:user:hoksilato:playlist:5NtEC3cKu3fPfgUAjk2keg


## LOGITECH ARX CONTROL
G19s tiene la opción de poder verlo también en vuestro dispositivo Android o iOS mediante la aplicación Logitech ARX Control.

Logitech ARX Control:
- Windows: http://support.logitech.com/en_us/software/lgs
- Android: https://play.google.com/store/apps/d....arxcontrolapp
- iOS: https://itunes.apple.com/us/app/logi...ol/id896793941




Discusión en el foro de Frontier:
https://forums.frontier.co.uk/showthread.php/428059-EDDI-en-espa%C3%B1ol-released

Sirka Original por Altair28 (VA+EDDI):
https://forums.frontier.co.uk/showthread.php/332163-Voiceattack-EDDI-en-espa%C3%B1ol

toda la info del G19s:
https://forums.frontier.co.uk/showthread.php/394345-Elite-G19s-Companion

post antiguo en el foro de Elite Dangerous (antes del G19s):
https://forums.frontier.co.uk/showthread.php/332163-Voiceattack-EDDI-en-espa%F1ol?p=5863560#post5863560
