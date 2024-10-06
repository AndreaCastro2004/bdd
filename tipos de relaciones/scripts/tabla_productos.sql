--crear una tabla llamada productos
drop table productos
create table productos(
	codigo int not null,
	nombre varchar(50) not null,
	descripcion varchar(200),
	precio money not null,
	stock int not null,
	constraint productos_pk primary key(codigo)
)
delete from productos
--referencio con la tabla  ventas
alter table ventas
add constraint productos_ventas_fk foreign key (codigo_producto)
references productos(codigo)


insert into productos(codigo,nombre,precio,stock) 
values (12,'Mantel',3.50,10);
insert into productos(codigo,nombre,descripcion,precio,stock) 
values (13,'Mariscos','Frescura sinigual',2.50,20);
insert into productos(codigo,nombre,descripcion,precio,stock) 
values (14,'Mantequilla','100% natural',1.50,30);
insert into productos(codigo,nombre,descripcion,precio,stock) 
values (15,'Mayonesa','Con las mejores especias',3.0,40);
insert into productos(codigo,nombre,descripcion,precio,stock) 
values (16,'Manteca','Para las comidas',2.50,50);
insert into productos(codigo,nombre,precio,stock) 
values (17,'Molino',1.50,50);
insert into productos(codigo,nombre,precio,stock) 
values (18,'Queso',5.50,60);
insert into productos(codigo,nombre,precio,stock)
values (19,'Leche',2.50,70);
insert into productos(codigo,nombre,precio,stock)
values (20,'Jamon',1.00,120);
insert into productos(codigo,nombre,precio,stock)
values (21,'Coca Cola',3.50,300);






