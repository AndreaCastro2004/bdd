--Agregacion
--Operaciones sobre un conjunto de resultados
--count
-- me trae el numero total que hay, no cuenta los que estan null o vacios
select count(estado_civil_codigo) from personas 
--aqui la columna en el count es indiferente por las condiciciones 
--solo cuenta los registros que nos pide esa condicion
select count(*) from personas pe,estado_civil ec
where pe.estado_civil_codigo=ec.codigo
and estado_civil_codigo= 'C'