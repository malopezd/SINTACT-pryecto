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

create table solicitud_ingreso(
    id_solicitud number not null,
    rut_postulante char not null,
    hora_solicitud timestamp not null,
    fecha_solisitud date not null,
    emprea_id_empresa number not null
);

create table postulante(
    rut_postulante char not null,
    id_solicitud number not null,
    nombre_pastulante varchar(15) not null,
    apellidos_postulante varchar(15) not null,
    genero_postulante varchar(10) not null,
    adjunto_cv varchar(2) not null,
    pretencion_sueldo number not null,
    solicitud_ingreso_id_solicitud number not null,
    solicitud_ingreso_rut_postulante char not null,
    solicitud_ingreso_SINTACT_empresa_id_SINTACT number not null,
    correo_electronico char not null,
    nacionalidad_postulante varchar(12) not null,
    numero_pasaporte_postulante number not null
);

create table telefono_postulante(
    rut_postulante char not null,
    id_solicitud number not null,
    id_telefono number not null,
    postulante_id_solicitud number not null,
    postulante_rut_postulante char not null
);

create table tipo_telefono_postulante(
    rut_postulante char not null,
    id_solicitud number not null,
    id_telefono number not null,  
    telefono_postulante number not null,
    telefono_casa_postulante number not null,
    telefono_emergencia_postulante number not null,
    telefono_contacto_postulante number not null,
    telefono_postulante_rut_postulante number not null,
    telefono_postulante_id_solicitu number not null
);

create table discapacidad(
    rut_postulante char not null,
    id_solicitud number not null,
    id_discapacidad number not null
    postulante_id_solicitud number not null,
    postulante_rut-postulante char not null,
);

create table tipo_discapacidad_postulante(
    rut_postulante char not null,
    id_discapacidad number not null,
    cuenta_con_discapacidad varchar(2) not null,
    tipo_discapacidad_postulante varchar(15) not null,
    discapacidad_postulante_rut_postulante char not null
);

create table direccion_postulante(
    rut_postulante char not null,
    id_solicitud number not null,
    direccion_postulante char not null,
    comuna_id_comuna number not null,
    comuna_provincia_id_provincia number not null,
    comuna-provincia_region_id_region number not null,
    postulante_id_solicitud number not null,
    postulante_rut_postulante char not null
);

create table afiliado(





