--creacion tabla personas
create table personas(
	cedula char(10) not null,--not null se utiliza cuando el campo es obligatorio
	nombre varchar(50) not null,
	apellido varchar(50) not null,
	estatura decimal,
	fecha_nacimiento date,
	hora_nacimiento time,
	cantidad_ahorrada money,
	numero_hijos int,
	constraint personas_pk primary key(cedula)
)

DROP table personas
alter table personas
alter column fecha_nacimiento drop not null ;
select * from personas
--actualiza el numero_hijos=2 (transaccion>100 y <500 en mes 9 entre 14:00 y 20:00)
update personas set numero_hijos='2'
--validacion cantidad ahorrada
Where cantidad_ahorrada>money(100) and cantidad_ahorrada<money(500)
--validacion de mes
and EXTRACT(MONTH FROM fecha_nacimiento)=9
--validacion de hora 
and EXTRACT (HOUR FROM hora_nacimiento)>=14
and EXTRACT (HOUR FROM hora_nacimiento)<=20






select * from personas
where cedula='082345679'
--actualiza todas las cedulas para el mes de agosto
update personas set cedula='082345679'
where EXTRACT(MONTH FROM fecha_nacimiento)=8






--el insert into sirve para agregar informacion a la columna 
insert into personas(cedula,nombre,apellido,estatura,estado_civil_codigo)
--el value agrega la informacion a la columna correspondiente
values ('1234567890','andi','solo',1.89,'C')

--los que no tienen not null son occionales
insert into personas(cedula,nombre,apellido,estatura)
values ('1234767890','moi','pik',1.89)

insert into personas(cedula,nombre,apellido,numero_hijos,estatura,fecha_nacimiento,hora_nacimiento,cantidad_ahorrada)
values ('1234767800','koki','sol',3,1.99,'15/03/2006','13:00',100.87)



--nos sirve para mostrar la tabla 

select cedula,nombre, apellido from personas




--si utilizamos el * muestra todas las columnas de la tabla
select * from personas
where cedula='1234567890'




--Para modificar datos de la tabla utilizamos update
--este siempre va acompañado del where para modificar
--solo el dato que corresponde
--y no toda la columna estatura
update personas set estatura=1.50
where cedula='123456789'





--para modificar toda una columna que tenga null hacemos
update personas set cantidad_ahorrada=0
where cantidad_ahorrada is null

update personas set numero_hijos=0
where numero_hijos is null

update personas set estatura=1.55, fecha_nacimiento='12/08/20024'
where cedula='1234567890'

update personas set hora_nacimiento='15:00'
where cedula='1234767800'

update personas set fecha_nacimiento='12/08/20024'
where cedula='1234767800'

update personas set cantidad_ahorrada=220
where cedula='1234767800'


--para eliminar un registro utilizamos delete
select * from personas

delete from personas
where cedula='103450799'

delete from personas
where estatura is null


--operador and (obligatorios tods) y or (suficiente si se cumple 1)
select * from personas
where nombre='moi' or nombre='koki' and cantidad_ahorrada is not null

--debemos ir agrupando el or y el and en ()
select * from personas
where (nombre='moi' or nombre='koki') and (cantidad_ahorrada is not null or estatura >1.50)  