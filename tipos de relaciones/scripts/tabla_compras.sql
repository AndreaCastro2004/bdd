
create table compras(
	id_compra int,
	cedula char(10) not null,
	fecha_compra date  not null,
	monto decimal(10,2)not null,
	constraint compras_pk primary key (cedula)
)
--corrigo la llave
alter table compras
drop constraint compras_pk cascade
alter table compras
add constraint compras_pk primary key (id_compra)

select * from clientes
select * from compras

--10 insert
insert into compras(id_compra,cedula,fecha_compra,monto)
values('1','1717171777','2023-09-23','100');
insert into compras(id_compra,cedula,fecha_compra,monto)
values('2','1787878777','2023-12-23','110');
insert into compras(id_compra,cedula,fecha_compra,monto)
values('3','1797079777','2024-11-23','160');
insert into compras(id_compra,cedula,fecha_compra,monto)
values('4','1727272777','2024-11-23','170');
insert into compras(id_compra,cedula,fecha_compra,monto)
values('5','1737373777','2024-11-23','180');
insert into compras(id_compra,cedula,fecha_compra,monto)
values('6','1747474477','2024-11-23','190');
insert into compras(id_compra,cedula,fecha_compra,monto)
values('7','1757575757','2024-11-23','110');
insert into compras(id_compra,cedula,fecha_compra,monto)
values('8','1767877777','2024-11-23','160');
insert into compras(id_compra,cedula,fecha_compra,monto)
values('9','1819191777','2024-11-23','160');
insert into compras(id_compra,cedula,fecha_compra,monto)
values('10','1727374777','2024-11-23','160')
