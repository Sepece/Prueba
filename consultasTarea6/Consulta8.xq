(:Marca y modelo de las impresoras con tamaño A3 (pueden tener otros).:)

(:La siguiente opción se utiliza para que salga un indentado correcto:)
declare option output:indent "yes";

(:La siguiente opción se utiliza para que no salga el atributo xmlns:xsi:)
declare option db:stripns 'true';

for $consulta8 in doc("impresoras.xml")/impresoras/impresora
where $consulta8/tamaño = "A3"
return <impresora>{$consulta8/marca, $consulta8/modelo}</impresora>