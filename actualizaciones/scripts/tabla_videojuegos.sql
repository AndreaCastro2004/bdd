-- crear una tabla llamada videojuegos
create videojuegos(
	codigo int not null,
	nombre varchar(100) not null,
	descripcion varchar(300),
	valoracion int not null,
	constraint videojuegos_pk primary key(codigo)
)

select * from videojuegos
--actualizar decripcion cuya valoracion sea mayor que 9
update videojuegos set descripcion='Mejor Puntuado'
where valoracion > 9

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

