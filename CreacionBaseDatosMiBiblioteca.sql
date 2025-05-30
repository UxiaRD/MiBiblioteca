-- CREACIÓN BASE DE DATOS MiBiblioteca
create database MiBiblioteca;

create table localizaciones (
id int auto_increment primary key,
localizacion varchar(100) unique
);

create table editoriales (
abreviatura char(3) primary key,
editorial varchar(100) unique
);

create table autoras (
id int auto_increment primary key,
nombre varchar(100) unique,
genero enum('M', 'F', 'O')
);

create table sagas (
id int auto_increment primary key,
nombre varchar(100),
num_libros int,
estado enum('Finalizada', 'En proceso')
);

create table libros (
id int auto_increment primary key,
titulo varchar(200),
autora_id int,
saga_id int,
num_libro_saga int,
estado enum('Leido', 'Pendiente', 'En Proceso'),
foreign key (autora_id) references autoras(id),
foreign key (saga_id) references sagas(id)
);

create table ejemplares (
id int auto_increment primary key,
id_libro int,
ed_abrev char(3),
num_paginas int,
edicion int,
año_1aEd year,
ISBN varchar(50),
localizacion_id int,
foreign key (id_libro) references libros(id),
foreign key (ed_abrev) references editoriales(abreviatura),
foreign key (localizacion_id) references localizaciones(id)
);
