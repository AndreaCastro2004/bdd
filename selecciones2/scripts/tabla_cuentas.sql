select * from cuentas
drop table cuentas

create table cuentas(
	numero_cuenta char(5) ,
	cedula_propietario char(5) not null ,
	fecha_creacion date not null,
	saldo money not null,
	constraint cuentas_pk primary key(cedula_propietario)
)

delete from cuentas
--modifico la tabla personas
alter table usuarios
add constraint usuario_cuntas_fk
foreign key (cedula)
references cuentas (cedula_propietario)
--inserto a la tabla usuarios
insert into usuarios (cedula,nombre,apellido,tipo_cuenta,limite_credito)
values('17189','Josefina','Veracruz','Ahorros','100')
select *from usuarios

---realizo insert a cuentas
insert into cuentas (numero_cuenta,cedula_propietario,fecha_creacion,saldo)
values ('12345','17181','2022-08-21','110');
insert into cuentas (numero_cuenta,cedula_propietario,fecha_creacion,saldo)
values ('12345','17111','2022-09-11','210');
insert into cuentas (numero_cuenta,cedula_propietario,fecha_creacion,saldo)
values ('12345','17222','2022-10-18','370');
insert into cuentas (numero_cuenta,cedula_propietario,fecha_creacion,saldo)
values ('12345','17133','2022-11-30','470');
insert into cuentas (numero_cuenta,cedula_propietario,fecha_creacion,saldo)
values ('12345','17444','2022-12-31','500');
insert into cuentas (numero_cuenta,cedula_propietario,fecha_creacion,saldo)
values ('12345','17343','2023-01-10','470');
insert into cuentas (numero_cuenta,cedula_propietario,fecha_creacion,saldo)
values ('12345','17565','2023-06-29','700');
insert into cuentas (numero_cuenta,cedula_propietario,fecha_creacion,saldo)
values ('12345','17676','2023-07-17','800');
insert into cuentas (numero_cuenta,cedula_propietario,fecha_creacion,saldo)
values ('12345','17787','2023-08-18','900');
insert into cuentas (numero_cuenta,cedula_propietario,fecha_creacion,saldo)
values ('12345','17898','2023-09-21','1000')


