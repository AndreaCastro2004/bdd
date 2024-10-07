--relacion entre productos y ventas
select * from productos
select * from ventas
--funcion de agregacion 1
select MAX(cast (precio as numeric)) as precio_maximo from 
productos 
--funcion de agregacion 2
select sum(cantidad) as cantidad_total_vendida from 
ventas 

