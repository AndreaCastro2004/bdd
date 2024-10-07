
---Agregacion AVG calcula Promedio 
--el avg sirve solo con numeros numericos si tenemos de otro tipo de dato 
--como en ete caso money devemos convertirlo para eso utilizamos cast 
select AVG (cast(cantidad_ahorrada as numeric))from personas
--de hay el resto se hace igual que el count 
select AVG (cast(cantidad_ahorrada as numeric))
from personas pe,estado_civil ec
where pe.estado_civil_codigo=ec.codigo
and estado_civil_codigo= 'C'
--si lo conviertes y te sale null es por que no tiene ningun dato para promediar
