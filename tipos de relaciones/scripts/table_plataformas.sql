
create table plataformas(
	id_plataforma int,
	nombre_plataforma varchar(50) not null,
	codigo_videojuego int,
)
delete from plataformas
--corrijo la llave y la restriccion
alter table plataformas
drop constraint plataformas_pk cascade
alter table plataformas
add constraint plataformas_pk primary key (id_plataforma)
--
select *from plataformas
--insert
insert into plataformas(id_plataforma,nombre_plataforma,codigo_videojuego)
values (1,'Pc','123');
insert into plataformas(id_plataforma,nombre_plataforma,codigo_videojuego)
values (111,'Pc','123');
insert into plataformas(id_plataforma,nombre_plataforma,codigo_videojuego)
values (2,'Nintendo','1234');
insert into plataformas(id_plataforma,nombre_plataforma,codigo_videojuego)
values (3,'PlayStation 4','1235');
insert into plataformas(id_plataforma,nombre_plataforma,codigo_videojuego)
values (4,'Xbox One.','1236');
insert into plataformas(id_plataforma,nombre_plataforma,codigo_videojuego)
values (5,'Xbox One.','1237');
insert into plataformas(id_plataforma,nombre_plataforma,codigo_videojuego)
values (6,'Xbox One.','1238');
insert into plataformas(id_plataforma,nombre_plataforma,codigo_videojuego)
values (7,'Pc','1239');
insert into plataformas(id_plataforma,nombre_plataforma,codigo_videojuego)
values (8,'Pc','1231');
insert into plataformas(id_plataforma,nombre_plataforma,codigo_videojuego)
values (9,'PlayStation 4','121');
insert into plataformas(id_plataforma,nombre_plataforma,codigo_videojuego)
values (10,'Nintendo','122');