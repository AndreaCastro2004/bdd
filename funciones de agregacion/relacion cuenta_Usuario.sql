--RELACION CUENTA CON USUARIO
select * from cuentas
select * from usuarios
--funcion agregacion 1
select AVG(cast (cu.saldo as numeric)) as "Saldo_Promedio" from
cuentas cu,usuarios us
where numero_cuenta='01111'
--funcion agregacion 2
select tipo_cuenta,count (tipo_cuenta) as "total_cuentas" from 
cuentas cu,usuarios us
group by tipo_cuenta

