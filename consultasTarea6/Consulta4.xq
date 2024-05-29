(:Una lista HTML con el nombre de los artistas nacidos en España.:)

(:La siguiente opción se utiliza para que salga un indentado correcto:)
declare option output:indent "yes";

<ol>
{
for $consulta4 in doc("artistas.xml")/artistas/artista
where $consulta4/pais = "España"
return <li> {$consulta4/nombreCompleto} </li>
}
</ol>