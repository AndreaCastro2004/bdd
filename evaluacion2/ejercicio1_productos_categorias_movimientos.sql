--para borrar las tablas
drop table if exists historial_movimientos;
drop table if exists productos ;
drop table if exists categorias ;

--creo las tablas
create table categorias(
	id char(4) not null,
	nombre varchar(150) not null,
	constraint categorias_id_pk primary key (id)
);
create table productos(
	id char(5) not null,
	nombre varchar(150) not null,
	precio_venta money not null,
	precio_compra money not null,
	id_categoria char(4) not null,
	constraint productos_id_pk primary key (id),
	constraint productos_id_fk foreign key (id_categoria)
	references categorias(id)
	
);

create table historial_movimientos(
	id char(5) not null,
	id_producto char (5) not null,
	cantidad int not null,
	fecha_movimiento TIMESTAMP not null,
	constraint historial_movimientos_pk primary key (id),
	constraint historial_movimientos_fk foreign key (id_producto)
	references productos(id)

);
--insertar categorias
insert into categorias (id,nombre)
values('C001','Bebidas');
insert into categorias (id,nombre)
values('C002','Snacks');
insert into categorias (id,nombre)
values('C003','Golosinas');
--insertar productos
insert into productos(id,nombre,precio_venta,precio_compra,id_categoria)
values('P0001','Coca cola 300 ml',0.7,0.55,'C001');
insert into productos(id,nombre,precio_venta,precio_compra,id_categoria)
values('P0002','Coca cola 1000 ml',1,0.8,'C001');
insert into productos(id,nombre,precio_venta,precio_compra,id_categoria)
values('P0003','Doritos 50g',0.5,0.42,'C002');
insert into productos(id,nombre,precio_venta,precio_compra,id_categoria)
values('P0004','Manicho',0.25,0.21,'C003');
insert into productos(id,nombre,precio_venta,precio_compra,id_categoria)
values('P0005','Tango',0.5,0.42,'C003');
--insertar Movimientos
insert into historial_movimientos (id,id_producto,cantidad,fecha_movimiento)
values ('1','P0001',10, '28/10/2020 9:45');
insert into historial_movimientos (id,id_producto,cantidad,fecha_movimiento)
values ('2','P0002',-3, '28/10/2020 10:49');
insert into historial_movimientos (id,id_producto,cantidad,fecha_movimiento)
values ('3','P0001',5, '28/10/2020 12:23');

--selects

select * from productos;
select * from categorias;
select * from historial_movimientos;