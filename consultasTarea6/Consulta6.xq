(:Modelo de las impresoras de tipo “láser”.:)

(:La siguiente opción se utiliza para que salga un indentado correcto:)
declare option output:indent "yes";

(:La siguiente opción se utiliza para que no salga el atributo xmlns:xsi:)
declare option db:stripns 'true';

for $consulta6 in doc("impresoras.xml")/impresoras/impresora
where $consulta6/@tipo = "láser"
return $consulta6/modelo
