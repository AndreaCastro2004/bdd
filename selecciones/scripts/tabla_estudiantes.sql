--crear tabla estudiantes
create table estudiantes(
	cedula char(10) not null,
	nombre varchar(50) not null,
	apellido varchar(50) not null,
	email varchar(50) not null,
	fecha_nacimiento date not null,
	constraint estudiantes_pk primary key(cedula)
)

--Traer nombre y cedula estudiante
select nombre,cedula from estudiantes
--traer nombres estudiantes que empiece cedula con 17
select nombre from estudiantes
where cedula like '17%'
--traer nombres completos cuyo nombre empiece con A
select nombre,apellido from estudiantes
where nombre like 'A%'



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
