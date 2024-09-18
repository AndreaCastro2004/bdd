--crear una tabla llamada productos
drop table productos
create table productos(
	codigo int not null,
	nombre varchar(50) not null,
	descripcion varchar(200),
	precio money not null,
	stock int not null,
	constraint productos_pk primary key(codigo)
)

--crear select productos empiezan con Q
select * from productos 
where nombre like 'Q%'
--productos con descripcion null
select * from productos
where descripcion is null
--productos con precio entre 2 y 3
select * from productos
where precio between money(2) and money(3)


insert into productos (codigo,nombre,descripcion,precio,stock)
values('123455','leche','Aporta vitaminas A, B y C',1.00,5)

insert into productos (codigo,nombre,descripcion,precio,stock)
values('098767','yogurt','realizada con frutas de la mejor calidad',1.37,8)

insert into productos (codigo,nombre,descripcion,precio,stock)
values('768590','vino','Añejada desde 1998',5,9)

insert into productos (codigo,nombre,descripcion,precio,stock)
values('958695','Galletas','Mantiene el toque especial',1.25,3)

insert into productos (codigo,nombre,descripcion,precio,stock)
values('000012','Rosquitas','Lo mejor para picar en tu tiempo libre',1.34,12)


--se ejecutan solo los campos obligatorios
insert into productos (codigo,nombre,precio,stock)
values('019823','Calamar',7,9)

insert into productos (codigo,nombre,precio,stock)
values('657433','Camaron',3.98,4)

insert into productos (codigo,nombre,precio,stock)
values('090767','Carne',3.00,7)





