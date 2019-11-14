-- changer les droits pr un user sur une certaine base
--1) connection avec super user > aceuil > compte d utilisateur > changer privilege > base donner > ajouter de privilege sur la base XXX
--2) restreindre les droit a: DONNEES et dans STRUCTURE: CREATE,ALTER,INDEX,DROP,CREAT TEMPORARY TABLES


-- cree basse de donne avec pararametre
CREATE DATABASE nom_bd;
DEFAULT CHARACTER SET utf8;
DEFAULT COLLATE utf8_general_ci;

-- suprime la basse
DROP DATABASE nom_bd;

-- cree table dans une basse
USE nom_bd;
CREATE TABLE nom_table
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


-- recupere donner
SELECT nom,prenom FROM nom_table;

-- avec une LIMIT 
-- limiter au 2 premier enregistrement
SELECT nom,prenom FROM nom_table LIMIT 2;
-- limiter 2 enregistrement en partant du 2eme ; utile pour pagination
SELECT nom,prenom FROM nom_table LIMIT 2,2;


-- recupere toute les donner ; mais plus long que ecrire tout les champs
SELECT * FROM nom_table;


-- ordonner resutat croisant selon la colone nom_col
SELECT * FROM nom_table ORDER BY nom_col;
-- ordonner decroisant , puis si meme nom de nom_col alors ordonne selon la col prenom decroisant
SELECT * FROM nom_table ORDER BY nom_col DESC , prenom DESC;


-- compter le nombre de ligne de la table
SELECT COUNT(*) FROM nom_table;

-- renomer champs
SELECT COUNT(*) as nb_ligne FROM nom_table;

-- compter le nombre d homme de la table avec de paquet
SELECT COUNT(*) as nb_homme FROM nom_table GROUP BY sexe;


-- compter le nombre de ligne mais si dans nom_col=NULL alors il ne sera pas compter
SELECT COUNT(nom_col) FROM nom_table;

-- la plus grande valeur de la colone nom_col
SELECT MAX(nom_col) FROM nom_table;

-- moyenne sur une col d entier
SELECT AVG(nom_col) FROM nom_table;


-- condition OU
SELECT * FROM nom_table WHERE id=1 OR id=4;
-- autre syntaxe pr select les id 1,2,4
SELECT * FROM nom_table WHERE id IN (1,2,4);

-- condition ET
SELECT * FROM nom_table WHERE nom="michel" AND prenom="toto";


-- operateur different: != ou <>
SELECT * FROM nom_table WHERE id!=1 ;


-- recuperer tout les utilisateur qui ont un prenom qui commence par 't'
SELECT * FROM nom_table WHERE prenom LIKE "t%";

-- recuperer tout les utilisateur qui ont un 'a' dans leur prenom 
SELECT * FROM nom_table WHERE prenom LIKE "%a%";


-- fonction numerique
SELECT *,ABS() FROM nom_table;    --valeur absolut
SELECT *,ROUND() FROM nom_table;  --arondir
SELECT *,CEIL(1.2) FROM nom_table;   --arondir valeur superieur ex: 1.2=>2
SELECT *,FLOOR() FROM nom_table;  --arondir valeur inferieur 
SELECT *,TRUNCTE(1.12345,2) FROM nom_table;  --on garde que 2 chifre apres la vigule 
SELECT *,MOD(6,4) FROM nom_table  -- ou 6%4  ; modulo de 6 par 4 = 2


-- fonction texte
SELECT *,CONCAT(prenom,' ',nom) FROM nom_table;  --concatener les chaines
SELECT *,LENGHT(prenom) FROM nom_table;  --longeur de la chiane prenom
SELECT *,UPER(prenom) FROM nom_table;  --LOWER()  
SELECT *,SUBSTR(prenom,4) FROM nom_table;  --recuper la 4eme letre du prenom 
SELECT *,SUBSTR(prenom,0,4) FROM nom_table;  --recuper les 4 premiers letre du prenom 
SELECT *,REPLACE(prenom,'thom','michel') FROM nom_table;   
SELECT *,SOUNDEX(prenom) FROM nom_table;
SELECT *,REVERSE(prenom) FROM nom_table; 
SELECT *,TRIM('   chaine    ') FROM nom_table;  --suprime les espace avant et apres la chaine 
SELECT *,TRIM(BOTH 'x' FROM 'xxxchainexxx') FROM nom_table;  --suprime les x avant et apres la chaine ; sup x debut: BOTH=>LEADING ; fin: TRAILING


-- fonction date
SELECT *,ADDDATE(birthday,10) FROM nom_table;  --ajoute 10jours a la date d aniv  ; DATE_ADD(birthday,INTERVAL..) pareil mais ne suporte que les interval
SELECT *,ADDDATE(birthday,INTERVAL 1 YEAR) FROM nom_table;  --ajoute 1 an a la date d aniv 
SELECT *,SUBDATE(birthday,INTERVAL 1 HOUR) FROM nom_table;  --suprime 1heure a la date d aniv
SELECT *,ADDTIME(birthday,'1:0:0') FROM nom_table;  --ajoute 1heure
SELECT *,ADDDATE(birthday,INTERVAL 1 YEAR) FROM nom_table WHERE birthday<SUBDATE('2017-10-23',INTERVAL 18 YEAR) ; -- personne ager de plus de 18ans 






