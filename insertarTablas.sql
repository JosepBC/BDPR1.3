-- Practica 3a Part
-- Josep Bello Curto
-- Leandro Favio Gomez Racca

INSERT INTO Tipus(tipus) VALUES ("Pilota");
INSERT INTO Tipus(tipus) VALUES ("Moto");
INSERT INTO Tipus(tipus) VALUES ("Nina");
INSERT INTO Tipus(tipus) VALUES ("Jet");
INSERT INTO Tipus(tipus) VALUES ("Lego");

INSERT INTO Joguines(codi_barres, 
	nom, 
	edat_min, 
	edat_max,
	preu,
	tipus,
	complement_de) 
	VALUES (1,
		"Pilota FCB", 
		1,
		30,
		50,
		"Pilota",
		NULL);
INSERT INTO Joguines(codi_barres, 
	nom, 
	edat_min, 
	edat_max,
	preu,
	tipus,
	complement_de) 
	VALUES (2,
		"Pilota Madrid", 
		1,
		30,
		50,
		"Pilota",
		NULL);
INSERT INTO Joguines(codi_barres, 
	nom, 
	edat_min, 
	edat_max,
	preu,
	tipus,
	complement_de) 
	VALUES (3,
		"Mini Moto", 
		5,
		12,
		90,
		"Moto",
		NULL);
INSERT INTO Joguines(codi_barres, 
	nom, 
	edat_min, 
	edat_max,
	preu,
	tipus,
	complement_de) 
	VALUES (4,
		"Barbie", 
		5,
		12,
		12,
		"Nina",
		NULL);
INSERT INTO Joguines(codi_barres, 
	nom, 
	edat_min, 
	edat_max,
	preu,
	tipus,
	complement_de) 
	VALUES (5,
		"Vestit", 
		5,
		12,
		5,
		"Nina",
		2);
INSERT INTO Joguines(codi_barres, 
	nom, 
	edat_min, 
	edat_max,
	preu,
	tipus,
	complement_de) 
	VALUES (6,
		"Avion", 
		5,
		12,
		5,
		"Jet",
		2);
INSERT INTO Joguines(codi_barres, 
	nom, 
	edat_min, 
	edat_max,
	preu,
	tipus,
	complement_de) 
	VALUES (7,
		"Lamborghini Sian FKP 37", 
		18,
		99,
		379,
		"Lego",
		NULL);
INSERT INTO Joguines(codi_barres, 
	nom, 
	edat_min, 
	edat_max,
	preu,
	tipus,
	complement_de) 
	VALUES (7,
		"Vehiculo Acrobatico a Control Remoto", 
		18,
		99,
		89,
		"Lego",
		NULL);

INSERT INTO Equivalent(joguina, 
	joguina_equivalent) 
	VALUES (2, 
		1);
INSERT INTO Equivalent(joguina, 
	joguina_equivalent) 
	VALUES (3, 
		4);

CALL InsertClient("Josep Bello", "josep.bello@estudiants.urv.cat", 123456789, "47860857Q", NULL);
CALL InsertClient("Aeandro Favio", "leandro.favio@estudiants.urv.cat", 123456788, "47860857P", NULL);
CALL InsertClient("Oriol qt", "oriol.qt@estudiants.urv.cat", 153456788, NULL, "47860857F");
CALL InsertClient("Marc das", "marc.dsa@estudiants.urv.cat", 173456788, "47860857A", "47860857A");
CALL InsertClient("Empresa 0", "empresa0", 173456777, NULL, "B54543443F");
CALL InsertClient("Particular 0", "Particular.0", 173456777, "47860857A", NULL);
CALL InsertClient("Particular 1", "Particular.1", 173456777, "47860857B", NULL);
CALL InsertClient("Particular 2", "Particular.2", 173456777, "47860857C", NULL);
CALL InsertClient("Particular 3", "Particular.3", 173456777, "47860857D", NULL);
CALL InsertClient("Particular 4", "Particular.4", 173456777, "47860857E", NULL);
CALL InsertClient("Particular 5", "Particular.5", 173456777, "47860857F", NULL);
CALL InsertClient("Particular 6", "Particular.6", 173456777, "47860857G", NULL);
CALL InsertClient("Particular 7", "Particular.7", 173456777, "47860857H", NULL);
CALL InsertClient("Particular 8", "Particular.8", 173456777, "47860857I", NULL);
CALL InsertClient("Particular 9", "Particular.9", 173456777, "47860857J", NULL);
CALL InsertClient("Particular 10", "Particular.10", 173456777, "47860857K", NULL);

INSERT INTO Encarrec(client,
	joguina,
	data,
	qt)
	VALUES (1,
		1,
		"2020-11-18",
		20);
INSERT INTO Encarrec(client,
	joguina,
	data,
	qt)
	VALUES (2,
		2,
		"2020-05-10",
		12);
INSERT INTO Encarrec(client,
	joguina,
	data,
	qt)
	VALUES (2,
		3,
		"2020-05-10",
		12);
INSERT INTO Encarrec(client,
	joguina,
	data,
	qt)
	VALUES (2,
		5,
		"2020-05-10",
		12);
INSERT INTO Encarrec(client,
	joguina,
	data,
	qt)
	VALUES (3,
		2,
		"2010-05-10",
		12);
INSERT INTO Encarrec(client,
	joguina,
	data,
	qt)
	VALUES (1,
		6,
		"2018-03-28",
		15);
INSERT INTO Encarrec(client,
	joguina,
	data,
	qt)
	VALUES (1,
		7,
		"2018-03-28",
		32);
