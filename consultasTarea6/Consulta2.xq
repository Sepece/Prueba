(:El nombre (sin etiquetas) de los artistas que nacieron antes de 1500.:)

(:La siguiente opción se utiliza para que salga un indentado correcto:)
declare option output:indent "yes";

for $consulta2 in doc("artistas.xml")/artistas/artista
where number($consulta2/nacimiento) < 1500
return data($consulta2/nombreCompleto)