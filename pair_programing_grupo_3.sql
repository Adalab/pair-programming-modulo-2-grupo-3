CREATE SCHEMA pair_3;
USE pair_3;
CREATE TABLE empleadas (
	id_empleada INT,
    salario INT,
	nombre VARCHAR (30),
    apellido VARCHAR (50),
    pais VARCHAR (80)
) ;

CREATE TABLE empleadas2 (
	id_empleada INT NOT NULL AUTO_INCREMENT,
    salario INT NOT NULL,
	nombre VARCHAR (30) NOT NULL,
    apellido VARCHAR (50) NOT NULL,
    pais VARCHAR (80) NOT NULL,
	PRIMARY KEY (id_empleada)
) ;
CREATE TABLE empleadas_en_proyectos (
	id_empleada INT NOT NULL AUTO_INCREMENT,
    id_proyecto INT NOT NULL,
    PRIMARY KEY (id_proyecto),
    CONSTRAINT fk_empleadas_en_proyectos_empleadas2
		FOREIGN KEY (id_empleada)
        REFERENCES empleadas2 (id_empleada) ON DELETE CASCADE
        );
CREATE TABLE costumers (
	id_costumers INT NOT NULL AUTO_INCREMENT,
	nombre VARCHAR (30) NOT NULL,
    apellido VARCHAR (50) NOT NULL,
    email VARCHAR (100) NOT NULL,
    pais VARCHAR (80) NOT NULL,
	PRIMARY KEY (id_costumers)
    );
CREATE TABLE employees (
	id_employee INT NOT NULL AUTO_INCREMENT,
    salario INT NOT NULL,
	nombre VARCHAR (30) NOT NULL,
    apellido VARCHAR (50) NOT NULL,
    pais VARCHAR (80) NOT NULL,
	PRIMARY KEY (id_employee)
    );
    
    CREATE TABLE empleados (
	id_employee INT NOT NULL AUTO_INCREMENT,
    salario INT NOT NULL,
	nombre VARCHAR (30) NOT NULL,
    apellido VARCHAR (50) NOT NULL,
    pais VARCHAR (80) NOT NULL,
    ventas FLOAT,
    alta DATE NOT NULL,    
	PRIMARY KEY (id_employee)
    );

CREATE TABLE clientas (
	id_costumers INT NOT NULL AUTO_INCREMENT,
    id_employee INT NOT NULL,
	nombre VARCHAR (30) NOT NULL,
    apellido VARCHAR (50) NOT NULL,
    email VARCHAR (100) NOT NULL,
    pais VARCHAR (80) NOT NULL,
    edad INT NOT NULL,
    saldo FLOAT NOT NULL,
	PRIMARY KEY (id_costumers),
    CONSTRAINT fk_clientes_empleados
		FOREIGN KEY (id_employee)
        REFERENCES empleados (id_employee) ON UPDATE CASCADE,        
    CONSTRAINT saldo_positivo CHECK (saldo > 0),
    CONSTRAINT edad_mayor CHECK (edad > 16)
    );

    
    