--creacion tabla personas
create table personas(
	cedula char(10) not null,--not null se utiliza cuando el campo es obligatorio
	nombre varchar(50) not null,
	apellido varchar(50) not null,
	estatura decimal,
	fecha_nacimiento date,
	hora_nacimiento time,
	cantidad_ahorrada money,
	numero_hijos int,
	constraint personas_pk primary key(cedula)
)
delete from personas
alter table personas
alter column fecha_nacimiento set not null
--referenciamos
alter table prestamo
add constraint personas_prestamo_fk foreign key (cedula)
references personas(cedula)
--insert
insert into personas(cedula,nombre,apellido,numero_hijos,estatura,fecha_nacimiento,hora_nacimiento,cantidad_ahorrada)
values ('1234767800','Sean','sol',3,1.99,'15/03/2006','13:00',100.87);
insert into personas(cedula,nombre,apellido,numero_hijos,estatura,fecha_nacimiento,hora_nacimiento,cantidad_ahorrada)
values ('1718148970','Moiu','Rosio',3,1.99,'15/03/2006','13:00',100.87);
insert into personas(cedula,nombre,apellido,numero_hijos,estatura,fecha_nacimiento,hora_nacimiento,cantidad_ahorrada)
values ('1788888888','Barolome','Marta',3,1.99,'15/03/2006','13:00',100.87);
insert into personas(cedula,nombre,apellido,numero_hijos,estatura,fecha_nacimiento,hora_nacimiento,cantidad_ahorrada)
values ('1233444400','judas','Zambrano',3,1.99,'15/03/2006','13:00',100.87);
insert into personas(cedula,nombre,apellido,numero_hijos,estatura,fecha_nacimiento,hora_nacimiento,cantidad_ahorrada)
values ('1728822882','juan','sol',3,1.99,'15/03/2006','13:00',100.87);
insert into personas(cedula,nombre,apellido,numero_hijos,estatura,fecha_nacimiento,hora_nacimiento,cantidad_ahorrada)
values ('1729310200','San Pedro','sol',3,1.99,'15/03/2006','13:00',100.87);
insert into personas(cedula,nombre,apellido,numero_hijos,estatura,fecha_nacimiento,hora_nacimiento,cantidad_ahorrada)
values ('1234232323','Jesus','sol',3,1.99,'15/03/2006','13:00',100.87);
insert into personas(cedula,nombre,apellido,numero_hijos,estatura,fecha_nacimiento,hora_nacimiento,cantidad_ahorrada)
values ('1233434343','Iscariote','sol',3,1.99,'15/03/2006','13:00',100.87);
insert into personas(cedula,nombre,apellido,numero_hijos,estatura,fecha_nacimiento,hora_nacimiento,cantidad_ahorrada)
values ('1254544544','Godinez','Reyes',3,1.99,'15/03/2006','13:00',100.87);
insert into personas(cedula,nombre,apellido,numero_hijos,estatura,fecha_nacimiento,hora_nacimiento,cantidad_ahorrada)
values ('1235545455','Susan','sol',3,1.99,'15/03/2006','13:00',100.87);

select * from prestamo
--consulta 
select pe.cantidad_ahorrada,pre.monto,pre.garante from
personas pe,prestamo pre
where pe.cedula=pre.cedula
and monto between money(100) and money(1000)
--subconsulta
select pe.* from
personas pe,prestamo pre
where pe.cedula=pre.cedula
and nombre= 'Sean'
