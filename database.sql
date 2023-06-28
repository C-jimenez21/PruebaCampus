DROP DATABASE campuslands;

CREATE DATABASE campuslands;

USE campuslands;

CREATE table pais(
  idPais INT(11) NOT NULL PRIMARY KEY AUTO_INCREMENT,
  nombrePais VARCHAR(50) NOT NULL UNIQUE
);

CREATE table departamento(
    idDep INT(11) NOT NULL PRIMARY KEY AUTO_INCREMENT,
    nombreDep VARCHAR(50) NOT NULL UNIQUE,
    idPais INT(11) NOT NULL,
    CONSTRAINT fk_idPais FOREIGN KEY (idPais) REFERENCES pais(idPais)
);

CREATE TABLE region(
    idReg INT(11) NOT NULL PRIMARY KEY AUTO_INCREMENT,
    nombreReg VARCHAR(60) NOT NULL UNIQUE,
    idDep INT(11) NOT NULL,
    CONSTRAINT fk_idDep FOREIGN KEY (idDep) REFERENCES departamento(idDep)
);/

CREATE TABLE campers(
    idCamper INT(11) NOT NULL PRIMARY KEY AUTO_INCREMENT,
    nombreCamper varchar(50) NOT NULL,
    apellidoCamper varchar(50) NOT NULL,
    fechaNac DATE NOT NULL,
    idReg INT(11) NOT NULL,
    CONSTRAINT fk_idReg FOREIGN KEY (idReg) REFERENCES region(idReg)
);

INSERT INTO `pais` (`idPais`, `nombrePais`) VALUES
(1, 'colombia'),
(2, 'mexico'),
(3, 'brasil');

INSERT INTO `departamento` (`idDep`, `nombreDep`, `idPais`) VALUES
(1, 'Santander', 1),
(2, 'Cundinamarca', 1),
(3, 'puerto vlltar', 2),
(4, 'sinaloa', 2),
(5, 'Rio de janeiro', 3),
(6, 'Brasilia', 3);

INSERT INTO `region` (`idReg`, `nombreReg`, `idDep`) VALUES 
(1, "Sangil", 1),
(2, "Bogota", 2),
(3, "Ciudad Puerto Vallarta", 3),
(4, "Ciudad de sinaloa", 4),
(5, "Ciudad de rio de janeiro", 5),
(6, "Ciudad de Brasilia", 6);


INSERT INTO `campers` (`idCamper`, `nombreCamper`, `apellidoCamper`, `fechaNac`, `idReg`) VALUES
(1, 'Cristian', 'Jimenez', '2001-07-21', 1),
(2, 'Juan', 'Perez', '2001-07-21', 2);