INSERT INTO Encarrec(client,
	joguina,
	data,
	qt)
	VALUES (2,
		6,
		"2017-10-21",
		78);

INSERT INTO Encarrec(client,
	joguina,
	data,
	qt)
	VALUES (6,
		4,
		"2020-05-10",
		15);
INSERT INTO Encarrec(client,
	joguina,
	data,
	qt)
	VALUES (7,
		4,
		"2020-05-10",
		15);
INSERT INTO Encarrec(client,
	joguina,
	data,
	qt)
	VALUES (8,
		4,
		"2020-05-10",
		15);
INSERT INTO Encarrec(client,
	joguina,
	data,
	qt)
	VALUES (9,
		4,
		"2020-05-10",
		15);
INSERT INTO Encarrec(client,
	joguina,
	data,
	qt)
	VALUES (10,
		4,
		"2020-05-10",
		15);
INSERT INTO Encarrec(client,
	joguina,
	data,
	qt)
	VALUES (11,
		4,
		"2020-05-10",
		15);
INSERT INTO Encarrec(client,
	joguina,
	data,
	qt)
	VALUES (12,
		4,
		"2020-05-10",
		15);
INSERT INTO Encarrec(client,
	joguina,
	data,
	qt)
	VALUES (13,
		4,
		"2020-05-10",
		15);
INSERT INTO Encarrec(client,
	joguina,
	data,
	qt)
	VALUES (14,
		4,
		"2020-05-10",
		15);
INSERT INTO Encarrec(client,
	joguina,
	data,
	qt)
	VALUES (15,
		4,
		"2020-05-10",
		15);
INSERT INTO Encarrec(client,
	joguina,
	data,
	qt)
	VALUES (1,
		4,
		"2020-05-10",
		15);

INSERT INTO Encarrec(client,
	joguina,
	data,
	qt)
	VALUES (6,
		6,
		"2020-05-10",
		15);
INSERT INTO Encarrec(client,
	joguina,
	data,
	qt)
	VALUES (7,
		6,
		"2020-05-10",
		15);
INSERT INTO Encarrec(client,
	joguina,
	data,
	qt)
	VALUES (8,
		6,
		"2020-05-10",
		15);
INSERT INTO Encarrec(client,
	joguina,
	data,
	qt)
	VALUES (9,
		6,
		"2020-05-10",
		15);
INSERT INTO Encarrec(client,
	joguina,
	data,
	qt)
	VALUES (10,
		6,
		"2020-05-10",
		15);
INSERT INTO Encarrec(client,
	joguina,
	data,
	qt)
	VALUES (11,
		6,
		"2020-05-10",
		15);
INSERT INTO Encarrec(client,
	joguina,
	data,
	qt)
	VALUES (12,
		6,
		"2020-05-10",
		15);
INSERT INTO Encarrec(client,
	joguina,
	data,
	qt)
	VALUES (13,
		6,
		"2020-05-10",
		15);
INSERT INTO Encarrec(client,
	joguina,
	data,
	qt)
	VALUES (14,
		6,
		"2020-05-10",
		15);
INSERT INTO Encarrec(client,
	joguina,
	data,
	qt)
	VALUES (15,
		6,
		"2020-05-10",
		15);
INSERT INTO Encarrec(client,
	joguina,
	data,
	qt)
	VALUES (1,
		6,
		"2020-05-10",
		15);

INSERT INTO Factura(client,
	data,
	joguina,
	qt,
	preu_un)
	VALUES (1,
		"2019-11-18",
		1,
		11,
		50);
INSERT INTO Factura(client,
	data,
	joguina,
	qt,
	preu_un)
	VALUES (2,
		"2019-05-10",
		2,
		10,
		12);
INSERT INTO Factura(client,
	data,
	joguina,
	qt,
	preu_un)
	VALUES (3,
		"2019-05-10",
		2,
		6,
		10000);
INSERT INTO Factura(client,
	data,
	joguina,
	qt,
	preu_un)
	VALUES (4,
		"2019-05-10",
		2,
		2,
		10000);
INSERT INTO Factura(client,
	data,
	joguina,
	qt,
	preu_un)
	VALUES (4,
		"2019-07-10",
		2,
		4,
		10000);
INSERT INTO Factura(client,
	data,
	joguina,
	qt,
	preu_un)
	VALUES (5,
		"2019-05-10",
		2,
		5,
		10000);
INSERT INTO Factura(client,
	data,
	joguina,
	qt,
	preu_un)
	VALUES (5,
		"2020-06-05",
		2,
		5,
		10000);
INSERT INTO Factura(client,
	data,
	joguina,
	qt,
	preu_un)
	VALUES (5,
		"2020-06-05",
		1,
		5,
		10000);
INSERT INTO Factura(client,
	data,
	joguina,
	qt,
	preu_un)
	VALUES (2,
		"2020-06-05",
		1,
		5,
		10000);

INSERT INTO Fills(nom,
	codi,
	data_naix)
	VALUES ("Pepito",
		1,
		"2000-10-14");
INSERT INTO Fills(nom,
	codi,
	data_naix)
	VALUES ("Pepa",
		4,
		"2020-05-14");
INSERT INTO Fills(nom,
	codi,
	data_naix)
	VALUES ("Pepe",
		2,
		"1990-05-14");

INSERT INTO Persones_contacte(nom,
	codi,
	telef)
	VALUES ("Miriam",
		3,
		123456788);

INSERT INTO Parentesc(particular,
	parent,
	grau)
	VALUES (2,
		1,
		"P");