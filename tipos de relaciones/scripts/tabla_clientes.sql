
create table clientes(
	cedula char(10),
	nombre varchar(50) not null,
	apellido varchar(50) not null,
	constraint clientes_pk primary key (cedula)
)
insert into clientes (cedula,nombre,apellido)
values ('1717171798','Monica','Balverde')
insert into clientes (cedula,nombre,apellido)
values ('1877877877','Samanta','Reyes')

select * from clientes