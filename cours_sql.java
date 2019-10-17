
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