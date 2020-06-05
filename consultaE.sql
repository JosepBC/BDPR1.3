SELECT 
	Clients.codi, Clients.nom, Factura.qt
FROM 
	Factura
INNER JOIN 
	Particulars
ON 
	Factura.client = Particulars.codi
INNER JOIN 
	Clients
ON 
	Factura.client = Clients.codi
WHERE
	Factura.qt > (SELECT 
					SUM(qt)
				FROM 
					Factura
				WHERE
					client = (SELECT
								codi
							  FROM
							  	Empreses
							   WHERE
							   	nif = "B54543443F"));
