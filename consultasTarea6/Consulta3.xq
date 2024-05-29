(:Nombre de los artistas para los que no hay año de fallecimiento.:)

(:La siguiente opción se utiliza para que salga un indentado correcto:)
declare option output:indent "yes";

for $consulta3 in doc("artistas.xml")/artistas/artista
where empty($consulta3/fallecimiento) 
return data($consulta3/nombreCompleto)