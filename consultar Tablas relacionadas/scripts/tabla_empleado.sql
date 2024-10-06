create table empleado(
	codigo_empleado int not null,
	nombre varchar (25) not null,
	fecha date not null,
	hora  time not null
)--
select *from empleado
select * from registros_entrada
--agrego la restriccion
alter table empleado
add constraint empleado_pk primary key (codigo_empleado)

--referencio
alter table registros_entrada
add constraint empleado_registros_entrada_fk foreign key (codigo_empleado)
references empleado(codigo_empleado)
--insert
delete from empleado
insert into empleado(codigo_empleado,nombre,fecha,hora)
values(2201,'Pedrito','2022-01-12','8:00');
insert into empleado(codigo_empleado,nombre,fecha,hora)
values(2012,'Mani','2022-02-12','9:00');
insert into empleado(codigo_empleado,nombre,fecha,hora)
values(2001,'Brocoli','2022-03-12','10:00');
insert into empleado(codigo_empleado,nombre,fecha,hora)
values(1201,'San Juan','2022-04-12','8:00');
insert into empleado(codigo_empleado,nombre,fecha,hora)
values(2202,'Sol','2022-05-12','11:00');
insert into empleado(codigo_empleado,nombre,fecha,hora)
values(2301,'Meri','2022-06-12','12:00');
insert into empleado(codigo_empleado,nombre,fecha,hora)
values(2404,'Cometa','2022-07-12','13:00');
insert into empleado(codigo_empleado,nombre,fecha,hora)
values(5201,'Lucio','2022-08-12','11:50');
insert into empleado(codigo_empleado,nombre,fecha,hora)
values(6207,'Andres','2022-09-12','9:30');
insert into empleado(codigo_empleado,nombre,fecha,hora)
values(6271,'Francisco','2022-10-12','10:25')

select * from empleado
select * from registros_entrada
--consultas
select re.cedula_empleado,re.fecha,em.nombre from 
empleado em,registros_entrada re
where em.codigo_empleado=re.codigo_empleado
and ((re.fecha between '2023-08-01' and '2023-08-31')
or (cedula_empleado like '17%') and (re.hora between '8:00' and '12:00'))
or ((re.fecha between '2023-10-06' and '2023-10-20')
and (cedula_empleado like '08%') and (re.hora between '9:00' and '13:00')) 
--subconsultas
select em.* from 
empleado em,registros_entrada re
where em.codigo_empleado=re.codigo_empleado
and em.codigo_empleado=2201
