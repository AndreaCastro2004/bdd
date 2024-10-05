
create table compras(
	id_compra int,
	cedula char(10) not null,
	fecha_compra date  not null,
	monto decimal(10,2)not null,
	constraint compras_pk primary key (cedula)
)
--hago relacion con la tabla clientes
alter table clientes
add constraint clientes_compras_fk 
foreign key (cedula)
references compras(cedula)

select * from clientes
select * from compras

--10 insert
insert into compras(id_compra,cedula,fecha_compra,monto)
values('1','1717171798','2023-09-23','100');
insert into compras(id_compra,cedula,fecha_compra,monto)
values('2','1717171777','2023-12-23','110');
insert into compras(id_compra,cedula,fecha_compra,monto)
values('3','1877177177','2024-11-23','160');
insert into compras(id_compra,cedula,fecha_compra,monto)
values('4','1877877877','2024-11-23','160');
insert into compras(id_compra,cedula,fecha_compra,monto)
values('5','1977197197','2024-11-23','160');
insert into compras(id_compra,cedula,fecha_compra,monto)
values('6','1277277277','2024-11-23','160');
insert into compras(id_compra,cedula,fecha_compra,monto)
values('7','1377377377','2024-11-23','160');
insert into compras(id_compra,cedula,fecha_compra,monto)
values('8','1477477477','2024-11-23','160');
insert into compras(id_compra,cedula,fecha_compra,monto)
values('9','1577577577','2024-11-23','160');
insert into compras(id_compra,cedula,fecha_compra,monto)
values('10','1677677677','2024-11-23','160')
