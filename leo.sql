SELECT
*
FROM ((Clients
INNER JOIN Particulars ON Clients.codi = Particulars.codi)
INNER JOIN Fills ON Fills.codi = Particulars.codi);
