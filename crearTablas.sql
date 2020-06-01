CREATE TABLE Tipus (
    tipus varchar(255) PRIMARY KEY
)  ENGINE = InnoDB;

CREATE TABLE Joguines (
        codi_barres int PRIMARY KEY,
        nom varchar(255),
        edat_min int,
        edat_max int,
        preu int,
        tipus varchar(255) NOT NULL,
        complement_de int,
        CONSTRAINT fk_tipus FOREIGN KEY (tipus) REFERENCES Tipus(tipus),
        CONSTRAINT fk_complement FOREIGN KEY (complement_de) REFERENCES Joguines(codi_barres)
)  ENGINE = InnoDB;

CREATE TABLE Equivalent(
        joguina int, 
        joguina_equivalent int,
        CONSTRAINT fk_joguina_eq1 FOREIGN KEY (joguina) REFERENCES Joguines(codi_barres),
        CONSTRAINT fk_joguina_eq2 FOREIGN KEY (joguina_equivalent) REFERENCES Joguines(codi_barres)
)  ENGINE = InnoDB;

CREATE TABLE Clients (
        codi int UNSIGNED AUTO_INCREMENT not null PRIMARY KEY, --No se si hace falta el not null
        nom varchar(255),
        email varchar(255)
)  ENGINE = InnoDB;

CREATE TABLE Encarrec (
        client int,
        joguina int,
        data date,
        qt int,
        CONSTRAINT pk_encarrec PRIMARY KEY (client, joguina),
        CONSTRAINT fk_client_encarrec FOREIGN KEY (client) REFERENCES Clients(codi),
        CONSTRAINT fk_joguina_encarrec FOREIGN KEY (joguina) REFERENCES Joguines(codi_barres)
) ENGINE = InnoDB;

CREATE TABLE Factura (
        client int,
        data date,
        joguina int,
        qt int,
        preu_un double,
        CONSTRAINT pk_factura PRIMARY KEY (client, data, joguina),
        CONSTRAINT fk_client_factura FOREIGN KEY (client) REFERENCES Clients(codi),
        CONSTRAINT fk_joguina_factura FOREIGN KEY (joguina) REFERENCES Joguines(codi_barres)
) ENGINE = InnoDB;

CREATE TABLE Particulars (
        codi int PRIMARY KEY,
        nom varchar(255),
        email varchar(255)
        CONSTRAINT fk_codi FOREIGN KEY (codi) REFERENCES Clients(codi)
) ENGINE = InnoDB;

CREATE TABLE Empreses (
        codi int PRIMARY KEY,
        nif varchar(255) NOT NULL UNIQUE, --Clave secundaria, no he encontrado una definicion de Alternate Key en MySql/MariaDB....
        CONSTRAINT fk_codi FOREIGN KEY (codi) REFERENCES Clients(codi)
) ENGINE = InnoDB;

CREATE TABLE Fills (
        nom varchar(255),
        codi int,
        data_naix date,
        CONSTRAINT pk_fills PRIMARY KEY (nom, codi),
        CONSTRAINT fk_codi FOREIGN KEY (codi) REFERENCES Particulars(codi)
) ENGINE = InnoDB;

CREATE TABLE Persones_contacte (
        nom varchar(255),
        codi int,
        telef int,
        CONSTRAINT pk_persones_contacte PRIMARY KEY (nom, codi),
        CONSTRAINT fk_codi FOREIGN KEY codi REFERENCES Particulars(codi)
) ENGINE = InnoDB;

CREATE TABLE Parentesc (
        particular int,
        parent int,
        grau int,
        CONSTRAINT pk_parentesc PRIMARY KEY (particular, parent),
        CONSTRAINT fk_particular_parentesc FOREIGN KEY (particular) REFERENCES Particular(codi),
        CONSTRAINT fk_parent_parentesc FOREIGN KEY (particular) REFERENCES Particular(codi)
) ENGINE = InnoDB;