DROP DATABASE IF EXISTS `noleggio_db`;
CREATE DATABASE `noleggio_db`;

USE noleggio_db;

CREATE TABLE `utente` (
  `id` int AUTO_INCREMENT,
  `nome` varchar(45) NOT NULL,
  `cognome` varchar(45) NOT NULL,
  `rilascio_patente` date NOT NULL,
  PRIMARY KEY (`id`)
);

CREATE TABLE `modello` (
  `id` int AUTO_INCREMENT,
  `marca` varchar(45) NOT NULL,
  `modello` varchar(45) NOT NULL,
  `anno` year DEFAULT NULL,
  PRIMARY KEY (`id`)
);

CREATE TABLE `veicolo` (
  `id` int AUTO_INCREMENT,
  `targa` char(7) DEFAULT NULL,
  `id_modello` INT DEFAULT NULL,
  PRIMARY KEY (`id`)
);

CREATE TABLE `prestito` (
  `id_veicolo` int NOT NULL,
  `id_utente` int NOT NULL,
  `noleggio` datetime NOT NULL,
  `importo` float NOT NULL
);
