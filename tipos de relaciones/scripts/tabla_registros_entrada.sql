-- crear tabla registros_entrada
create table registros_entrada(
	codigo_registro int not null,
	cedula_empleado char(10) not null,
	fecha date not null,
	hora time not null,
	constraint registros_entrada_pk primary key(codigo_registro)
)
select * from empleado
delete from registros_entrada
--agrego columna
alter table registros_entrada
add column codigo_empleado int not null

insert into registros_entrada(codigo_registro, cedula_empleado, fecha, hora,codigo_empleado)
values(12345, '1754416489', '01/08/2023', '8:00',2201);
insert into registros_entrada(codigo_registro, cedula_empleado, fecha, hora,codigo_empleado)
values(12355, '1758254591', '03/08/2023', '9:00',2012);
insert into registros_entrada(codigo_registro, cedula_empleado, fecha, hora,codigo_empleado)
values(12346, '1715974492', '25/08/2023', '10:00',2001);
insert into registros_entrada(codigo_registro, cedula_empleado, fecha, hora,codigo_empleado)
values(12347, '1735642583', '28/09/2023', '11:00',1201);
insert into registros_entrada(codigo_registro, cedula_empleado, fecha, hora,codigo_empleado)
values(12389, '1707416984', '16/09/2023', '12:00',2202);
insert into registros_entrada(codigo_registro, cedula_empleado, fecha, hora,codigo_empleado)
values(12349, '1778541235', '17/09/2023', '13:00',2301);
insert into registros_entrada(codigo_registro, cedula_empleado, fecha, hora,codigo_empleado)
values(12310, '1742158637', '14/09/2023', '9:05',2404);
insert into registros_entrada(codigo_registro, cedula_empleado, fecha, hora,codigo_empleado)
values(12311, '1756321784', '15/10/2023', '8:30',5201);
insert into registros_entrada(codigo_registro, cedula_empleado, fecha, hora,codigo_empleado)
values(12358, '1712546328', '07/11/2023', '12:59',6207);
insert into registros_entrada(codigo_registro, cedula_empleado, fecha, hora,codigo_empleado)
values(12378, '1725785413', '31/12/2023', '12:10',6271);






