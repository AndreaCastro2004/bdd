--me confundi como iva la relacion ya lo corregi gracias
create table usuarios (
	cedula char(5),
	nombre varchar(25) not null,
	apellido varchar(25) not null,
	tipo_cuenta varchar(20),
	limite_credito decimal(10,5)
)
alter table usuarios
add constraint usuarios_pk primary key (cedula),
delete from usuarios
select * from usuarios

--modifico la tabla Cuentas
alter table cuentas
add constraint cuentas_usuarios_fk
foreign key (cedula_propietario)
references usuarios (cedula)
---realizo insert a usuario
insert into usuarios (cedula,nombre,apellido,tipo_cuenta,limite_credito)
values ('12345','Federica','Mercedes','Ahorros','100');
insert into usuarios (cedula,nombre,apellido,tipo_cuenta,limite_credito)
values ('08765','Rosita','Gonzales','Ahorros','200');
insert into usuarios (cedula,nombre,apellido,tipo_cuenta,limite_credito)
values ('43210','Marmota','Duran','Corriente','370');
insert into usuarios (cedula,nombre,apellido,tipo_cuenta,limite_credito)
values ('23232','Baron','Gilden','Ahorros','470');
insert into usuarios (cedula,nombre,apellido,tipo_cuenta,limite_credito)
values ('24242','Haru','Vermudez','Ahorros','500');
insert into usuarios (cedula,nombre,apellido,tipo_cuenta,limite_credito)
values ('17171','Nanami','Surita','Corriente','470');
insert into usuarios (cedula,nombre,apellido,tipo_cuenta,limite_credito)
values ('34343','Modesto','Andrade','Ahorros','700');
insert into usuarios (cedula,nombre,apellido,tipo_cuenta,limite_credito)
values ('56565','Juan','Silva','Ahorros','800');
insert into usuarios (cedula,nombre,apellido,tipo_cuenta,limite_credito)
values ('45454','Monica','Soliz','Ahorros','900');
insert into usuarios (cedula,nombre,apellido,tipo_cuenta,limite_credito)
values ('76767','Bella','Godinez','Ahorros','1000')