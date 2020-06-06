SELECT 
	Joguines.nom AS Nom_Joguina,
	Joguines.codi_barres AS Codi_De_Barres
FROM ((Particulars
INNER JOIN Encarrec ON codi = client)
INNER JOIN Joguines ON joguina = codi_barres)
GROUP BY joguina
HAVING SUM(joguina) > 10
ORDER BY nom;
