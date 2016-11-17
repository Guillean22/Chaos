/*BDD DU CHAOS*/

CREATE TABLE SOFT{
	id_soft int(10) auto-increment NOT NULL;
	nom_soft varchar;
	lien_dl varchar;
	date_ajout date;
	PRIMARY KEY(id_soft);
}

CREATE TABLE OS{
	id_os int(10) auto-increment NOT NULL;
	nom_os varchar;
	PRIMARY KEY(id_os);
}

CREATE TABLE SOFT_OS{
	id_soft int(10);
	id_os int(10);
	PRIMARY KEY(id_soft,id_os);
	FOREIGN KEY (fk_id_soft) REFERENCES SOFT(id_soft);
	FOREIGN KEY (fk_id_os) REFERENCES OS(id_os);
}

INSERT INTO OS(id_os,nom_os) VALUES (1,'Windows');
INSERT INTO OS(id_os,nom_os) VALUES (2,'Ubuntu');
INSERT INTO OS(id_os,nom_os) VALUES (3,'Mac');