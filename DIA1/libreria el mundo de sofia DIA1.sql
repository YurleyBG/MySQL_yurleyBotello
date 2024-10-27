create database libreria;
use libreria;

CREATE TABLE CLIENTE (
	Idcliente INT PRIMARY KEY,
	Nombre varchar(45) NOT NULL,
	Apellido varchar(45) NOT NULL,
	Email varchar(45) NOT NULL,
	Telefono varchar(45) NOT NULL,
	Dirección varchar(45) NOT NULL
);

CREATE TABLE PEDIDOSS (
	Idpedidos INT PRIMARY KEY,
	Fechadecompra DATE NOT NULL,
	Estadodecompra varchar(45) NOT NULL,
    Idcliente int,
	foreign key (idcliente) references CLIENTE(idcliente),
    idtransacciones int,
	foreign key (idtransacciones) references TRANSACCIONES(idtransacciones)

);
CREATE TABLE LIBR(
	Idlibros INT PRIMARY KEY,
	Título varchar(45) NOT NULL,
	Categoría varchar(45) NOT NULL,
	ISBN INT NOT NULL,
	Precio INT NOT NULL,
	idpedidos int,
    foreign key (idpedidos) references PEDIDOSS(idpedidos),
    idinventario int,
	foreign key (idinventario) references INVENTARIOO(idinventario)
	
);
CREATE TABLE TRANSACCIONES (
	Idtransacciones INT PRIMARY KEY,
	Métododepago varchar(45) NOT NULL,
	MontoTotal INT NOT NULL,
	Fechadetransacción DATE NOT NULL
	
);
CREATE TABLE INVENTARIOO(
	Idinventario INT PRIMARY KEY,
	stock INT NOT NULL,
	valorUnidad INT NOT NULL,
	idventas int,
	foreign key (idventas) references INFORMESDEVENTAS(idventas)
);
CREATE TABLE AUTOR (
	Idautores INT PRIMARY KEY,
	Nombre varchar (45) NOT NULL,
	Apellido varchar(45) NOT NULL,
	Fechadenacimiento DATE NOT NULL,
	Nacionalidad varchar (45) NOT NULL
);

CREATE TABLE INFORMESDEVENTA (
	Idventas INT PRIMARY KEY,
	Estadísticasdeuso INT NOT NULL,
	Fechadeventa DATE NOT NULL,
	Totaldeventas INT NOT NULL,
	Libromásvendido varchar(45) NOT NULL
);
describe PEDIDOSS;
describe CLIENTE;
describe LIBR;
describe AUTOR;
describe INVENTARIOO;
describe INFORMESDEVENTAS;