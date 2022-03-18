DROP DATABASE IF EXISTS scuola_ext;
CREATE DATABASE IF NOT EXISTS scuola_ext;
USE scuola_ext;

CREATE TABLE `studente` (
  `id` int NOT NULL AUTO_INCREMENT,
  `nome` varchar(45) NOT NULL,
  `cognome` varchar(45) NOT NULL,
  `data` date DEFAULT NULL,
  `id_titolo` tinyint NOT NULL,
  PRIMARY KEY (`id`)
);

CREATE TABLE `titolo` (
  `id` tinyint,
  `nome` varchar(25) NOT NULL,
  PRIMARY KEY (`id`)
);

insert INTO `titolo` 
(`id`,`nome`) VALUES
	(1,'diploma'),
	(2,'laurea'),
	(3,'magistrale'),
	(4,'dottorato');

insert INTO `studente` 
(`nome`, `cognome`, `data`, `id_titolo`) VALUES
	('Giorgia', 'Rossi', '2002-10-21',1),
	('Alessio', 'Verdi', '1993-03-03',3),
	('Silvia', 'Arancioni', '1997-02-12',2),
	('Jessica', 'Celesti', '1996-10-25',2),
	('Saverio', 'Gialli', '1978-09-01',4),
	('Irene', 'Rossi', '1995-12-28',3),
	('Monica', 'Bianchi', '1992-05-15',1),
	('Giorgio', 'Neri', '1999-10-01',1),
	('Roberta', 'Verdi', '1989-12-11',2),
	('Simona', 'Gialli', '2000-05-31',1);

CREATE TABLE `materia` (
  `id` tinyint,
  `nome` varchar(25) NOT NULL,
  PRIMARY KEY (`id`)
);

insert INTO `materia` 
(`id`,`nome`) VALUES
	(1,'Elettronica'),
	(2,'Informatica'),
	(3,'Matematica'),
	(4,'Economia');

CREATE TABLE `studente_materia_rel`(
   `id_studente` int not null,
   `id_materia` tinyint not null,
   `esame_scritto` tinyint not null,
   `esame_orale` tinyint,
   PRIMARY KEY (id_studente, id_materia)
);

insert INTO `studente_materia_rel` 
(`id_studente`,`id_materia`, `esame_scritto`, `esame_orale`) VALUES
	(1,1,8,6),
	(1,3,7,NULL),
	(2,2,5,7),
	(2,1,6,6),
	(2,4,8,9),
	(3,1,9,NULL),
	(4,1,4,6),
	(4,2,5,5),
	(5,1,8,8),
	(5,2,7,7),
	(5,3,9,7),
	(5,4,8,6),
	(6,3,5,NULL),
	(7,2,7,NULL),
	(7,3,6,NULL),
	(8,2,7,NULL),
	(9,3,8,8),
	(9,4,7,6),
	(10,4,9,NULL);









