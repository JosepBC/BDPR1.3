SELECT 
	Joguines.nom AS Nom_joguina,
	Joguines.codi_barres AS Codi_barres_joguina
FROM ((Particulars
INNER JOIN Encarrec ON Particulars.codi = Encarrec.client)
INNER JOIN Joguines ON Encarrec.joguina = Joguines.codi_barres)
GROUP BY Joguines.codi_barres
HAVING COUNT(Encarrec.joguina) > 10
ORDER BY Joguines.nom;
