--relacion videojuegos y plataformas 
select * from videojuegos
select * from plataformas
--agregacion 1
select vi.codigo,count(pla.id_plataforma) as total_plataformas from 
videojuegos vi,plataformas pla
where pla.codigo_videojuego=vi.codigo 
group by vi.codigo 
--agregacion 2
select round(AVG(valoracion),2)as valoracion_promedio from 
videojuegos 
