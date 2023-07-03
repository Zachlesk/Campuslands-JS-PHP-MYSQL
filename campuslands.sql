CREATE DATABASE campuslands;

USE campuslands;

CREATE TABLE pais (
    idPais INT PRIMARY KEY auto_increment,
    nombrePais VARCHAR(225) NOT NULL
);

CREATE TABLE departamento (
    idDep INT PRIMARY KEY auto_increment,
    nombreDep VARCHAR(255) NOT NULL,
    idPais INT NOT NULL,
    FOREIGN KEY(idPais) REFERENCES pais(idPais)
);

CREATE TABLE region (
    idReg INT PRIMARY KEY auto_increment,
    nombreReg VARCHAR(255) NOT NULL,
    idDep INT NOT NULL,
    FOREIGN KEY (idDep) REFERENCES departamento(idDep)
);


CREATE TABLE campers (
    idCamper INT PRIMARY KEY auto_increment,
    nombreCamper VARCHAR(255) NOT NULL,
    apellidoCamper VARCHAR(255) NOT NULL,
    fechaNac VARCHAR(255) NOT NULL,
    idReg INT NOT NULL,
    FOREIGN KEY (idReg) REFERENCES region(idReg)
);

INSERT INTO 'pais' ('idPais', 'nombrePais') VALUES
(1, 'Argentina'),
(2, 'Mexico');

INSERT INTO 'departamento' ('idDep', 'nombreDep','idPais') VALUES
(1, 'Santander', 1),
(2, 'Norte de Santander', 2);

INSERT INTO 'region' ('idReg', 'nombreReg','idDep') VALUES
(1, 'Andina', 1),
(2, 'Andina', 2);

INSERT INTO 'campers' ('idCamper', 'nombreCamper','apellidoCamper', 'fechaNac', 'idReg') VALUES
(1, 'Zharick', 'Rojas', '23/02/05',1),
(2, 'Daniel', 'Gualdron', '16/08/04',1);

