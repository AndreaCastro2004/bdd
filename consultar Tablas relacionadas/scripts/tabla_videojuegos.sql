-- crear una tabla llamada videojuegos
create videojuegos(
	codigo int not null,
	nombre varchar(100) not null,
	descripcion varchar(300),
	valoracion int not null,
	constraint videojuegos_pk primary key(codigo)
)
delete from videojuegos
--instanciar la tabla con plataforma
alter table plataformas
add constraint videojugos_plataforma_fk foreign key (codigo_videojuego)
references videojuegos (codigo)

insert into videojuegos(codigo, nombre, descripcion, valoracion)
values(123, 'Call of Duty', 'Guerra', 9);
insert into videojuegos(codigo, nombre, descripcion, valoracion)
values(1234, 'Free Fire', 'guerra', 7);
insert into videojuegos(codigo, nombre, descripcion, valoracion)
values(1235, 'Call of Clans', 'juego de terror', 10);
insert into videojuegos(codigo, nombre, descripcion, valoracion)
values(1236, 'Fornite', 'guerra', 10);
insert into videojuegos(codigo, nombre, valoracion)
values(1237, 'Minecraft', 3);
insert into videojuegos(codigo, nombre, descripcion, valoracion)
values(1238, 'Tom and Jerry', 'juego de comedia', 8);
insert into videojuegos(codigo, nombre, descripcion, valoracion)
values(1239, 'Ajedres', 'juego de destreza', 6);
insert into videojuegos(codigo, nombre, descripcion, valoracion)
values(1231, 'God of Ward', 'guerra', 7);--codigo 
insert into videojuegos(codigo, nombre, descripcion, valoracion)
values(122, 'Crash', 'juego de deprote', 9);
insert into videojuegos(codigo, nombre, descripcion, valoracion)
values(121, 'Dragon Ball', 'guerra', 8);


select * from videojuegos
select * from plataformas
--consulta
select vi.*,pla.* from 
videojuegos vi, plataformas pla
where vi.codigo = pla.codigo_videojuego
and descripcion ='guerra'
or (valoracion>7 and nombre like 'C%') or (valoracion>8 and nombre like 'D')
--subconsulta
select pla.* from 
videojuegos vi, plataformas pla
where vi.codigo = pla.codigo_videojuego
and codigo=1231
