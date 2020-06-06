-- Practica 3a Part
-- Josep Bello Curto
-- Leandro Favio Gomez Racca

SELECT t.client 
FROM (
	SELECT client, count(*) Q
	FROM Encarrec
	WHERE joguina IN (
		SELECT codi_barres
		FROM joguines
		WHERE edat_min > 10)
	GROUP BY client
	) t
WHERE ( SELECT count(*)
		FROM joguines
		WHERE edat_min > 10
		) = t.Q