# script créé le : Thu Dec 23 15:24:52 CET 2010 ;

# use  VOTRE_BASE_DE_DONNEE ;

DROP TABLE IF EXISTS A ;

CREATE TABLE A (id_a BIGINT NOT NULL,
PRIMARY KEY (id_a) ) ENGINE=InnoDB;

DROP TABLE IF EXISTS B ;

CREATE TABLE B (id_b BIGINT NOT NULL,
id_a BIGINT,
PRIMARY KEY (id_b) ) ENGINE=InnoDB;

ALTER TABLE B ADD CONSTRAINT FK_B_id_a FOREIGN KEY (id_a) REFERENCES A (id_a);
