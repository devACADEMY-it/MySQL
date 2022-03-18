USE noleggio_db;

TRUNCATE TABLE utente;
TRUNCATE TABLE modello;
TRUNCATE TABLE veicolo;
TRUNCATE TABLE prestito;

INSERT INTO utente
    (nome,cognome,rilascio_patente)
    VALUES
    ('Gigi','Rossi','1988-12-03'),
    ('Elena','Verdi','2012-04-05'),
    ('Simona','Bianchi','2018-06-30'),
    ('Ivan','Neri','1999-04-22');
	
INSERT INTO modello
    (marca,modello,anno)
    VALUES
    ('XYZ','Fire',2016),
    ('AlfaOmega','Airone',NULL),
    ('XYZ','Ocean',2004),
    ('AlfaOmega','Zero',2000);
	
INSERT INTO veicolo
(targa,id_modello)
VALUES
('AB111RT',1),
('DC348ZQ',3),
('AD984FG',3),
('BD339HT',2),
('CE921RV',1),
('AD778YT',4),
('CD552SL',3);

INSERT INTO prestito
(id_veicolo,id_utente,noleggio,importo)
VALUES
(2,1,'2021-02-18 10:56:03',105),
(1,2,'2021-04-05 17:24:23',78.5),
(4,3,'2021-04-12 09:31:09',95.25),
(2,3,'2021-05-28 21:15:12',100),
(1,3,'2021-06-07 13:48:31', 80);