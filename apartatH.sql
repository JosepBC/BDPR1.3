-- Practica 3a Part
-- Josep Bello Curto
-- Leandro Favio Gomez Racca

DELETE FROM
	Clients
WHERE codi IN
	(SELECT
		client
	FROM
		Encarrec
	WHERE DATEDIFF(CURRENT_DATE, data) > 1825);