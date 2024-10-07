--Relacion clientes compra
select * from compras
select * from clientes
--funcion agregacion 1
select cli.cedula, SUM(monto) as "monto_total_compras" from
compras com,clientes cli
where cli.cedula=com.cedula
group by cli.cedula
--funcion agregacion 2
select com.fecha_compra, COUNT(com.fecha_compra) as "total_compras" from
compras com,clientes cli
where fecha_compra='2023-12-23'
group by com.fecha_compra