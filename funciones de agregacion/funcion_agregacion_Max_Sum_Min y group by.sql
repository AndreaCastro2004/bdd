--AGREGACIONES MAX-SUM-MIN

---Agregacion MAX
--para buscar el numero maximo
--funciona igual que el resto igual debe ser un tipo de dato numerico 
select Max (cast(cantidad_ahorrada as numeric))--ESTE SE APLICA SOBRE 
from personas pe,estado_civil ec--NUESTRO
where pe.estado_civil_codigo=ec.codigo--CONJUNTO DE
and estado_civil_codigo= 'C'--RESULTADOS

--TAMBIEN VALE APLICARLO SOBRE UNA TABLA 

--Agregacion Sum
---para sumar
select Sum (cast(cantidad_ahorrada as numeric))
from personas pe,estado_civil ec
where pe.estado_civil_codigo=ec.codigo
and estado_civil_codigo= 'C'

--Agregacioon min
--para sacar el dato minimo
select MIN (cast(cantidad_ahorrada as numeric))
from personas pe,estado_civil ec
where pe.estado_civil_codigo=ec.codigo
and estado_civil_codigo= 'C'

--si los conviertes y te sale null es por que no tiene ningun dato 

--group by 
select estado_civil_codigo,count(*) from personas
group by estado_civil_codigo
