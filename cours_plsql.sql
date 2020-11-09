-- on ne peut pas cree de table car on a pas les droit

-- var de substitution dans bloc slq+
&ma_var
-- utilisation var substitution
ACCEPT nom_es PROMPT 'entez le nom du prof : ';
SELECT id_Enseigant From Formateur WHERE prenom='&nom_es'; -- /!\ ne pas oublier '' pr les chaines de char
-- ou dans une addition avec &cap ou cap de type NUMBER
BEGIN
	:addition := &cap+PiloteNN+P ;   -- notez l’absence des ‘’autour de &cap car nombre

-- var externe ou de reference
:ma_var
-- utilisation var externe ou de reference
accept sal prompt 'Entrez le salaire : ' ; -- saisi du salaire dans la variable sal
VARIABLE salAnnuel NUMBER ;  -- type possible = type oracle -- déclaration de la variable salAnnuel 
BEGIN
	:salAnnuel := &sal*12; -- affectation du salaire annuel dans salAnnuel
END;
/
PRINT salAnnuel ; -- affichage du salaire annue

-- var scalaire ou stucturées vivant que dans bloc plsql,
ma_var
-- utilisation var scalaire ou stucturées dans plsql
DECLARE
	var1 NUMBER;
	var2 NUMBER :=2; -- init la var2 
	var3 CONSTAINT NUMBER NOT NULL; -- var constante non null
BEGIN
-- <...>

-- Table Booleans T/F/Unknown

AND | T | F | U |		 OR | T | F | U |
----+---+---+---+		----+---+---+---+ 
 T  | T | F | U |		 T  | T | T | T |		NOT(T) = F
----+---+---+---+		----+---+---+---+			
 F  | F | F | F |		 F  | T | F | U |		NOT(F) = T
----+---+---+---+		----+---+---+---+
 U  | U | F | U |		 U  | T | U | U |		NOT(U) = U


-- Type de donees : 
DECLARE
	Reponse CHAR(1);   
	compteur BINARY_INTEGER:= 0; -- pr cree un compteur de 0
	dateValide DATE := SYSDATE + 7;   -- date du systeme plus 7 jours total 
	NUMBER(9,2) := 0;

-- ma_var de meme type que la collone="nomColonne" dans la table="Table" avec %Type
ma_var Table.nomColonne%TYPE

-- table plsql = obj de 2 elements : clef primaire type BINARY_INTEGER et une autre colonne d'un autre type
DECLARE
	type nomTable is table of Table.nomColonne%TYPE index by BINARY_INTEGER; -- famille avec comme type le meme que dans la colonne
	ma_table nomTable; -- ma_table sera de type nomTable
BEGIN
	ma_table(0):=12; -- ma_table de 0 commence à 12


-- enregistrement (record) : 1) cree le type, 2) declare la var de ce type
DECLARE
	type personne is record -- declar le type personne et tant que obj
	     ( id NUMBER NOT NULL
	     , nom VARCHAR2(32)
	     , date_nais DATE
	     );
	monEnregistrement personne; -- monEnregistrement dera de type personne
-- si on veux utiliser monEnregistrement
monEnregistrement.id -- access a la col id
monEnregistrement.nom :='Michel';


-- %ROWTYPE = obj ligne de toute une table
ACCEPT nom_p PROMPT 'entez le nom du pilote : ';
DECLARE
	monPilote Pilote%ROWTYPE; -- monPilote reprensentera une ligne de la table Pilote (=numPilote;nomPilote;addr)
BEGIN
	monPilote.numPilote:=1; -- attribution des var de l obj monPilote
	monPilote.nomPilote:='&nom_p'; -- bien use '' et & car demander avant
	monPilote.adresse:='nice';

-- affectation des var
BEGIN
	compteur := compteur + 1;
	nom := UPPER(nom); -- metre en majuscule le texte
	res := SIN(angle); -- fonction math

-- Select en plsql ne ramene que 1 ligne !
SELECT exp1 INTO var1 FROM <...> -- epx1 et var1 sont de meme type
-- ex : declarer la var qui vas acceullir la rep de la requete
DECLARE
	nomPilote VARCHAR2;
BEGIN
	SELECT nom INTO nomPilote FROM Pilote WHERE id=1;
	-- afficher ligne text
	DBMS_OUTPUT.put_line('Le nom du pilote est :' || nomPilote);

-- condition IF dans un bloc Begin
-- operateur meme que ne sql : = ,<, >, !=, >=, ≤ ; IS NULL, IS NOT NULL, BETWEEN,LIKE, AND, OR, ...
IF salaire_P IS NULL THEN 
	mes := ' pas de salaire ';
