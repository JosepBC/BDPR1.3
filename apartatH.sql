DELETE FROM
	Clients
WHERE codi IN
	(SELECT
		client
	FROM
		Encarrec
	WHERE DATEDIFF(CURRENT_DATE, data) > 1825);