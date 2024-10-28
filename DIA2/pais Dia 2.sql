	CREATE DATABASE pais;
    USE pais;
    
Create Table Paises(
    id_pais int primary key,
    nombre varchar(20) not null,
    continente varchar(50) not null,
    poblacion int not null
); -- tabla pais
create table Ciudades(
id_ciudad int,
nombre varchar(50),
id_pais int,
foreign key (id_pais) references Pais(id_pais)
);
Create table idioma(
id_idioma int primary key not null,
idioma varchar(50)

);
create table idioma_pais(
ididioma int not null,
idpais int not null,
es_oficial tinyint(1),
primary key(ididioma,idpais),
foreign key (ididioma) references idioma(id_idioma),
foreign key (idpais) references paises(id_pais)

);

describe idioma_pais;
insert into idioma(id_idioma,idioma) values (1, 'Español');
insert into idioma(id_idioma,idioma) values (2, 'Portugues');
insert into idioma(id_idioma,idioma) values (3, 'Ingles');
select * from idioma;
-- insert into idioma 

insert into Paises(id_pais,nombre,continente,poblacion)
values (1, 'México', 'América', 126000000),
(2, 'Estados Unidos', 'América', 331000000),
(3, 'Francia', 'Europa', 67000000),
(4, 'Canadá', 'América', 38000000);

select * from paises;

-- insert into paises
insert into Ciudades(id_ciudad,nombre,id_pais)
values (1, 'ciudad de mexico', 1),
(2, 'Nueva York', 2),
(3, 'Paris', 3),
(4, 'Toronto', 4);
select * from Ciudades;

-- insert into ciudades

insert into idioma_pais(ididioma,idpais,es_oficial) values (1,1,1);
insert into idioma_pais(ididioma,idpais,es_oficial) values (2,1,0);
insert into idioma_pais(ididioma,idpais,es_oficial) values (3,1,0);
insert into idioma_pais(ididioma,idpais,es_oficial) values (1,2,0);
insert into idioma_pais(ididioma,idpais,es_oficial) values (2,2,0);
insert into idioma_pais(ididioma,idpais,es_oficial) values (3,2,1);
insert into idioma_pais(ididioma,idpais,es_oficial) values (1,3,0);
insert into idioma_pais(ididioma,idpais,es_oficial) values (2,3,0);
insert into idioma_pais(ididioma,idpais,es_oficial) values (3,3,0);
insert into idioma_pais(ididioma,idpais,es_oficial) values (1,4,0);
insert into idioma_pais(ididioma,idpais,es_oficial) values (2,4,0);
insert into idioma_pais(ididioma,idpais,es_oficial) values (3,4,1);


select * from idioma_pais;

-- consultas
-- listar todos los idiomas
select * from idioma;
select idioma from idioma;
-- listar el idioma con id
select * from idioma where id_idioma=1;
select idioma from  idioma where id_idioma=1;

-- consultar los paises que esten  en america

select nombre from pais where continente = 'America';
select * from pais where continente = 'America';
select nombre as NombrePais  from pais where continente = 'America';

-- SUBCONSULTAS
-- subconsultas que encuentre los idiomas  oficiales
select * from  idioma where  id_idioma in
( select ididioma from idioma_pais where es_oficial = 1);
