# VoiceAttack-Profiles
Perfiles de Voice Attack para uso personal pero compartidos para quien los quiera.

## Manual
Os comparto un manualillo para añadir Spotify en vuestro perfil actual de VA:

1- Descargar plugin VA de Spotify de [aquí](http://www.litpixi.com/va-spotify/). Más info [aquí](http://voiceattack.com/SMF/index.php?topic=585.0/)

2- Descomprimir contenido en .\Voiceattack\Apps Os debería quedar la carpeta Spotify al lado de la de EDDI.

3- Descargar Command Line Media Controller (CLMControl) de [aquí](https://commandlinemedia.codeplex.com/). Más info [aquí](https://commandlinemedia.codeplex.com/documentation)

4- Descomprimir contenido en .\Voiceattack\Apps\Spotify

5- Descargar perfil VAP de Spotify de [aquí](https://github.com/hoksilato2/VoiceAttack-Profiles/raw/master/VAPs/Hoksilato-Spotify-Profile.vap) (Usar botón derecho -> Decargar enlace..)

6- Abrir VA y exportar vuestro actual perfil (para hacer un backup por si aca)

7- Editar perfil que usáis en VA y usar botón "Import Commands"

8- Seleccionar perfil VAP de Spotify descargado para añadir comandos de Spotify a vuestro perfil.

## A tener en cuenta

- Dado que el plugin sigue con muchos bugs y es bastante inestable, he substituido parte de los comandos con la ayuda del CLMControl que funciona muy bien. Es para controlar las acciones de varios reproductores mediante consola de comandos.

- ES NECESARIO ANULAR OTROS COMANDOS DE VA DE OTROS REPRODUCTORES (COMO VLC) DADO QUE PUEDE QUE ALGUNOS COMANDOS SEAN IGUALES (Ej: "Pon música tranquila")


Una vez cargado el perfil es recomendable realizar algún cambio:

## Configurar comandos para Abrir Spotify

a) edita comando "LaunchSpotify"

b) edita subcomando "Run Application" y selecciona el exe o el shortcut de tu Spotify

c) guarda todo.


## Configurar Playlists

a) mediante menú de botón derecho, duplica el comando "EJEMPLO: Copia este comando y pega la URL de tu playlist"

b) Activa casilla "When I say" y modifica contenido con lo que queréis decir para que Shirka os entienda

ejemplo: Pon[ algo de ; ]música Pop

c) editar subcomando "Set Text" que está entre comentarios con dirección URI de la playlist

d) Podéis editar el otro subcomando "Set Text" con lo que queráis que Shirka os conteste al abrir la playlist.



## Como conseguir dirección URI de Spotify

a) Abrir Spotify (o a estas alturas decir "Abre Spotify"

b) buscar playlist deseada.

c) Buscar menú "..." donde está la opción de "compartir"

d) Usar opción "URI" para que se copie en el portapapeles.

e) el formato es como este: spotify:usermicron07laylist:2CUqZmzR60Q5dnWP3kvRAm (playlist hecha por el creador del plugin)



Espero que os guste y os sirva. En principio no debería haber problema si no tenéis cuenta premium, aunque si no la tenéis os recomiendo mil hacer una cuenta familiar con 5 colegas mas. Así os sale tirado.


post en el foro de Elite Dangerous: 
https://forums.frontier.co.uk/showthread.php/332163-Voiceattack-EDDI-en-espa%F1ol?p=5863560#post5863560
