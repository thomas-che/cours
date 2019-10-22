
-- cree basse de donne avec pararametre
CREAT DATABASE nom_bd;
DEFAULT CHARACTER SET utf8;
DEFAULT COLLATE utf8_general_ci;

-- suprime la basse
DROP DATABASE nom_bd;

-- cree table dans une basse
USE nom_bd;
CREAT TABLE nom_table
(, dateLimiteValidite DATE(8)
, codeControle NUMBER(3)
, eMailClient VARCHAR2(64)
, CONSTRAINT PK_nom_table PRIMARY KEY(nom_table) 
, CONSTRAINT FK_nomTable_nomTablePointer_nomColPointer FOREIGN KEY (nom_col) REFERENCES nomTablePointer 
);

-- inserer 2lignes dans une table
INSERT INTO nom_table VALUES (val1...),(val2....);

-- inserer juste une donne 
INSERT INTO utilissateurs (nom,prenom) VALUES ("NOM","bidule");
-- ou ; mais ne fonctione pas en oracle que MySql
INSERT INTO utilissateurs SET nom="NOM", prenom="bidule";


-- suprimer ligne 
-- LIMIT 2 => ne suprime que 2 ligne 
DELETE FROM nom_table WHERE condition LIMIT 2;

--suprimer table
DELETE FROM nom_table

-- suprimer table ainsi que auto-incremente
TRUNCATE TABLE nom_table


-- metre a jour donne
UPDATE nom_table SET sexe="f",champ2=val2 WHERE condition;