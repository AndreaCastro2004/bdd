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
--modifico columns
alter table transacciones
alter column codigo set not null 
alter table transacciones
alter column fecha set not null 
alter table transacciones
alter column hora set not null 

delete from transacciones
--referencio 
alter table banco 
add constraint transacciones_banco_fk foreign key (codigo_transaccion)
references transacciones(codigo)


insert into transacciones(codigo, numero_cuenta, monto, tipo, fecha, hora)
values(1, '22001', 200, 'C', '20/09/2023', '23:30');
insert into transacciones(codigo, numero_cuenta, monto, tipo, fecha, hora)
values(2, '22002', 500.65, 'D', '15/06/2022', '17:55');
insert into transacciones(codigo, numero_cuenta, monto, tipo, fecha, hora)
values(3, '22003', 1600, 'C', '17/05/2021', '16:37');
insert into transacciones(codigo, numero_cuenta, monto, tipo, fecha, hora)
values(4, '22004', 1050, 'D', '25/04/2020', '15:48');
insert into transacciones(codigo, numero_cuenta, monto, tipo, fecha, hora)
values(5, '22001', 300, 'D', '20/03/2019', '22:19');
insert into transacciones(codigo, numero_cuenta, monto, tipo, fecha,hora)
values(6, '22004', 400, 'C', '20/04/2019','13:55');
insert into transacciones(codigo, numero_cuenta, monto, tipo, fecha, hora)
values(7, '22002', 600, 'D', '07/12/2015', '20:14');
insert into transacciones(codigo, numero_cuenta, monto, tipo, fecha, hora)
values(8, '22003', 800, 'D', '06/11/2012', '11:00');
insert into transacciones(codigo, numero_cuenta, monto, tipo, fecha, hora)
values(9, '22004', 900, 'D', '23/10/2002', '9:00');
insert into transacciones(codigo, numero_cuenta, monto, tipo, fecha, hora)
values(10, '22001', 2000, 'C', '11/09/1999', '7:30');

select *from transacciones
select *from banco
--consulta
select trans.*,ban.*from 
transacciones trans,banco ban 
where trans.codigo=ban.codigo_transaccion
and tipo='C'
and numero_cuenta between '22001' and '22004'
--Subconsulta
select trans.* from 
transacciones trans,banco ban 
where trans.codigo=ban.codigo_transaccion
and codigo_transaccion=1