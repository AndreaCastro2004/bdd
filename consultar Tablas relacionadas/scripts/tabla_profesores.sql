create table profesores(
 	codigo int,
	nombre varchar(50) not null,
	constraint profesores_pk primary key (codigo)
)
--agrego columna a estudiantes
alter table estudiantes
add column codigo_profesor int 
select *from estudiantes
--referenciarlo con estudiantes
alter table estudiantes
add constraint profesores_estudiantes_fk foreign key (codigo_profesor)
references profesores(codigo)
--insert 
insert into profesores(codigo,nombre)
values (0001,'Francisco');
insert into profesores(codigo,nombre)
values (0002,'Inmaculada');
insert into profesores(codigo,nombre)
values (0003,'Alberto');
insert into profesores(codigo,nombre)
values (0004,'Roberto');
insert into profesores(codigo,nombre)
values (0005,'Rosita');
insert into profesores(codigo,nombre)
values (0006,'Camilo');
insert into profesores(codigo,nombre)
values (0007,'Surita');
insert into profesores(codigo,nombre)
values (0008,'Morita');
insert into profesores(codigo,nombre)
values (0009,'Azul');
insert into profesores(codigo,nombre)
values (0010,'Bartolomeo')