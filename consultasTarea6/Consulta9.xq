(:Marca y modelo de las impresoras con tamaño A3 como único tamaño.:)

(:La siguiente opción se utiliza para que salga un indentado correcto:)
declare option output:indent "yes";

(:La siguiente opción se utiliza para que no salga el atributo xmlns:xsi:)
declare option db:stripns 'true';

for $consulta9 in doc("impresoras.xml")/impresoras/impresora
where $consulta9/tamaño = "A3" and count($consulta9/tamaño) = 1
return <impresora>{$consulta9/marca, $consulta9/modelo}</impresora>