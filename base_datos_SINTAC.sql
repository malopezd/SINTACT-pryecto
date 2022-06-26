ALTER SESSION SET NLS_DATE_FORMAT='DD/MM/YY';

create table region (
    id_region number not null,
    nombre varchar(15) not null,
    id_provincia number not null,
    id_comuna number not null,
    direccion char not null
);

create table provincia (
    id_provincia number not null,
    nombre varchar(15) not null,
    id_comuna number not null,
    direccion char not null,
    region_id_region number not null
);

create table comuna(
    id_comuna number not null,
    nombre varchar(15) not null,
    direccion char not null,
    provincia_id_provincia number not null,
    provincia_region_id_region number not null
);

create table empresa(
    direccion char not null,
    id_empresa number not null,
    nombre_afiliado varchar(25) not null,
    rut_afiliado char not null,
    comuna_id_comuna number not null,
    comuna_provincia_id_provincia number not null,
    comuna_provincia_region_id__region number not null,
    id_solicitud number not null,
    rut_postulante number not null,
    nommbre_empresa varchar(15) not null,
    direccion_empresa varchar(25)
);


