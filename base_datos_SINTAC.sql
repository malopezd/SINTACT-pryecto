ALTER SESSION SET NLS_DATE_FORMAT='DD/MM/YY';

create table region (
    id_region number not null,
    nombre varchar (15) not null
);
alter table region add constraint region_pk primary key(id_region); 

create table provincia (
id_provincia number not null ,
nombre varchar (15) not null ,
region_id_region number not null
);
alter table provincia add constraint provincia_pk primary key(id_provincia);

create table comuna (
    id_comuna number not null ,
    nombre varchar (15) not null , 
    provincia_id_provincia number not null
);
alter table comuna add constraint comuna_pk (id_comuna);

create table direcion_postulante(
    direccion varchar (20) not null ,
    comuna_id_comuna number not null
);

create table postulante(
    rut_postulante number not null,
    nombres varchar(20) not null,
    apellidos varchar (20) not null ,
    genero varchar (15) not null ,
    adjunto_cv varchar (2) not null ,
    pretencion_sueldo number not null ,
    correo_electronico char(50) not null ,
    nacionalidad varchar(20) not null ,
    solicitud_ingreso_id_solicitud number not null ,
    solicitud_ingreso_empresa_id_empresa number not null , 
    direccion_postulante_direccion varchar(50) not null
);
create table paasaporte_postulante();