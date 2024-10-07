--relacion registros_entrada y empleados
select * from registros_entrada
select * from empleado
--agregacion 1
select cedula_empleado, count(cedula_empleado) as total_registros_entrada from
registros_entrada
group by cedula_empleado
--funcion agregacion 2
select MIN(fecha) as fecha_minima,MAX(fecha) as fecha_maxima from
registros_entrada