ELSIF salaire_P <1200 THEN
	mes := ' sous payé ';
ELSE
	mes :=' correctement payé ';
END IF;
-- ex : savoir si il y a un pilote avec une addr vide ; nb declare avant en NUMBER
SELECT count(*) INTO nb FROM Pilote WHERE address IS NULL;
IF nb=0 THEN
	-- fait l'affichage et traitement

-- INSERT/UPDATE dans bloc plsql begin mais en sql classic	

-- Boucle LOOP dans begin
LOOP
	-- <instruction>
EXIT; -- il peut y avoir une condition ex: EXIT WHEN nb=11;
	-- <instruction>
END LOOP;


-- Boucle While dans begin
WHILE nb<=10 LOOP
	-- <instruction>
END LOOP;

-- Boulce FOR
DECLARE
	nb BINARY_INTEGER; -- declare le compteur
BEGIN
	FOR nb IN 0..10 LOOP -- on peut decremente l indice : FOR nb IN REVERSE 0..10 LOOP => commence a 10 et fini a 0
		-- <instruction>
	END LOOP;


-- nvl permet si pas de valeur (=null) on met un 0 par default 
Select nvl(sum(taille),0) into nb from Image;

-- func math...
Select round(avg(note)*sqrt(nb),2) into pertinence From Notation

----------------------
--					--
--		CURSOR		--
--					--
----------------------
-- SELECT qui ramene plusieur ligne

-- cursor explicite v1 : boucle
DECLARE
	CURSOR C1 IS SELECT id,salaire FROM drh WHERE grade=3; -- declare le cursor c1 etant une requete
	Emp C1%ROWTYPE; -- enregistrement qui contient les champs du cursor <=> une ligne du corsor
BEGIN
	OPEN C1; -- ouvre le cursor puis passe dans une boucle
		LOOP
		FETCH C1 INTO Emp; -- on passe d'une ligne du cursor a l'autre
		EXIT WHEN C1%NOTFOUND; -- sort quand plus de ligne
		-- <instruction>
		END LOOP;
	CLOSE C1;
END;
/

-- attribut %FOUND
IF nomCursor%FOUND THEN -- le fetch a ramner des lignes

-- attribut %ROWCOUNT
IF nomCursor%ROWCOUNT =3 THEN -- le fetch a ramner 3 lignes

-- attribut %ISOPEN
IF nomCursor%ISOPEN THEN -- le cursor est par default fermer donc FALSE

-- cursor explicite v2 : boucle FOR
DECLARE
	CURSOR C1 IS SELECT id,salaire FROM drh WHERE grade=3; -- declare le cursor c1 etant une requete
BEGIN
	FOR Emp IN C1 LOOP -- Emp jamais declarer
		-- <instruction> Emp.salaire*1.1
	END LOOP;
END;
/

-- Si veux calc qqch dans une requete d'un cursor : AS "nom"
DECLARE
	CURSOR C1 IS SELECT id,salaire*0.7 AS "Salaire_net" FROM drh
BEGIN
	FOR Emp IN C1 LOOP -- Emp jamais declarer
		Emp.Salaire_net...


-- Cursor avec des parametres
DECLARE
	CURSOR C (g NUMBER) IS SELECT * FROM drh WHERE grade = g; -- cursor C a un parametre g de type NUMBER 
BEGIN
	FOR Emp IN C(21) LOOP -- dans le cursor ou le grade=21


-- Cursor current of
-- on modifi/sup la ligne que l'on est entrain de lire
DECLARE
	CURSOR C1 IS SELECT numserv FROM Serv FOR UPDATE of BUDGET; -- cursor pret a update les nbPers et NbForm
BEGIN
	FOR ligne IN C1 LOOP
		UPDATE Serv SET BUDGET=MasseSalariale(ligne.numserv) WHERE CURRENT OF C1; -- on met a jour tout les grade qui respecte la clause de C
    END LOOP;
END;
/

-- pas besoin d'un cursor, on a pas specifier le where ducoup il fait pr toute les lignes de Client
-- direct un UPDATE sur toute la table
UPDATE Client SET nombreImage = NbAlbumPublic(eMailUtilisateur), espaceStockageDispo = quota - Occupe(eMailUtilisateur);


----------------------
--					--
--	   FONCTION     --
--					--
----------------------
-- Fonction renvoie qqch ; tout les param sont des IN ; executer dans un bloc plsql

-- ex fonction
create or replace function MasseSalariale (numService IN NUMBER) 
return number 
    -- prend en entrée un numéro du service et qui renvoie la masse salariale de ce service. Rendre0 si le service ne compte aucun salarié
