select * from cuentas
drop table cuentas
--crear tabla cuentas
create table cuentas(
	numero_cuenta char(5) ,
	cedula_propietario char(5) not null ,
	fecha_creacion date not null,
	saldo money not null,
)
--para eliminar un objeto que esta referenciado con otra tabla
alter table cuentas
drop constraint cuentas_pk cascade
--para agregar nueva llave
alter table cuentas
add constraint cuentas_pk primary key (numero_cuenta)

select *from cuentas
delete from cuentas
--agrego insert 
insert into cuentas (numero_cuenta,cedula_propietario,fecha_creacion,saldo)
values ('11113','12345','2022-08-21','100');
insert into cuentas (numero_cuenta,cedula_propietario,fecha_creacion,saldo)
values ('00000','08765','2022-09-21','170');
insert into cuentas (numero_cuenta,cedula_propietario,fecha_creacion,saldo)
values ('01111','43210','2022-10-11','230');
insert into cuentas (numero_cuenta,cedula_propietario,fecha_creacion,saldo)
values ('02222','23232','2022-11-30','307');
insert into cuentas (numero_cuenta,cedula_propietario,fecha_creacion,saldo)
values ('03333','24242','2022-12-25','405');
insert into cuentas (numero_cuenta,cedula_propietario,fecha_creacion,saldo)
values ('04444','17171','2023-01-15','503');
insert into cuentas (numero_cuenta,cedula_propietario,fecha_creacion,saldo)
values ('05555','34343','2023-02-03','610');
insert into cuentas (numero_cuenta,cedula_propietario,fecha_creacion,saldo)
values ('06666','56565','2023-05-24','730');
insert into cuentas (numero_cuenta,cedula_propietario,fecha_creacion,saldo)
values ('07777','45454','2023-07-19','850');
insert into cuentas (numero_cuenta,cedula_propietario,fecha_creacion,saldo)
values ('08880','76767','2023-09-21','1000')




