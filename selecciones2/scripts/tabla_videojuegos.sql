-- crear una tabla llamada videojuegos
create videojuegos(
	codigo int not null,
	nombre varchar(100) not null,
	descripcion varchar(300),
	valoracion int not null,
	constraint videojuegos_pk primary key(codigo)
)

--seleccionar todos los videojuegos que comience con nombre c
select * from videojuegos
where nombre like ('C%')
--seleccionar videojuegos con valoracion entre 9 y 10
select * from videojuegos
where valoracion between '9' and '10'
--seleccionar videojuegos con descripcion null
select * from videojuegos
where descripcion is null




insert into videojuegos(codigo, nombre, descripcion, valoracion)
values(07563, 'Call of Duty', 'juego de terror', 9);
insert into videojuegos(codigo, nombre, descripcion, valoracion)
values(85421, 'Free Fire', 'juego de accion', 7);
insert into videojuegos(codigo, nombre, descripcion, valoracion)
values(93475, 'Call of Clans', 'juego de terror', 10);
insert into videojuegos(codigo, nombre, descripcion, valoracion)
values(15983, 'Fornite', 'juego de suspenso', 10);
insert into videojuegos(codigo, nombre, valoracion)
values(35784, 'Minecraft', 3);
insert into videojuegos(codigo, nombre, descripcion, valoracion)
values(54682, 'Tom and Jerry', 'juego de comedia', 8);
insert into videojuegos(codigo, nombre, descripcion, valoracion)
values(01456, 'Ajedres', 'juego de psicoligia', 6);
insert into videojuegos(codigo, nombre, descripcion, valoracion)
values(70215, 'God of Ward', 'juego de aprendisaje', 7);
insert into videojuegos(codigo, nombre, descripcion, valoracion)
values(63240, 'Crash', 'juego de deprote', 9);
insert into videojuegos(codigo, nombre, descripcion, valoracion)
values(63549, 'Dragon Ball', 'juego de baile', 8);




insert into videojuegos(codigo,nombre,descripcion,valoracion)
values('12345','Micki mause','gamer profecional con un IQ del 90',100)
insert into videojuegos(codigo,nombre,descripcion,valoracion)
values('12355','TOKOSHIDA','Novato con ganas de aprender',12)
insert into videojuegos(codigo,nombre,descripcion,valoracion)
values('12455','Marcie','Todo por 1',55)
insert into videojuegos(codigo,nombre,descripcion,valoracion)
values('17455','Topodey','SI SE PUEDE MI GENTE',60)
insert into videojuegos(codigo,nombre,descripcion,valoracion)
values('88888','Mayse','Todos contra todos',35)

--insert solo con los campos obligatorios
insert into videojuegos(codigo,nombre,valoracion)
values('00005','Surigat',20)
insert into videojuegos(codigo,nombre,valoracion)
values('01115','Moret',69)
insert into videojuegos(codigo,nombre,valoracion)
values('02255','Contet',80)

