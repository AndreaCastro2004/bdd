--crear tabla transacciones
create table transacciones(
	codigo int not null,
	numero_cuenta char(5) not null,
	monto money not null,
	tipo char(1) not null,
	fecha date not null, 
	hora time not null,
	constraint transacciones_pk primary key(codigo)
)

--seleccionar todas las transacciones tipo D
select * from transacciones
where tipo='D'
--Transacciones montos entre 200 y 2000
select * from transacciones
where monto between money(200) and money(2000)
--seleccionar  fecha diferente a null
select codigo,monto,tipo,fecha from transacciones
where fecha is not null


--1 transacciones tipo c, numero cuenta entre 222001 y 22004
select * from transacciones
where tipo='C' and numero_cuenta between '222001' and '22004'
--2 transacciones tipo d, realizadas 25/5 y rango entre 22007 y 22010
select * from transacciones 
where tipo='D' and EXTRACT (DAY FROM fecha)=25 
and EXTRACT(MONTH FROM fecha)=5
and numero_cuenta between '22007' and '22010'
--3 codigo entre 1 y 5 numero_cuenta  entre 22002 y 22004 realizadas el 26 y 29/5
select * from transacciones
where (codigo between '1' and '5') and (numero_cuenta between '22002' and '22004')
and EXTRACT(DAY FROM fecha)=26 and EXTRACT(DAY FROM fecha)=29
and EXTRACT (MONTH FROM fecha)=5



insert into transacciones(codigo, numero_cuenta, monto, tipo, fecha, hora)
values(78945, '75369', 200, 'C', '20/09/2023', '23:30');
insert into transacciones(codigo, numero_cuenta, monto, tipo, fecha, hora)
values(53147, '32102', 500.65, 'D', '15/06/2022', '17:55');
insert into transacciones(codigo, numero_cuenta, monto, tipo, fecha, hora)
values(32548, '21001', 1600, 'C', '17/05/2021', '16:37');
insert into transacciones(codigo, numero_cuenta, monto, tipo, fecha, hora)
values(32165, '51437', 1050, 'D', '25/04/2020', '15:48');
insert into transacciones(codigo, numero_cuenta, monto, tipo, fecha, hora)
values(78542, '02147', 300, 'D', '20/03/2019', '22:19');
insert into transacciones(codigo, numero_cuenta, monto, tipo, fecha,hora)
values(23210, '32015', 400, 'C', '20/04/2019','13:55');
insert into transacciones(codigo, numero_cuenta, monto, tipo, fecha, hora)
values(35412, '85214', 600, 'D', '07/12/2015', '20:14');
insert into transacciones(codigo, numero_cuenta, monto, tipo, fecha, hora)
values(54193, '96325', 800, 'D', '06/11/2012', '11:00');
insert into transacciones(codigo, numero_cuenta, monto, tipo, fecha, hora)
values(95124, '74125', 900, 'D', '23/10/2002', '9:00');
insert into transacciones(codigo, numero_cuenta, monto, tipo, fecha, hora)
values(54143, '85213', 2000, 'C', '11/09/1999', '7:30');



insert into transacciones(codigo,numero_cuenta,monto,tipo,fecha,hora)
values('12345','09876',160,'c','13/03/2000','12:00')
insert into transacciones(codigo,numero_cuenta,monto,tipo,fecha,hora)
values('10000','09076',160,'D','13/03/2010','12:30')
insert into transacciones(codigo,numero_cuenta,monto,tipo,fecha,hora)
values('12222','09222',1460,'D','13/08/2000','13:00')
insert into transacciones(codigo,numero_cuenta,monto,tipo,fecha,hora)
values('12344','09333',160,'c','13/03/2000','14:00')
insert into transacciones(codigo,numero_cuenta,monto,tipo,fecha,hora)
values('13444','45666',100,'c','13/01/2012','12:00')
insert into transacciones(codigo,numero_cuenta,monto,tipo,fecha,hora)
values('66666','67890',360,'D','13/03/2010','18:00')
insert into transacciones(codigo,numero_cuenta,monto,tipo,fecha,hora)
values('77777','00000',130,'c','13/03/2000','18:06')
insert into transacciones(codigo,numero_cuenta,monto,tipo,fecha,hora)
values('88888','87887',1990,'D','19/09/2009','12:00')
insert into transacciones(codigo,numero_cuenta,monto,tipo,fecha,hora)
values('99999','98989',123,'c','18/03/2001','17:00')
insert into transacciones(codigo,numero_cuenta,monto,tipo,fecha,hora)
values('10101','10299',180,'c','10/09/2030','13:20')