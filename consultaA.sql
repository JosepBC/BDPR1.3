SELECT *
FROM Particulars
WHERE codi = 
	(SELECT codi
	FROM Fills
	WHERE
		(SELECT DATEDIFF(CURRENT_DATE, data_naix)) > 6570);