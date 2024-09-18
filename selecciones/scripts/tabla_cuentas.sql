--crear tabla cuentas
create table cuentas(
	numero_cuenta char(5) not null,
	cedula_propietario char(5) not null,
	fecha_creacion date not null,
	saldo money not null,
	constraint cuentas_pk primary key(numero_cuenta)
)
--traer el numero de cuenta y saldo de las cuentas
select numero_cuenta,saldo from cuentas 
--traer registros de hoy hasta 2 meses antes
select * from cuentas 
where fecha_creacion
between '18/09/2024' and '18/07/2024'
--traer numero_cuenta y saldo de hoy hasta 2 meses antes
select numero_cuenta,saldo from cuentas
where fecha_creacion
between '18/09/2024' and '18/07/2024'




insert into cuentas(numero_cuenta,cedula_propietario,fecha_creacion,saldo)
values('12345','17181','17/09/2004',100)

insert into cuentas(numero_cuenta,cedula_propietario,fecha_creacion,saldo)
values('13345','11922','27/08/2004',150)

insert into cuentas(numero_cuenta,cedula_propietario,fecha_creacion,saldo)
values('11315','11111','16/05/2004',160)

insert into cuentas(numero_cuenta,cedula_propietario,fecha_creacion,saldo)
values('22223','23423','12/12/2005',170)

insert into cuentas(numero_cuenta,cedula_propietario,fecha_creacion,saldo)
values('12375','17161','17/03/2005',180)

insert into cuentas(numero_cuenta,cedula_propietario,fecha_creacion,saldo)
values('19845','97181','27/04/2005',190)

insert into cuentas(numero_cuenta,cedula_propietario,fecha_creacion,saldo)
values('86800','17181','30/05/2005',200)

insert into cuentas(numero_cuenta,cedula_propietario,fecha_creacion,saldo)
values('54321','54321','2/06/2005',210)

insert into cuentas(numero_cuenta,cedula_propietario,fecha_creacion,saldo)
values('67890','09342','10/06/2005',220)

insert into cuentas(numero_cuenta,cedula_propietario,fecha_creacion,saldo)
values('09876','23490','24/06/2005',230)

