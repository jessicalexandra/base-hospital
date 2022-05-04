use hospital

--------introducir informacion--------

create proc agregar_cita
@cod_cita nvarchar(10),
@fecha date,
@hora time(7),
@id_paciente nvarchar(10),
@id_medico nvarchar(10),
@valor int,
@diagnostico nvarchar(MAX),
@Nom_acompañante nvarchar(50),
@activo bit
as
insert into cita(cod_cita,fecha,hora,id_paciente,id_medico,valor,diagnostico,Nom_acompañante,activo)values(@cod_cita,@fecha,@hora,@id_paciente,@id_medico,@valor,@diagnostico,@Nom_acompañante,@activo)

create proc agregar_medico
@id_medico nvarchar(10),
@nombre_medico nvarchar(50),
@especialidad nvarchar(30),
@tel_medico nvarchar(10),
@activo bit

as
insert into medico(id_medico,nombre_medico,especialidad,tel_medico,activo)values(@id_medico,@nombre_medico,@especialidad,@tel_medico,@activo)

create proc agregar_paciente
@id_paciente nvarchar(10),
@tip_documento nvarchar(20),
@nombre_paciente nvarchar(50),
@dir_paciente nvarchar(50),
@tel_paciente nvarchar(10),
@cel_paciente nvarchar(10),
@activo bit

as
insert into paciente (id_paciente,tip_documento,nombre_paciente,dir_paciente,tel_paciente,cel_paciente,activo)values(@id_paciente,@tip_documento,@nombre_paciente,@dir_paciente,@tel_paciente,@cel_paciente,@activo)


--------modificar informacion--------

create proc modificar_cita
@cod_cita nvarchar(10),
@fecha date,
@hora time(7),
@id_paciente nvarchar(10),
@id_medico nvarchar(10),
@valor int,
@diagnostico nvarchar(MAX),
@Nom_acompañante nvarchar(50),
@activo bit

AS
update cita set fecha=@fecha,id_paciente=@id_paciente,id_medico=@id_medico,valor=@valor,diagnostico=@diagnostico,Nom_acompañante=@Nom_acompañante,activo=@activo where cod_cita=@cod_cita

select *from cita

create proc modificar_medico
@id_medico nvarchar(10),
@nombre_medico nvarchar(50),
@especialidad nvarchar(30),
@tel_medico nvarchar(10),
@activo bit
AS
update medico set nombre_medico=@nombre_medico,especialidad=@especialidad,tel_medico=@tel_medico,activo=@activo where id_medico=@id_medico


select * from medico

create proc modificar_paciente
@id_paciente nvarchar(10),
@tip_documento nvarchar(20),
@nombre_paciente nvarchar(50),
@dir_paciente nvarchar(50),
@tel_paciente nvarchar(10),
@cel_paciente nvarchar(10),
@activo bit
 as 
 update paciente set tip_documento=@tip_documento,nombre_paciente=@nombre_paciente,dir_paciente=@dir_paciente,tel_paciente=@tel_paciente,cel_paciente=@cel_paciente,activo=@activo  where id_paciente=@id_paciente

 
--------consultar informacion--------

 create proc consultar_cita
@cod_cita nvarchar(10)
as 
select* from cita where cod_cita=@cod_cita


create proc consultar_medico
@id_medico nvarchar(10)
as 
select* from medico where id_medico=@id_medico

create proc consultar_paciente
@id_paciente nvarchar(10)
as 
select* from paciente where id_paciente=@id_paciente


create proc eliminar_cita
@cod_cita nvarchar(10)
as
delete from cita where cod_cita=@cod_cita

select* from cita 
