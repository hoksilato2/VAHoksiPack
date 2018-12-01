# VA HoksiPack
Paquete con herramientas para el juego Elite: Dangerous de Frontier.
Toda la información en español del juego en: http://eliteesp.es/introduccion-a-elite-dangerous/

ATENCIÓN ESTE README ESTÁ EN CONSTRUCCIÓN. Para mas información visitar:
https://forums.frontier.co.uk/showthread.php/428059-EDDI-en-espa%C3%B1ol-released


### Características
- Personalidad de IA de la nave (Sirka del cmdr. Altair28) con la ayuda del Software EDDI, VoiceAttack y G19s Companion
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

Podéis descargar la lista de todos los comandos de aquí:

- [Comandos de Shirka](http://htmlpreview.github.io/?https://raw.githubusercontent.com/hoksilato2/VAHoksiPack/master/VAPs/Hoksilato%203.1.0-1-Profile.html)

Abajo de todo hay un recopilatorio de los posts originales del foro de Frontier con más información.


## Instrucciones

Instrucciones para instalar:
- Shirka de Altair28 con mejoras de la comunidad y mias (EDDI+VoiceAttack)
    - EDDI (gratuíto): Como sistema "Output" para que de información adicional del juego
    - VoiceAttack (de pago): Como sistema "Input / Output" para que le puedas dar órdenes a la nave. 
- G19s Companion con funciones para playlist de Spotify y Youtube entre otras (Input / Output)


[HoksiPack](https://github.com/hoksilato2/VAHoksiPack/releases) automatiza la instalación. Pero si prefieres, puedes seguir los pasos del manual para hacerlo de manera manual o para entender qué hace el Hoksipack.


1.- Descargar HoksiPack(https://github.com/hoksilato2/VAHoksiPack/releases) 
2.- Ejecutar como administrador (te lo debería pedir automáticamente)
3.- Escoger qué módulos quieres instalar (recomiendo decirle que "Si" a todos):
    - VoiceAttack
    - EDDI
    - G19s
    
4.- Si no escoges un módulo tampoco lo configurará.
5.- Si tienes VoiceAttack de pago podrás editar los comandos entre los que recomiendo:
     - VA-Commander-Name: Para modificar el nombre el cual Shirka se referirá a ti (Por defecto "Señor" y "Comandante")
     - BindED: Modificar ruta de los binds de teclado en caso de que uses mas de uno o no uses la predeterminada
     - PLAYLIST xxxx: Para añadir las Playlist de Spotify o Youtube que quieras para la "moodmusic"

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
