#ver las bases de datos

show databases;

#usar el base de dato colegio

use colegio;

#crear una tabla

create table director(
id int,
nombre char(120),
correo varchar (120),
PRIMARY KEY (id)
);#definimos nuestra primary key

#alteramos la tabla para que valla de formar auto incrementado en base a lo que se ingresa

alter table director modify column id int auto_increment;

#insertamos los datos correspondientes

insert into director (nombre,correo) values
	('Patricio Carrazco','nose1234@gmail.com'),
	('luz','luz4567@gmail.com'),
	('marco','mar@gmail.com'),
	('christofer','christofer@gmail.com');
    
#seleccionamos la tabla director para que muestre lo que se inserto

select * from director;

#selecciona la tabla director y el id 3 de forma especifica

select* from director where id =3;

#crear la segunda tabla

create table profesor(
id int,
nombre varchar(120),
edad int ,
trabaja_para int,
PRIMARY KEY (id),
Foreign key (trabaja_para) references director(id)
);#definimos la primary key y foreign key en base al id del director

alter table profesor modify column id int auto_increment;

insert into profesor (nombre,edad,trabaja_para) values 
	('jeff','34','4'),
	('luz','30','1'),
	('marco','23','2'),
	('christofer','35','2');
    
#volvemos a seleccionar el profesor para verificar nuestros datos ingresados    
    
select * from profesor;
show tables;

create table inspector(
id int,
nombre char(120),
correo varchar (120),
le_paga_el int,
PRIMARY KEY (id),
Foreign key (le_paga_el) references director(id)
);

alter table inspector modify column id int auto_increment;
insert into inspector (nombre,correo,le_paga_el) values 
	('jeff','jeffersonvisitor23@gmail.com','2'),
	('luz','luznoseque@gmail.com','3'),
	('alex','alex21@gmail.com','1'),
	('alfredo','alfredo@gmail.com','4');
    
select * from inspector;
