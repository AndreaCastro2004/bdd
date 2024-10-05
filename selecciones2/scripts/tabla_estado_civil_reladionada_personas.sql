select *from personas
delete from personas
---para modificar una tabla utilizamos alter table
alter table personas
---para agregar algo a la tabla utilizamos add
add column  estado_civil_codigo char(1) not null

create table estado_civil(
	codigo char(1) not null,
	descripcion varchar(20) not null,
	constraint estado_civil_pk primary key (codigo)
)

--vamos a modificar la estructura de la tabla
--tiene la misma estructura del primary key
alter table personas
--el foreign key nos pide en que columna vamos a poner o va a ver la restriccion de la clave primaria
add constraint personas_estado_civil_fk foreign key (estado_civil_codigo)
--utilizamos el reference para poner con que tabla se relaciona
--y entre parentesis ponemos con la columna que se relaciona
references estado_civil (codigo)

--aqui nos marcaria error porque no emos ingresado nada en la tabla estado civil
insert into personas (cedula,nombre,apellido,estado_civil_codigo)
values ('1718161732','Mack','Zurita','C')

select * from personas
--procedemos a agregar codigo a la tabla estado_civil
insert into estado_civil (codigo,descripcion)
values ('U','Union Libre');
insert into estado_civil (codigo,descripcion)
values ('C','Casado');
insert into estado_civil (codigo,descripcion)
values ('S','Soltero')

select *from estado_civil

