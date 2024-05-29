(:El número de artistas nacidos antes de 1600.:)

(:La siguiente opción se utiliza para que salga un indentado correcto:)
declare option output:indent "yes";

count(
for $consulta5 in doc("artistas.xml")/artistas/artista
where $consulta5/nacimiento < 1600
return $consulta5
)