IS
    masseSal number;
begin
-- nvl(sal,0) pr avoir 0 a la plase de null
    SELECT sum(nvl(sal,0)+nvl(vac,0)) INTO masseSal From drh WHERE numServ=numService; 
    return masseSal; 
end;
/
SELECT MasseSalariale(1) From Dual; -- utilisation de la fonction

-- apple d'une fonction :
SELECT NbAlbumPublic('u1@') FROM dual; -- select sur notre fonction et from rien
SELECT * FROM drh WHERE salaire=nomFonction(parm1,...,parmn); -- dans DECLAR
DBMS_OUTPUT.put_line( nomFonction(parm1,...,parmn) ); -- dans un BEGIN
EXECUTE DBMS_OUTPUT.put_line( nomFonction(parm1,...,parmn) ); -- dans sql+
EXECUTE nomFonction(parm1,...,parmn); -- dans sql+


----------------------
--					--
--	  PROCEDURE     --
--					--
----------------------
-- Procedure ne renvoit rien

-- Ex :  déplace tous les avions de la première localisation vers la seconde et met dans x le nombre d avions concernés
Create or replace procedure mouvementAvion (loc1 IN VARCHAR2, loc2 IN VARCHAR2, x OUT NUMBER)
As
Begin
	update Avion set localisation=loc2 where localisation=loc1 ;
	x:=SQL%ROWCOUNT;
End;
/

-- lever une erreur
IF libre < :NEW.taille THEN
    raise_application_error(-20001,'error ajout image, espace dtockahge depaser');
END IF;

-- lever une execption quand un select ramene + de 1 ligne
begin
    SELECT ...
    Return idLab;    
Exception
    When TOO_MANY_ROWS then
        return 'plusieur labo au meme prix min';
end;

----------------------
--					--
--	   TRIGGER      --
--					--
----------------------

CREATE OR REPLACE TRIGGER nomTriger
AFTER/BEFORE INSERT OR UPDATE OR DELETE ON nomTable
FOR EACH ROW -- pr chaque ligne
DECLARE
    -- ...
BEGIN
    -- ..
END;
/


-- ex : detecter une erreur dans les valeur d'un insert
DECLARE
    pb NUMBER
BEGIN
    -- controle de la forchette disjointe des autres forchettes
    SELECT Count(*) INTO pb FROM TarifDegressif WHERE idLaboratoire =:NEW.idLaboratoire AND NOT ( :NEW.quantiteMaxi < quantiteMini OR :NEW.quantiteMini > quantiteMaxi);
    IF pb <> 0 THEN
        -- nouvelle forchette avec chevauchement, donc erreur
        raise_application_error(-20002,'PB chevauchement');
    END IF;
END;
/

-- ex : trigger misse a jours des salaires quand on fait une modif sur drh
CREATE OR REPLACE TRIGGER AfterUpdateDrhBudjet
AFTER UPDATE OR INSERT OR DELETE ON drh
FOR EACH ROW
    --  Mettre  à  jour  automatiquement  cette  colonne  à  chaque  mouvement  de  salarié  (nouvelle embauche d’un salarié dans un service, débauche d’un salarié, promotion d’un salarié, etc.).
BEGIN
    IF DELETING THEN
        UPDATE Serv SET BUDGET=BUDGET-(nvl(:OLD.sal,0) + nvl(:OLD.vac,0)) WHERE numServ= :OLD.numServ;
    ELSIF INSERTING THEN
        UPDATE Serv SET BUDGET=BUDGET+(nvl(:NEW.sal,0) + nvl(:NEW.vac,0)) WHERE numServ= :NEW.numServ;
    ELSE -- updating
        IF ( (nvl(:NEW.sal,0) <> nvl(:OLD.sal,0)) OR (nvl(:NEW.vac,0) <> nvl(:OLD.vac,0)) ) THEN
            UPDATE Serv SET BUDGET=BUDGET+(nvl(:NEW.sal,0) - nvl(:OLD.sal,0) + nvl(:NEW.vac,0) - nvl(:OLD.vac,0)) WHERE numServ= :NEW.numServ;
        END IF;
    END IF;
END;
/

-- ex trigger qui leve des erreur, triger BEFORE
IF (:NEW.emploi = 'FORMATEUR' AND :NEW.vac IS NULL) THEN
    raise_application_error(-20001,'Un formateur a droit à une vacation !');
ELSIF (:OLD.emploi = 'FORMATEUR' AND :NEW.vac IS NOT NULL) THEN
    raise_application_error(-20002,'Un non formateur n a pas droit à une vacation !');
END IF;



