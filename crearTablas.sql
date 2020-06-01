CREATE TABLE tipus (tipus varchar(255) PRIMARY KEY);
CREATE TABLE joguines (codi_barres int PRIMARY KEY,
		nom varchar(255),
		edat_min int,
		edat_max int,
		preu int,
		tipus varchar(255) FOREIGN KEY (tipus),
		complement_de FOREIGN KEY)

CREATE TABLE equivalent (
) ENGINE=InnoDB;

CREATE TABLE clients (
		codi int UNSIGNED AUTO_INCREMENT not null PRIMARY KEY, --No se si hace falta el not null
		nom varchar(255),
		email varchar(255)
)  ENGINE=InnoDB;

CREATE TABLE encarrec (
		client int,
		joguina int,
		data date,
		qt int,
		CONSTRAINT pk_encarrec PRIMARY KEY (client, joguina),
		CONSTRAINT fk_client_encarrec FOREIGN KEY (client) REFERENCES clients(codi),
		CONSTRAINT fk_joguina_encarrec FOREIGN KEY (joguina) REFERENCES joguines(codi_barres)
) ENGINE=InnoDB;

CREATE TABLE factura (
		client int,
		data date,
		joguina int,
		qt int,
		preu_un double,
		CONSTRAINT pk_factura PRIMARY KEY (client, data, joguina),
		CONSTRAINT fk_client_factura FOREIGN KEY (client) REFERENCES clients(codi),
		CONSTRAINT fk_joguina_factura FOREIGN KEY (joguina) REFERENCES joguines(codi_barres)
) ENGINE=InnoDB;

CREATE TABLE particulars (
) ENGINE=InnoDB;

CREATE TABLE empreses (
) ENGINE=InnoDB;

CREATE TABLE fills (
) ENGINE=InnoDB;

CREATE TABLE persones_contacte (
) ENGINE=InnoDB;

CREATE TABLE parentesc (
		particular int,
		parent int,
		grau int,
		CONSTRAINT pk_parentesc PRIMARY KEY (particular, parent),
		CONSTRAINT fk_particular_parentesc FOREIGN KEY (particular) REFERENCES particular(codi),
		CONSTRAINT fk_parent_parentesc FOREIGN KEY (particular) REFERENCES particular(codi)
)ENGINE=InnoDB;