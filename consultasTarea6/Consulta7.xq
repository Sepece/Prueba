(:Marca y modelo de las impresoras con más de un tamaño .:)

(:La siguiente opción se utiliza para que salga un indentado correcto:)
declare option output:indent "yes";

(:La siguiente opción se utiliza para que no salga el atributo xmlns:xsi:)
declare option db:stripns 'true';

for $consulta7 in doc("impresoras.xml")/impresoras/impresora
where count($consulta7/tamaño) > 1
return <impresora>{$consulta7/marca, $consulta7/modelo}</impresora>