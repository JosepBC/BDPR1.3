-- Practica 3a Part
-- Josep Bello Curto
-- Leandro Favio Gomez Racca

SELECT 
	Clients.nom AS Nom_client,
	Clients.codi AS Codi_client,
	SUM(qt) AS Total_comanda
FROM ((Particulars
INNER JOIN Encarrec ON Particulars.codi = Encarrec.client)
INNER JOIN Clients ON Clients.codi = Particulars.codi)
GROUP BY Clients.codi
HAVING SUM(qt) > (SELECT 
						SUM(qt)
					FROM 
						Encarrec
					WHERE
						client = (SELECT
									codi
								  FROM
								  	Empreses
								   WHERE
								   	nif = "B54543443F"));