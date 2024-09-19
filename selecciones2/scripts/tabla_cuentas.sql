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


--1
select numero_cuenta,saldo from cuentas
where saldo>money(100) and saldo<money(1000)
--2
select * from cuentas
where fecha_creacion between '19/9/2024' and '19/9/2023'
--3
select * from cuentas
where saldo='0' or cedula_propietario like '%2'


insert into cuentas (numero_cuenta,cedula_propietario,fecha_creacion,saldo)
values (25569,17504,'15/01/2030',500);
insert into cuentas (numero_cuenta,cedula_propietario,fecha_creacion,saldo)
values (25570,17500,'01/11/2028',600);
insert into cuentas (numero_cuenta,cedula_propietario,fecha_creacion,saldo)
values (25571,17501,'22/01/2023',700);
insert into cuentas (numero_cuenta,cedula_propietario,fecha_creacion,saldo)
values (25572,17508,'30/05/2022',800);
insert into cuentas (numero_cuenta,cedula_propietario,fecha_creacion,saldo)
values (25573,17509,'15/03/2023',900);
insert into cuentas (numero_cuenta,cedula_propietario,fecha_creacion,saldo)
values (25574,17510,'15/05/2023',1000);
insert into cuentas (numero_cuenta,cedula_propietario,fecha_creacion,saldo)
values (25575,17507,'15/09/2023',1500);
insert into cuentas (numero_cuenta,cedula_propietario,fecha_creacion,saldo)
values (25576,17515,'15/10/2024',2500);
insert into cuentas (numero_cuenta,cedula_propietario,fecha_creacion,saldo)
values (25577,17512,'15/08/2025',3500);
insert into cuentas (numero_cuenta,cedula_propietario,fecha_creacion,saldo)
values (25578,17503,'15/06/2017',4500);






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

