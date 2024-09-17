-- crear una tabla llamada videojuegos
create videojuegos(
	codigo int not null,
	nombre varchar(100) not null,
	descripcion varchar(300),
	valoracion int not null,
	constraint videojuegos_pk primary key(codigo)
)
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



