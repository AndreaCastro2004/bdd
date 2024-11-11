drop table grupos;
drop table articulos cascade;
drop table registro_movimientos

create table grupos (
	id char(4) not null,
	nombre varchar(200) not null,
	constraint grupos_pk primary key (id)
);
create table articulos( 
	id char (5) not null,
	nombre varchar (200) not null,
	precio_venta money not null,
	precio_compra money not null,
	id_grupo char(4) not null,
	constraint articulos_pk primary key(id),
	constraint articulos_fk foreign key (id_grupos)
	references grupos(id)
);
create table registro_movimientos(
	id serial not null,
	id_articulos char(5) not null,
	cantidad int not null,
	fecha_movimiento timestamp not null,
	constraint registro_movimientos_fk foreign key (id_articulos)
	references articulos(id)
);

--inse3rtamos id grupo
insert into grupos (id,nombre)
values('C001','Ropa');
insert into grupos (id,nombre)
values('C002','Electrodomesticos');
insert into grupos (id,nombre)
values('C003','Alimentos');
--articulos
insert into articulos (id,nombre,precio_venta,precio_compra,id_grupos)
values('P001','Blusa',5,3.45,'C001');
insert into articulos (id,nombre,precio_venta,precio_compra,id_grupos)
values('P002','Blusa',5,3.45,'C001');
insert into articulos (id,nombre,precio_venta,precio_compra,id_grupos)
values('P003','Blusa',5,3.45,'C001');
insert into articulos (id,nombre,precio_venta,precio_compra,id_grupos)
values('P004','Blusa',5,3.45,'C001');
insert into articulos (id,nombre,precio_venta,precio_compra,id_grupos)
values('P005','Blusa',5,3.45,'C001');
insert into articulos (id,nombre,precio_venta,precio_compra,id_grupos)
values('P006','Blusa',5,3.45,'C001');
insert into articulos (id,nombre,precio_venta,precio_compra,id_grupos)
values('P007','Blusa',5,3.45,'C001');
insert into articulos (id,nombre,precio_venta,precio_compra,id_grupos)
values('P008','Blusa',5,3.45,'C001');
insert into articulos (id,nombre,precio_venta,precio_compra,id_grupos)
values('P009','Blusa',5,3.45,'C001');
insert into articulos (id,nombre,precio_venta,precio_compra,id_grupos)
values('P010','Blusa',5,3.45,'C001');
--Movimientos
insert into registro_movimientos (id_articulos,cantidad,fecha_movimiento)
values('P001',5,'20/10/2024');
insert into registro_movimientos (id_articulos,cantidad,fecha_movimiento)
values('P001',5,'20/10/2024');
insert into registro_movimientos (id_articulos,cantidad,fecha_movimiento)
values('P001',5,'20/10/2024');
insert into registro_movimientos (id_articulos,cantidad,fecha_movimiento)
values('P001',5,'20/10/2024');
insert into registro_movimientos (id_articulos,cantidad,fecha_movimiento)
values('P001',5,'20/10/2024');
insert into registro_movimientos (id_articulos,cantidad,fecha_movimiento)
values('P001',5,'20/10/2024');
insert into registro_movimientos (id_articulos,cantidad,fecha_movimiento)
values('P001',5,'20/10/2024');
insert into registro_movimientos (id_articulos,cantidad,fecha_movimiento)
values('P001',5,'20/10/2024');
insert into registro_movimientos (id_articulos,cantidad,fecha_movimiento)
values('P001',5,'20/10/2024');
insert into registro_movimientos (id_articulos,cantidad,fecha_movimiento)
values('P001',5,'20/10/2024');

select * from articulos
select * from grupos
select * from registro_movimientos