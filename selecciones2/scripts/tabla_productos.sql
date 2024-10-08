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


--todos los productos con stock=10 y precio<10
select * from productos 
where stock='10' and precio<money(10)
-- selecionar nombre stock de de los productos con m en nombre o esten en blanco
select nombre,stock from productos
where nombre like 'm' or descripcion is null
-- seleccionar el nombre con descripcion null o stock 0
select nombre from productos
where descripcion is null or stock='0'





insert into productos(codigo,nombre,descripcion,precio,stock) 
values (1,'Jabón','Lava todo',3.50,10);
insert into productos(codigo,nombre,descripcion,precio,stock) 
values (2,'Shampoo','Savital',2.50,20);
insert into productos(codigo,nombre,descripcion,precio,stock) 
values (3,'Deja','Deja',1.50,30);
insert into productos(codigo,nombre,descripcion,precio,stock) 
values (4,'Pasta dental','Fortident',3.0,40);
insert into productos(codigo,nombre,descripcion,precio,stock) 
values (5,'Cera','Cera de piso',2.50,50);
insert into productos(codigo,nombre,precio,stock) 
values (6,'Pan',1.50,50);
insert into productos(codigo,nombre,precio,stock) 
values (7,'Queso',5.50,60);
insert into productos(codigo,nombre,precio,stock)
values (8,'Leche',2.50,70);
insert into productos(codigo,nombre,precio,stock)
values (9,'Jamon',1.00,120);
insert into productos(codigo,nombre,precio,stock)
values (10,'Coca Cola',3.50,300);





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





