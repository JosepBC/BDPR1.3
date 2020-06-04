SELECT nom
FROM Clients
WHERE codi IN (SELECT client
		FROM Factura
		WHERE (preu_un * qt) < 10000);