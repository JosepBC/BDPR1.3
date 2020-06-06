-- Practica 3a Part
-- Josep Bello Curto
-- Leandro Favio Gomez Racca

SELECT 
	Clients.nom AS Nom_Client
FROM ((Clients
INNER JOIN Factura ON Clients.codi = Factura.client)
INNER JOIN Particulars ON Clients.codi = Particulars.codi)
WHERE Factura.preu_un * Factura.qt < 10000;
