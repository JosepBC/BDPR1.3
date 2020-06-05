ALTER TABLE 
	Factura
ADD 
	Pagat varchar(255);

UPDATE 
	Factura
SET 
	Pagat = 'No Pagat'
WHERE DATEDIFF(CURRENT_DATE, Factura.data) < 5;

