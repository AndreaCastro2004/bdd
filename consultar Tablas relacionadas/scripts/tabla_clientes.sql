
create table clientes(
	cedula char(10),
	nombre varchar(50) not null,
	apellido varchar(50) not null,
	constraint clientes_pk primary key (cedula)
)
delete from clientes
--hago relacion con la tabla compras
alter table compras
add constraint compras_clientes_fk 
foreign key (cedula)
references clientes(cedula)

select * from clientes
select * from compras

--10 insert
insert into clientes(cedula,nombre,apellido)
values('1717171777','Ludobico','Perez');
insert into clientes(cedula,nombre,apellido)
values('1787878777','Monica','Arrollo');
insert into clientes(cedula,nombre,apellido)
values('1797079777','Marcos','Pesantes');
insert into clientes(cedula,nombre,apellido)
values('1727272777','Azul','Celeste');
insert into clientes(cedula,nombre,apellido)
values('1737373777','Polo','Servantes');
insert into clientes(cedula,nombre,apellido)
values('1747474477','Martha','Gonzalez');
insert into clientes(cedula,nombre,apellido)
values('1757575757','Odiseo','Reyes');
insert into clientes(cedula,nombre,apellido)
values('1767877777','Liz','Morales');
insert into clientes(cedula,nombre,apellido)
values('1819191777','Juan','Zambrano');
insert into clientes(cedula,nombre,apellido)
values('1727374777','Lucas','Buena vista');


select * from clientes