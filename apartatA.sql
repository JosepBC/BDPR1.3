-- Practica 3a Part
-- Josep Bello Curto
-- Leandro Favio Gomez Racca

SELECT
	Particulars.codi AS Pare_Id,
	Clients.nom AS Nom_Pare,
	Clients.email AS Email_pare,
	Particulars.telf AS Pare_Tlf,
	Particulars.dni AS Pare_DNI
FROM ((Clients
INNER JOIN Particulars ON Clients.codi = Particulars.codi)
INNER JOIN Fills ON Fills.codi = Particulars.codi)
WHERE DATEDIFF(CURRENT_DATE, data_naix) > 6570 
ORDER BY Clients.nom;
