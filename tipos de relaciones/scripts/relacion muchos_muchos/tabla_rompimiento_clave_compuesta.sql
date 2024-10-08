create table productos(
	codigo int not null,
	nombre varchar(50) not null,
	stock int not null,
	constraint productos_pk primary key(codigo)	
)
create table proveedores(
	codigo int not null,
	nombre varchar(50) not null,
	telefono varchar(10) not null,
	constraint proveedores_pk primary key(codigo)
)
--tabla rompimiento donde se van a relacionar las tablas productos y proveedores
create table productos_por_proveedor(
	pp_codigo_producto int not null,
	pp_codigo_proveedor int not null,
	precio money  not null,
	--establecemos relacion con la tabla productos
	constraint producto_fk foreign key (pp_codigo_producto) references productos(codigo),
	constraint proveedores_fk foreign key (pp_codigo_proveedor) references proveedores(codigo),
	--aqui realizamos la clave compuesta de las 2 columnas
	constraint productos_por_proveedor_pk primary key(pp_codigo_producto,pp_codigo_proveedor)
)
--insert a productos
select * from productos
insert into productos(codigo,nombre,stock)
values (100,'Doritos',100);
insert into productos(codigo,nombre,stock)
values (200,'Cachitos',200);
insert into productos(codigo,nombre,stock)
values (300,'Papas',300);
insert into productos(codigo,nombre,stock)
values (400,'Takis',0);
--insert a proveedores
select * from proveedores
insert into proveedores (codigo,nombre,telefono)
values(1,'Snacks SA','0998765432');
insert into proveedores (codigo,nombre,telefono)
values(2,'Distrisnacks','0912345678');
--insert sobre la tabla de rompimiento
select * from productos_por_proveedor
insert into productos_por_proveedor(pp_codigo_producto,pp_codigo_proveedor,precio)
values(300,1,0.48);
insert into productos_por_proveedor(pp_codigo_producto,pp_codigo_proveedor,precio)
values(300,2,0.49);
insert into productos_por_proveedor(pp_codigo_producto,pp_codigo_proveedor,precio)
values(100,1,0.50);
insert into productos_por_proveedor(pp_codigo_producto,pp_codigo_proveedor,precio)
values(200,1,0.51);
insert into productos_por_proveedor(pp_codigo_producto,pp_codigo_proveedor,precio)
values(400,2,0.50);

--consultar tabla de rompimiento debe aver relacion entre las 3 tablas
select prod.codigo,prod.nombre,prov.nombre,pp.precio from productos prod,proveedores prov,productos_por_proveedor pp
--y para que no nos traiga una mescolanza debemos aser que nos traiga 
--solo los que estan relacionadas con la condicion dada
where pp.pp_codigo_producto=prod.codigo
and pp.pp_codigo_proveedor=prov.codigo
and prod.codigo=300