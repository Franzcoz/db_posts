-- PARTE 1

create database posts;
\c posts;

create table post(
id serial,
nombre_usuario varchar(25) not null,
fecha_creacion timestamp default now() not null,
contenido text not null,
descripcion text not null,
primary key (id));

insert into post (nombre_usuario, contenido, descripcion) values ('Pamela', 'Foto1', 'Foto de la playa y un trago colorido');

insert into post (nombre_usuario, contenido, descripcion) values ('Pamela', 'Foto2', 'Foto de la playa y un perrito sonriente corriendo');

insert into post (nombre_usuario, contenido, descripcion) values ('Carlos', 'Foto1', 'Selfie en el baño con ropa elegante');

alter table post add titulo varchar(255);

update post set titulo='En la playita' where id=1;
update post set titulo='En la playita 2' where id=2;
update post set titulo=';p' where id=3;

insert into post (nombre_usuario, contenido, descripcion, titulo) values ('Pedro', 'Texto 1', 'Me encantan las noches de verano', 'Mi pequeño pensamiento');

insert into post (nombre_usuario, contenido, descripcion, titulo) values ('Pedro', 'Foto 1', 'Me encantan las noches de verano', 'Foto de una noche de verano');

delete from post where id=3;

insert into post (nombre_usuario, contenido, descripcion, titulo) values ('Carlos', 'Foto2', 'Selfie en el hotel con ropa de calle', 'Adivina dónde ando');

-- PARTE 2

create table comentarios(
id serial,
post_id int not null,
fecha_creacion date default now() not null,
hora_creacion time default now() not null,
contenido text not null,
primary key (id),
foreign key (post_id) references post (id));

insert into comentarios (post_id, contenido) values ('1', 'qué bonitooo');

insert into comentarios (post_id, contenido) values ('6', 'mentiraaaaa!');

insert into comentarios (post_id, contenido) values ('6', 'suerte perrooo!');

insert into comentarios (post_id, contenido) values ('6', 'adonde andas?');

insert into comentarios (post_id, contenido) values ('6', 'hijo cuidate besitoss tu mami que te quiere');

insert into post (nombre_usuario, contenido, descripcion, titulo) values ('Margarita', 'Foto 1', 'A veces es necesario soltar, y a veces es necesario agarrar ;P', 'Feliz');

insert into comentarios (post_id, contenido) values ('7', 'ejaaaleee');

insert into comentarios (post_id, contenido) values ('7', 'cuenta el secretoo');

insert into comentarios (post_id, contenido) values ('7', 'amiga eri selknam');

insert into comentarios (post_id, contenido) values ('7', 'en que andai que no me contate lokitaaa ;P');

insert into comentarios (post_id, contenido) values ('7', '<3 ;*');
