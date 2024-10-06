delete from estudiantes
--crear tabla estudiantes
create table estudiantes(
	cedula char(10) not null,
	nombre varchar(50) not null,
	apellido varchar(50) not null,
	email varchar(50) not null,
	fecha_nacimiento date not null,
	constraint estudiantes_pk primary key(cedula)
)
---modifico columna fecha de nacimiento
alter table estudiantes
drop column fecha_nacimiento
alter table estudiantes
add column fecha_nacimiento date
alter table estudiantes
alter column cedula drop not null
alter table estudiantes
drop constraint  estudiantes_pk
--agrego la llave
alter table estudiantes
add constraint estudiantes_pk primary key(cedula)
--
select * from estudiantes


insert into estudiantes (cedula,nombre,apellido,email,fecha_nacimiento,codigo_profesor)
values (1235476801,'Raul','Nagi','raumart01@gmail.com','04/02/2003',00001);
insert into estudiantes (cedula,nombre,apellido,email,fecha_nacimiento,codigo_profesor)
values (1235476800,'Raul','Nagi','raumart01@gmail.com','04/02/2003',00001);
insert into estudiantes (cedula,nombre,apellido,email,fecha_nacimiento,codigo_profesor)
values (1735476802,'Mario','Nabarro','MarioG25@gmail.com', '08/12/2000',00002);
insert into estudiantes (cedula,nombre,apellido,email,fecha_nacimiento,codigo_profesor)
values (1235476803,'Roberto','Quishpe','RobQuishpe64@gmail.com','29/06/2005',00003);
insert into estudiantes (cedula,nombre,apellido,email,fecha_nacimiento,codigo_profesor)
values (1735476804,'Paul','Noguera','PaulNog55@gmail.com','22/07/2002',00004);
insert into estudiantes (cedula,nombre,apellido,email,fecha_nacimiento,codigo_profesor)
values (1235476805,'Marcelo','Ramos','MarceloR72@gmail.com','15/08/2008',00005);
insert into estudiantes (cedula,nombre,apellido,email,fecha_nacimiento,codigo_profesor)
values (1735476806,'Anthony','Nelson','KAgual22@gmail.com','25/03/2002',00006);
insert into estudiantes (cedula,nombre,apellido,email,fecha_nacimiento,codigo_profesor)
values (1235476807,'Paula','Celi','PauCeli31@gmail.com','30/09/2010',00007 );
insert into estudiantes (cedula,nombre,apellido,email,fecha_nacimiento,codigo_profesor)
values (1735476808,'Mónica','Martínez','MoniMar15@gmail.com','22/01/2001',00008);
insert into estudiantes (cedula,nombre,apellido,email,fecha_nacimiento,codigo_profesor)
values (1235476809,'Anabel','Nielsen','WPerlaza18@gmail.com','12/04/2000',00009);
insert into estudiantes (cedula,nombre,apellido,email,fecha_nacimiento,codigo_profesor)
values (1735476810,'Sofía','Jimenez','SofiJz22@gmail.com','22/01/2001',00010);


select * from estudiantes

