(:Nombre y país de todos los artistas.:)

(:La siguiente opción se utiliza para que salga un indentado correcto:)
declare option output:indent "yes";

for $consulta in doc("artistas.xml")/artistas/artista
return <artista>{$consulta/nombreCompleto, $consulta/pais}</artista>