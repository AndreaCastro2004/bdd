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

select * from transacciones 
--elemina transferencia entre 14 y 18 horas del mes de agosto año actual
delete from transacciones
where EXTRACT(HOUR FROM hora)>=14
and  EXTRACT(HOUR FROM hora)<=18
and EXTRACT(MONTH FROM fecha)=8
and EXTRACT (YEAR FROM fecha)=2024



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