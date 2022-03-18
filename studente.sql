CREATE DATABASE IF NOT EXISTS scuola;
USE scuola;

DROP TABLE IF EXISTS studente;

CREATE TABLE `studente` (
  `id` int NOT NULL AUTO_INCREMENT,
  `nome` varchar(45) NOT NULL,
  `cognome` varchar(45) NOT NULL,
  `data` date DEFAULT NULL,
  `esame_scritto` TINYINT(1),
  `esame_orale` TINYINT(1),
  `pagato` FLOAT,
  `titolo` enum('diploma','laurea', 'magistrale', 'dottorato') DEFAULT NULL,
  `sesso` enum('M','F') DEFAULT NULL,
  PRIMARY KEY (`id`)
);

insert INTO `studente` 
(`nome`, `cognome`, `data`, `esame_scritto`, `esame_orale`, `pagato`, `titolo`, `sesso`) VALUES
	('Giorgia', 'Rossi', '2002-10-21', 7, 7, 600,'diploma', 'F'),
	('Alessio', 'Verdi', '1993-03-03', 6, 8,1200, 'magistrale', 'M'),
	('Silvia', 'Arancioni', '1997-02-12', 5, 7,400, 'laurea', 'F'),
	('Jessica', 'Celesti', '1996-10-25', 8, 9, 1200,'laurea', 'F'),
	('Saverio', 'Gialli', '1978-09-01', 9, 8,650, 'dottorato', 'M'),
	('Irene', 'Rossi', '1995-12-28', 5, 6, 800,'magistrale', 'F'),
	('Monica', 'Bianchi', '1992-05-15', 6, 6,1200, 'diploma', 'F'),
	('Giorgio', 'Neri', '1999-10-01', 7, 5, 1000,'diploma', 'M'),
	('Roberta', 'Verdi', '1989-12-11', 8, 7,450, 'laurea', 'F'),
	('Simona', 'Gialli', '2000-05-31', 6, 5,750, 'diploma', 'F')