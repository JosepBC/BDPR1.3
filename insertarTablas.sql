-- Practica 3a Part
-- Josep Bello Curto
-- Leandro Favio Gomez Racca

INSERT INTO Tipus(tipus) VALUES ("Pilota");
INSERT INTO Tipus(tipus) VALUES ("Moto");
INSERT INTO Tipus(tipus) VALUES ("Nina");

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

INSERT INTO Equivalent(joguina, 
	joguina_equivalent) 
	VALUES (2, 
		1);
INSERT INTO Equivalent(joguina, 
	joguina_equivalent) 
	VALUES (1, 
		2);

INSERT INTO Clients(nom,
	email)
	VALUES ("Josep Bello",
		"josep.bello@estudiants.urv.cat");
INSERT INTO Clients(nom,
	email)
	VALUES ("Leandro Favio",
		"leandro.favio@estudiants.urv.cat");

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

INSERT INTO Factura(client,
	data,
	joguina,
	qt,
	preu_un)
	VALUES (1,
		"2020-11-18",
		1,
		2,
		50);
INSERT INTO Factura(client,
	data,
	joguina,
	qt,
	preu_un)
	VALUES (2,
		"2020-05-10",
		2,
		5,
		12);

INSERT INTO Particulars(codi,
	telf,
	dni)
	VALUES (1,
		123456789,
		"77920048-M");
INSERT INTO Particulars(codi,
	telf,
	dni)
	VALUES (2,
		023456789,
		"77925448-Q");

INSERT INTO Empreses(codi,
	nif) 
	VALUES (2,
		"77925448-Q");

INSERT INTO Fills(nom,
	codi,
	data_naix)
	VALUES ("Pepito",
		1,
		"2000-10-14");

INSERT INTO Persones_contacte(nom,
	codi,
	telef)
	VALUES ("Miriam",
		2,
		123456788);

INSERT INTO Parentesc(particular,
	parent,
	grau)
	VALUES (2,
		1,
		"P");