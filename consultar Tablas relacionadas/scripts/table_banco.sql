create table banco(
	codigo_banco int,
	codigo_transaccion int,
	detalle varchar(100),
	constraint banco_pk primary key (codigo_banco)
)
insert into banco (codigo_banco,codigo_transaccion,detalle)
values(0,1,'movimiento de una cantidad de 100');
insert into banco (codigo_banco,codigo_transaccion,detalle)
values(23,1,'movimiento de una cantidad de 100');
insert into banco (codigo_banco,codigo_transaccion,detalle)
values(1,2,'movimiento de una cantidad de 120');
insert into banco (codigo_banco,codigo_transaccion,detalle)
values(2,3,'movimiento de una cantidad de 110');
insert into banco (codigo_banco,codigo_transaccion,detalle)
values(3,4,'movimiento de una cantidad de 120');
insert into banco (codigo_banco,codigo_transaccion,detalle)
values(4,5,'movimiento de una cantidad de 110');
insert into banco (codigo_banco,codigo_transaccion,detalle)
values(5,6,'movimiento de una cantidad de 130');
insert into banco (codigo_banco,codigo_transaccion,detalle)
values(6,7,'movimiento de una cantidad de 110');
insert into banco (codigo_banco,codigo_transaccion,detalle)
values(7,8,'movimiento de una cantidad de 130');
insert into banco (codigo_banco,codigo_transaccion,detalle)
values(8,9,'movimiento de una cantidad de 120');
insert into banco (codigo_banco,codigo_transaccion,detalle)
values(9,10,'movimiento de una cantidad de 120');