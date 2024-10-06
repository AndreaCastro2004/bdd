drop table ventas
create table ventas(
	id_venta int,
	codigo_producto int not null,
	fecha_venta date not null,
	cantidad int,
	constraint ventas_pk primary key (codigo_producto)
)
delete from ventas
--cambio la llave a id_venta
alter table ventas
drop constraint ventas_pk
alter table ventas
add constraint ventas_pk primary key (id_venta)
--
select * from ventas
select * from productos
--elimino el constraint foreign 
alter table productos
drop constraint productos_ventas_fk cascade
--10 insert
insert into ventas(id_venta,codigo_producto,fecha_venta,cantidad)
values('1','12','2023-09-12','5');
insert into ventas (id_venta,codigo_producto,fecha_venta,cantidad)
values ('2','13','2024-09-12','10');
insert into ventas(id_venta,codigo_producto,fecha_venta,cantidad)
values('3','14','2024-09-12','10');
insert into ventas(id_venta,codigo_producto,fecha_venta,cantidad)
values('4','15','2024-09-12','10');
insert into ventas(id_venta,codigo_producto,fecha_venta,cantidad)
values('5','16','2024-09-12','10');
insert into ventas(id_venta,codigo_producto,fecha_venta,cantidad)
values('6','17','2024-09-12','10');
insert into ventas(id_venta,codigo_producto,fecha_venta,cantidad)
values('7','18','2024-09-12','10');
insert into ventas(id_venta,codigo_producto,fecha_venta,cantidad)
values('8','19','2024-09-12','10');
insert into ventas(id_venta,codigo_producto,fecha_venta,cantidad)
values('9','20','2024-09-12','10');
insert into ventas(id_venta,codigo_producto,fecha_venta,cantidad)
values('10','21','2024-09-12','10')

