
create table usuarios (
	cedula char(5),
	nombre varchar(25) not null,
	apellido varchar(25) not null,
	tipo_cuenta varchar(20),
	limite_credito decimal(10,5)
)
select * from usuarios

insert into usuarios(cedula,nombre,apellido,tipo_cuenta,limite_credito)
values ('17111','romina','Mariz','Ahorro','150')