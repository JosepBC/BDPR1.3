CREATE TABLE tipus (tipus varchar(255) PRIMARY KEY);
CREATE TABLE joguines (codi_barres int PRIMARY KEY,
		nom varchar(255),
		edat_min int,
		edat_max int,
		preu int,
		tipus varchar(255) FOREIGN KEY (tipus),
		complement_de FOREIGN KEY)