# VoiceAttack-Profiles
Perfiles de Voice Attack para uso personal pero compartidos para quien los quiera.

### Características
- Personalidad de IA de la nave (Sirka del cmdr. Altair28) con la ayuda del Software EDDI y VoiceAttack
- Comandos básicos del juego mediante voz con Sirka y Voiceattack
- Consola externa con múltiples características gracias a la APP G19s Companion:
  - Escucha de Música local, Spotify, Radios y Podcasts
  - Tráfico aereo para mayor inmersión
  - Lector de Feeds
  - Herramientas como cálculo de rutas, búsqueda de tipo de astros por cercanía, commodities, materiales, shipyard...
  - Discord Rich Presence (https://discordapp.com/rich-presence)
- Mediante el perfil de VA para G19s he ideado lo que le llamo música ambiental automática. Consiste en:
  - Playlist de Spotify adecuadas para cada circumstancia del juego
  - Al decir "pon música" Sirka te pregunta por el género (Concierto, Rock, Electrónica o Relax)
  - Según la música que escojas esta se adecuará a la acción del juego según:
    - Si estás en una dockeado en una estación
    - Si estás navegando por el espacio
    - Si estás en un momento de tensión (señales)
    - Si estás siendo atacado.

Entre otras cosas. Podéis descargar todos los comandos de aquí:

- [Comandos de Sirka+EDDI](https://github.com/hoksilato2/VoiceAttack-Profiles/blob/master/VAPs/HoksilatoED-G19s.html) (Usar botón derecho -> Decargar enlace..)
- [Comandos de G19s](https://github.com/hoksilato2/VoiceAttack-Profiles/blob/master/VAPs/HoksilatoED-Sirka%2BEDDI.html) (Usar botón derecho -> Decargar enlace..)

Abajo de todo hay un recopilatorio de los posts originales del foro de Frontier.

## Manual
Pasos a seguir para añadir los perfiles de VoiceAttack e instalar el software y los plugins necesarios (explicado lo más sencillo que he sabido)

- Sirka de Altair28 con mejoras de la comunidad y mias.
- G19s con funciones para playlist de Spotify

Si ya estáis usando a vuestra propia Sirka personalizada podéis pasar directamente a los pasos del G19s.


### Sirka
1- Descargar perfil VA de Sirka modificada de [aquí](https://github.com/hoksilato2/VoiceAttack-Profiles/raw/master/VAPs/HoksilatoED-Sirka+EDDI.vap) (Usar botón derecho -> Decargar enlace..)

2- Abrir VoiceAttack y mediante el botón de al lado del icono del cuadrado y el lápiz usar la opción "Import Profile"

3- Seleccionar el archivo .vap descargado.

4- Instalar EDDI. Podéis encontrarlo aquí: https://github.com/EDCD/EDDI/releases

5- Descargar personalidad modificada de [aquí](https://github.com/hoksilato2/VoiceAttack-Profiles/blob/master/Personalities/Shirka20.json) (Usar botón derecho -> Decargar enlace..)

6- Copiar archivo Shirka20.json en: %userprofile%\AppData\Roaming\EDDI\personalities


### G19s
1- Descargar perfil VA para G19s Companion de [aquí](https://github.com/hoksilato2/VoiceAttack-Profiles/raw/master/VAPs/HoksilatoED-G19s.vap) (Usar botón derecho -> Decargar enlace..)

2- Abrir VA y exportar vuestro actual perfil mediante el botón de al lado del icono del cuadrado y el lápiz usando la opción "Export Profile" (para hacer un backup por si aca)

3- Abrir editor del perfil que usáis en VA mediante el botón del icono del cuadrado y el lápiz

4- Usar botón de abajo "Import Commands"

3- Seleccionar perfil VAP de G19s Companion descargado para añadir los comandos nuevos a vuestro perfil.


## A tener en cuenta

- ES NECESARIO ANULAR OTROS COMANDOS DE VA DE OTROS REPRODUCTORES (COMO VLC) DADO QUE PUEDE QUE ALGUNOS COMANDOS SEAN IGUALES (Ej: "Pon música")


## Instalar G19s Companion
 1- Instalar Elite G19s Companion clicando [aquí](https://apps.magicmau.nl) Una vez instalada se abrirá automáticamente

 2- No configurar nada que te pida la aplicación y cerrarla

 3- Descargar archivo json modificado de [aquí](https://github.com/hoksilato2/Elite-G19s-Companion-Options/blob/master/options.json) (Usar botón derecho -> Decargar enlace..)

 4- Dirigirse a la carpeta "%appdata%\EliteG19s" (puedes copiar esta ruta en la barra de búsqueda de Windows)

 5- Substituir options.json por el modificado que hemos descargado.

 6- Descargar plugin G19s para VA de [aquí](https://apps.magicmau.nl/EliteG19s-v...ack-latest.zip)

 7- Guardar archivo .dll en la carpeta donde tenéis instalado VA:
    .\VoiceAttack\Apps\EliteG19s\EliteG19s.VoiceAttack.dll

 Si queréis usar Spotify, deberéis abrir el archivo options.json con el bloc de notas u otro editor y añadir vuestro usuario de Spotify en la siguiente linea:

(linea 14):

      "SpotifyUsername": "Your Spotify Device Username (see https://www.spotify.com/us/account/set-device-password/)",

  Por ejemplo:

      "SpotifyUsername": "Hoksilato",

 6- Abrir Elite G19s Companion y rellenar todos los campos que os pida.


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

3- Si queréis añadir nuevas Playlist para que Sirka las reconozca tenéis que modificar los comandos que empiezan por "enter" (nivel avanzado)


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


Espero que os guste y os sirva. En principio no debería haber problema si no tenéis cuenta premium, aunque si no la tenéis os recomiendo mil hacer una cuenta familiar con 5 colegas mas. Así os sale tirado.



Sirka Original por Altair28 (VA+EDDI):
https://forums.frontier.co.uk/showthread.php/332163-Voiceattack-EDDI-en-espa%C3%B1ol

toda la info del G19s:
https://forums.frontier.co.uk/showthread.php/394345-Elite-G19s-Companion

post antiguo en el foro de Elite Dangerous (antes del G19s):
https://forums.frontier.co.uk/showthread.php/332163-Voiceattack-EDDI-en-espa%F1ol?p=5863560#post5863560
