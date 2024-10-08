select * from usuarios
select * from grupo
delete from grupo
delete from usuarios
delete from usuario_grupo
select * from usuario_grupo
create table usuarios(
	id int,
	nombre varchar(25) not null,
	apellido varchar(25) not null,
	fecha_nacimiento date,
	constraint usuarios_pk primary key (id)
)
create table grupo(
	id int,
	nombre varchar(25) not null,
	descripcion varchar(75) not null,
	fecha_nacimiento date,
	constraint grupo_pk primary key (id)
)
--tabla de union 
create table usuario_grupo(
	us_id int not null,
	gr_id int not null,
	--llave foranea
	constraint usuario_fk foreign key (us_id) references usuarios(id),
	constraint grupo_fk foreign key (gr_id) references grupo(id),
	--llave compuesta
	constraint usuario_grupo_pk primary key (us_id,gr_id)
)
--insert usuarios
insert into usuarios values (1,'Marilyn','Sagñay','05/11/2023'),
							(2,'Romel','Chamba','06/11/2023'),
							(3,'Mario','Guzñay','05/11/2023'),
							(4,'Johann','Domo','07/11/2023'),
							(5,'Monserrate','Vera','05/11/2023'),
							(6,'Lucio','Vargas','05/11/2023'),
							(7,'Martín','Arizaga','05/11/2023'),
							(8,'Fricson','Erazo','05/11/2023'),
							(9,'Jairo','Obando','05/11/2023'),
							(10,'Berni','Tomalá','05/11/2023')
--insert grupo
insert into grupo values (1,'Maternal 1','Grupo de maternal matutino','08/03/2020'),
						 (2,'Maternal 2','Grupo de maternal vepertino','08/03/2020'),
						 (3,'Maternal 3','Grupo de maternal nocturno','08/03/2020'),
						 (4,'Incial 1 ','Grupo de inicial matutino','15/03/2021'),
						 (5,'Incial 2','Grupo de  inicial vespertino','15/03/2021'),
						 (6,'Incial 3','Grupo de  inicial  nocturno','15/03/2021'),
						 (7,'Incial intensivo','Grupo de inicial días sabados','15/03/2021'),
						 (8,'Maternal intensivo 1','Grupo de maternal matutino días sabados','15/03/2022'),
						 (9,'Maternal intensivo 2','Grupo de maternal vespertino días sabados','15/03/2022'),
						 (10,'Maternal intensivo 3','Grupo de maternal nocturno días sabados','15/03/2022');
--insert tabla union
insert into usuario_grupo values (1,8),
								 (2,3),
								 (3,8),
								 (4,9),
								 (5,1),
								 (6,2),
								 (7,8),
								 (8,8),
								 (9,10),
								 (10,1);
--CONSULTA 1
select us.nombre,gr.nombre from usuarios us,grupo gr,usuario_grupo ug
where us.id=ug.us_id
and gr.id=ug.gr_id
--subconsulta
select nombre from usuarios 
where id in (select us_id from usuario_grupo 
where gr_id=1)
--Funcion de agregacion
select gru.nombre,count (ug.us_id) as total_usuarios from grupo gru,usuario_grupo ug
where gru.id=ug.gr_id
group by gru.nombre
--CONSULTA 2
select us.nombre,gru.nombre from usuarios us,grupo gru,usuario_grupo ug
where us.id=ug.us_id
and gru.id=ug.gr_id
and gru.nombre like '%intensivo%'
--subconsulta 
select nombre from usuarios
where id in (select us_id from usuario_grupo where gr_id=2)
--funcion de agregacion
select gru.nombre, max(ug.us_id) as valor_maximo,min(ug.us_id) as valor_minimo from grupo gru,usuario_grupo ug
where gru.id=ug.gr_id
group by gru.nombre
--CONSULTA 3
select us.nombre,gr.fecha_nacimiento from usuarios us,grupo gr,usuario_grupo ug
where us.id=ug.us_id
and gr.id=ug.gr_id
and gr.fecha_nacimiento between '2020-03-08' and '2022-03-08' 
-- subconsulta 
select nombre from usuarios 
where id in (select us_id from usuario_grupo where gr_id=3)
--funcion de agregacion 
select gru.descripcion, count(ug.us_id) from grupo gru,usuario_grupo ug
where gru.id=ug.gr_id
and gru.descripcion like '%matutino%'
group by gru.descripcion














