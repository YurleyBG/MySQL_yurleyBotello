CREATE TABLE CLIENTE (
	Idcliente INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
	Nombre Varchar(45) NOT NULL,
	Apellido Varchar(45) NOT NULL,
	Email Varchar(45) NOT NULL,
	Telefono Varchar(45) NOT NULL,
	Dirección Varchar(45) NOT NULL
);
CREATE TABLE PEDIDOS (
	Idpedidos INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
	Fechadecompra DATE NOT NULL,
	Estadodecompra Varchar(45) NOT NULL,
    idcliente int,
    foreign key (idcliente) references CLIENTE(idcliente)
);
CREATE TABLE LIBROS (
	Idlibros INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
	Título Varchar(45) NOT NULL,
	Categoría Varchar(45) NOT NULL,
	ISBN INT NOT NULL,
	Precio INT NOT NULL
	
);
CREATE TABLE INVENTARIO (
	Idinventario INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
	stock INT NOT NULL,
	valorUnidad INT NOT NULL
);
CREATE TABLE AUTORES (

	Idautores INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
	Nombre Varchar (45) NOT NULL,
	Apellido Varchar (45) NOT NULL,
	Fechadenacimiento DATE NOT NULL,
	Nacionalidad Varchar (45) NOT NULL
);
CREATE TABLE TRANSACCIONES (
	Idtransacciones INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
	Métododepago Varchar(45) NOT NULL,
	MontoTotal INT NOT NULL,
	Fechadetransacción DATE NOT NULL
	
);
CREATE TABLE INFORMESDEVENTAS (
	Idventas INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
	Estadísticasdeuso INT NOT NULL,
	Fechadeventa DATE NOT NULL,
	Totaldeventas INT NOT NULL,
	Libromásvendido Varchar(45) NOT NULL
);
describe PEDIDOS;
