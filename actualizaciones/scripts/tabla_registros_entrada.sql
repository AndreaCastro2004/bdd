-- crear tabla registros_entrada
create table registros_entrada(
	codigo_registro int not null,
	cedula_empleado char(10) not null,
	fecha date not null,
	hora time not null,
	constraint registros_entrada_pk primary key(codigo_registro)
)
insert into registros_entrada(codigo_registro,cedula_empleado,fecha,hora)
values('896756','1234567890','20/09/2008','13:00')

insert into registros_entrada(codigo_registro,cedula_empleado,fecha,hora)
values('996756','1234567090','30/08/2009','14:00')

insert into registros_entrada(codigo_registro,cedula_empleado,fecha,hora)
values('606756','1234567000','1/09/2010','13:12')

insert into registros_entrada(codigo_registro,cedula_empleado,fecha,hora)
values('006756','1204567000','5/09/2010','13:50')

insert into registros_entrada(codigo_registro,cedula_empleado,fecha,hora)
values('006996','1204567010','5/09/2011','15:55')

insert into registros_entrada(codigo_registro,cedula_empleado,fecha,hora)
values('106756','1201567000','5/10/2011','13:55')

insert into registros_entrada(codigo_registro,cedula_empleado,fecha,hora)
values('006151','1204167000','9/10/2011','13:50')

insert into registros_entrada(codigo_registro,cedula_empleado,fecha,hora)
values('106151','1204167090','9/10/2011','13:50')

insert into registros_entrada(codigo_registro,cedula_empleado,fecha,hora)
values('111111','1204167190','9/10/2011','16:50')

insert into registros_entrada(codigo_registro,cedula_empleado,fecha,hora)
values('122233','1202367090','9/10/2011','18:50')






