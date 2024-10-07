--relacion entre persona y prestamo
select * from personas
select * from prestamo
--funcion de agregacion 1
select per.cedula,sum(cast (monto as numeric)) from 
personas per,prestamo pre
where per.cedula=pre.cedula
group by per.cedula 
--funcion de agregacion 2
select count(numero_hijos) as total_personas from personas 
where numero_hijos>=1 
group by numero_hijos
