(:Modelo de las impresoras en red.:)

(:La siguiente opción se utiliza para que salga un indentado correcto:)
declare option output:indent "yes";

(:La siguiente opción se utiliza para que no salga el atributo xmlns:xsi:)
declare option db:stripns 'true';

for $consulta10 in doc("impresoras.xml")/impresoras/impresora
where exists($consulta10/enred)
return data($consulta10/modelo)