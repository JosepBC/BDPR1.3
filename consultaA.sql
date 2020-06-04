SELECT
	*
FROM 
	Clients
WHERE codi IN 
	(SELECT
	 	codi 
	 FROM 
	 	Particulars
	 WHERE codi IN
	 	(SELECT
	 		codi
	 	FROM
	 		Fills
	 	WHERE
	 		(SELECT DATEDIFF(CURRENT_DATE, data_naix) > 6570)))
ORDER BY
	nom;