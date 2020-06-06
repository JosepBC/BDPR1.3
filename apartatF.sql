CREATE VIEW Historic AS
SELECT 
	Clients.nom AS Nom_Client,
	client AS ClientID,
	joguina AS JoguinaID
FROM 
	Encarrec
INNER JOIN 
	Clients
ON Encarrec.client = Clients.codi;

--SELECT * FROM Historic;

--DROP VIEW Historic;