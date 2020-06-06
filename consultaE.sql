SELECT 
	Clients.codi, Clients.nom, Encarrec.qt
FROM 
	Encarrec
INNER JOIN 
	Particulars
ON 
	Encarrec.client = Particulars.codi
INNER JOIN 
	Clients
ON 
	Encarrec.client = Clients.codi
WHERE
	Encarrec.qt > (SELECT 
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
