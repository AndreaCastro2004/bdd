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
alter table estudiantes
add column codigo_profesor int
select *from estudiantes

--referenciarlo
alter table 
add constraint estudiantes_profesores_fk foreign key (codigo)
references estudiantes (codigo_profesor)


insert into estudiantes (cedula,nombre,apellido,email,fecha_nacimiento)
values (1235476801,'Raul','Martínez','raumart01@gmail.com','04/02/2003');
insert into estudiantes (cedula,nombre,apellido,email,fecha_nacimiento)
values (1735476802,'Mario','Guaman','MarioG25@gmail.com', '08/12/2000');
insert into estudiantes (cedula,nombre,apellido,email,fecha_nacimiento)
values (1235476803,'Roberto','Quishpe','RobQuishpe64@gmail.com','29/06/2005');
insert into estudiantes (cedula,nombre,apellido,email,fecha_nacimiento)
values (1735476804,'Paul','Noguera','PaulNog55@gmail.com','22/07/2002');
insert into estudiantes (cedula,nombre,apellido,email,fecha_nacimiento)
values (1235476805,'Marcelo','Ramos','MarceloR72@gmail.com','15/08/2008');
insert into estudiantes (cedula,nombre,apellido,email,fecha_nacimiento)
values (1735476806,'Anthony','Agual','KAgual22@gmail.com','25/03/2002');
insert into estudiantes (cedula,nombre,apellido,email,fecha_nacimiento)
values (1235476807,'Paula','Celi','PauCeli31@gmail.com','30/09/2010' );
insert into estudiantes (cedula,nombre,apellido,email,fecha_nacimiento)
values (1735476808,'Mónica','Martínez','MoniMar15@gmail.com','22/01/2001');
insert into estudiantes (cedula,nombre,apellido,email,fecha_nacimiento)
values (1235476809,'Anabel','Perlaza','WPerlaza18@gmail.com','12/04/2000');
insert into estudiantes (cedula,nombre,apellido,email,fecha_nacimiento)
values (1735476810,'Sofía','Jimenez','SofiJz22@gmail.com','22/01/2001');



insert into estudiantes(cedula,nombre,apellido,email,fecha_nacimiento)
values('1234567890','Maria','Zambrano','mariZam_ldu@.gmail.com','15/03/1978')
insert into estudiantes(cedula,nombre,apellido,email,fecha_nacimiento)
values('0987654321','Sofia','Barreto','sofiaBa_ldu@.gmail.com','17/04/1988')
insert into estudiantes(cedula,nombre,apellido,email,fecha_nacimiento)
values('1234567980','Rachel','Morales','RachelMO_ldu@.gmail.com','20/05/1998')
insert into estudiantes(cedula,nombre,apellido,email,fecha_nacimiento)
values('1234567789','Jose','Arturo','JoseAr_ldu@.gmail.com','15/03/2000')
insert into estudiantes(cedula,nombre,apellido,email,fecha_nacimiento)
values('2234567890','Marcos','Benito','MarcoBen_ldu@.gmail.com','17/03/1978')
insert into estudiantes(cedula,nombre,apellido,email,fecha_nacimiento)
values('1234577890','Rosio','Paredes','RocioPar_ldu@.gmail.com','15/03/1999')
insert into estudiantes(cedula,nombre,apellido,email,fecha_nacimiento)
values('1234567800','Monica','Zurita','MoricaZur_ldu@.gmail.com','15/03/2002')
insert into estudiantes(cedula,nombre,apellido,email,fecha_nacimiento)
values('1234560890','Simiendo','Paredes','SimiendoPar_ldu@.gmail.com','17/04/2004')

select * from estudiantes
