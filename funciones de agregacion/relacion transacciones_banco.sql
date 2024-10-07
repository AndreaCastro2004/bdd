--relacion transacciones banco
select * from transacciones
select * from banco
--funcion agregacion 1
select count(tipo) as total_transacciones_credito from 
transacciones 
where tipo='C'
--funcion agregacion 2
select numero_cuenta,round(AVG (cast(monto as decimal)),2) 
as total_transacciones_credito from 
transacciones tran,banco ban
group by numero_cuenta