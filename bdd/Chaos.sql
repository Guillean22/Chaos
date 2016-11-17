/*BDD DU CHAOS*/
/*DROP TABLE SOFT;*/
CREATE TABLE SOFT(
	id_soft int(10) AUTO_INCREMENT NOT NULL,
	nom_soft varchar(50),
	lien_dl varchar(100),
	date_ajout date,
	id_softtype int(10),
	PRIMARY KEY(id_soft)
);

/*DROP TABLE OS;*/
CREATE TABLE OS(
	id_os int(10) AUTO_INCREMENT NOT NULL,
	nom_os varchar(50),
	PRIMARY KEY(id_os)
);

/*DROP TABLE SOFTTYPE;*/
CREATE TABLE SOFTTYPE(
	id_softtype int(10) AUTO_INCREMENT NOT NULL,
	nom_softtype varchar(50),
	PRIMARY KEY(id_softtype)
);

/*DROP TABLE SOFT_OS;*/
CREATE TABLE SOFT_OS(
	id_soft int(10),
	id_os int(10),
	PRIMARY KEY(id_soft,id_os)
);

ALTER TABLE SOFT_OS ADD CONSTRAINT fk_id_soft FOREIGN KEY (id_soft) REFERENCES SOFT(id_soft);
ALTER TABLE SOFT_OS ADD CONSTRAINT fk_id_os FOREIGN KEY (id_os) REFERENCES OS(id_os);

ALTER TABLE SOFT ADD CONSTRAINT fk_id_softtype FOREIGN KEY (id_softtype) REFERENCES SOFTTYPE(id_softtype);

INSERT INTO OS(id_os,nom_os) VALUES (1,'Windows');
INSERT INTO OS(id_os,nom_os) VALUES (2,'Ubuntu');
INSERT INTO OS(id_os,nom_os) VALUES (3,'Mac');