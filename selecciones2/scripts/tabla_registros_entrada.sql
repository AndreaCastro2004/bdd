-- crear tabla registros_entrada
create table registros_entrada(
	codigo_registro int not null,
	cedula_empleado char(10) not null,
	fecha date not null,
	hora time not null,
	constraint registros_entrada_pk primary key(codigo_registro)
)

--seleccionar todas las cedula fecha y hora
select cedula_empleado,fecha,hora from registros_entrada
--sleccionar los registros de entrada entre 7:00 y 14:00
select * from registros_entrada 
where hora between '7:00' and '14:00'
--seelccionar registros_entrada mayores a 8:00
select *from registros_entrada
where hora>'8:00'



--1
select * from registros_entrada
where EXTRACT(MONTH FROM fecha)=9 or cedula_empleado like '17%'
--2
select * from registros_entrada
where EXTRACT(MONTH FROM fecha)=8 
and cedula_empleado like '17%'
and EXTRACT(HOUR FROM hora)>=8
and EXTRACT (HOUR FROM hora)<=12
--3
select * from registros_entrada
where EXTRACT(MONTH FROM fecha)=8 
and (cedula_empleado like '17%'
and EXTRACT(HOUR FROM hora)>=8
and EXTRACT (HOUR FROM hora)<=12)
or (EXTRACT (MONTH FROM fecha)=9
and cedula_Empleado like '8%'
and EXTRACT(HOUR FROM hora)>=9
and EXTRACT (HOUR FROM hora)<=13)



insert into registros_entrada(codigo_registro, cedula_empleado, fecha, hora)
values(12345, '1754416489', '18/06/2023', '7:00');
insert into registros_entrada(codigo_registro, cedula_empleado, fecha, hora)
values(12355, '1758254591', '03/08/2023', '14:00');
insert into registros_entrada(codigo_registro, cedula_empleado, fecha, hora)
values(12346, '1715974492', '25/03/2022', '23:00');
insert into registros_entrada(codigo_registro, cedula_empleado, fecha, hora)
values(12347, '1735642583', '28/12/2015', '16:00');
insert into registros_entrada(codigo_registro, cedula_empleado, fecha, hora)
values(12389, '1707416984', '16/07/2012', '8:00');
insert into registros_entrada(codigo_registro, cedula_empleado, fecha, hora)
values(12349, '1778541235', '17/03/2013', '10:00');
insert into registros_entrada(codigo_registro, cedula_empleado, fecha, hora)
values(12310, '1742158637', '14/05/2017', '19:00');
insert into registros_entrada(codigo_registro, cedula_empleado, fecha, hora)
values(12311, '1756321784', '15/05/2004', '20:00');
insert into registros_entrada(codigo_registro, cedula_empleado, fecha, hora)
values(12358, '1712546328', '07/07/2008', '21:00');
insert into registros_entrada(codigo_registro, cedula_empleado, fecha, hora)
values(12378, '1725785413', '02/09/2023', '4:00');




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






