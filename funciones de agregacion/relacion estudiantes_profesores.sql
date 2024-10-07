--Relacion estudiantes profesores
select * from estudiantes
select * from profesores
--funcion de agregacion 1
select codigo_profesor,count(codigo_profesor) as  "total_estudiantes" from
estudiantes es, profesores pro
where es.codigo_profesor=pro.codigo
group by es.codigo_profesor
--funcion agregacion 2
--Agrego la columna edad
alter table estudiantes
add column edad int 
update estudiantes set edad= 18
where cedula like '17%'
update estudiantes set edad= 20
where cedula like '12%'
--funcion agregacion 
--current_date nos da el año actual 
select round (AVG (extract(year from current_date)-
extract(year from fecha_nacimiento))) as edad_promedio from
estudiantes es,profesores pro
