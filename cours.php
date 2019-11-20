<?php /* commentaire sur pusieur ligne /* ou // sur une ligne*/ ?> 

<?php
// tout les fichier dans /var/www/"nom_virtual_host"
/* reactiver le demarage automatique de apache et mysql :
$ sudo systemctl enable apache2
$ sudo systemctl enable mysql */

/* dans /etc/apache2 :
site-avaible => site desactiver
site-enable => site activer
activer un site : sudo a2ensite nom_virtual_host ; active le rep du virtual host
desactiver un site : sudo a2dissite nom_virtual_host
apres chaque ac/desac-tivation il faut relancer apache2 : sudo systemctl reload apache2 */


//afficher du texte
echo "voila du text avec retour a la ligne <br/> on est passer a la ligne";

// aficher du text html
echo "<p>text</p>";

//avoir des info sur notresite web
phpinfo();

/*// configurer pour voir les erreur :
error_reporting = E_ALL & ~E_DEPRECATED & ~E_STRICT
display_errors = Off
// changer en :
error_reporting = E_ALL 
display_errors = On */


//cree variable
$nom_var="sa valeur";
$i=3;

// aficher variable , concatenation
echo 'du txte ' . $nom_var . ' fin.';


// condition if
if (! $i){ // !$i => inverse de i
	echo 'not $i';
}
elseif (0<$i AND $j=='michel') {
	echo 'ok';
}
else {
	echo 'fin';
}

// condition switch
switch ($i) {
	case 1:
		echo 'i==1';
		break;
	
	default:
		#...
		break;
}

// condition ternaire
$majeur = ($age >= 18) ? true : false;


// boule while
while ($i <= 10) {
	echo $i;
	$i++;
}

// boucle for
for ($i=0; $i<=10; $i++) {
	# code...
}

// boucle foreach pour les tableau
foreach ($nom_tab as $i ) {
	echo $i; // $i = prend chaque case du tab
}
// les tableau avec libeler
foreach ($variable as $key => $value) {
    echo '<p>' . $key . ' = ' . $value . '</p>';
}



// tableau
$prenom= array('thomas','dider','jacquie');
// afficher le tableau (debugage)
echo print_r($prenom);

// tableau ou chaque case a un nom ; libeler ; tabeleau associatif
$presonne= array('nom'=>'thomas','prenom'=>'micheil','age'=>10);

// savoir si le libeler 'key' est dans le tab
array_key_exists('key', $array_name);

// savoir si une valeur est dans le tab
in_array('value',$array_name);

// renvoie la position de ma valeur dans le tab
array_search('value', $array_name);
$position = array_search('value', $array_name);


// retourne ne nombre de char de la chaine ; longeur
$nbChar=strlen($chaine);

// melager une chaine
$chaineMelanger= str_shuffle($chaine);

// remplacer une sous chaine dans une chaine
$chaineRemplacer = str_replace('a', 'b', $chaine); // remplace les a par b

// metre chaine en maj ou min
$chaineMinuscule = strtolower($chaine);
$chaineMajuscule = strtoupper($chaine);

// recupere le nb du jours en cours
$jour = date('d'); // 'Y' ; 'm' ; 'd' ; 'H' = heure ; 'i' = minute

// cree function
function direBj ($nom)
{
	echo 'Bj' . $nom;
}
// recuperer valeur de l appele de function
$bjUser = direBj('michel'); 


// inclure une page php dans une aure page
include("page2.php");
// dans une page html <?php include("page2.php"); ? >


// transmetre de l info par l url
// dans index.php :
// page2.php?nom=thomas&amp;prenom=CHE : cle=valeur dans le tab $_GET ; &amp; => & en html
<a href="page2.php?nom=thomas&amp;prenom=CHE">Dis-moi bonjour !</a>
// dans page2.php :
<p> bonjour <?php echo $_GET['nom'] . ' ' . $_GET['prenom']; ? > </p>

// pr ne pas avoir les erreurs qui s afiche on test si il y qqch dans $_GET
< ?php if (isset($_GET['nom']) AND isset($_GET['prenom']))
{ echo $_GET['nom'] . ' ' . $_GET['prenom']; } ? >

// on regarde que le champ nom existe
isset($_GET['nom'])

// si on a un champ repeter alors on doit verifiser que c est un nb
$_GET['repeter'] = (int) $_GET['repeter'];
// ensuite on verifi si il a des valeurs raisonable
if ($_GET['repeter'] >= 1 AND $_GET['repeter'] <= 100)



//================> FORMULAIRE <=======================================================================


// formulaire avec la methode post: envoie plus de donner et donner non visible dans l url
<form action="page2.php" method="POST">
    <p><label>Prenom <input type="text" name="prenom" /></label></p>
    <p><input type="submit" /></p>
</form>
// dans page2.php pr recuperer les champs dans le tab $_POST
<p> Bonjour <?php echo $_POST['prenom']; ? ></p>

//dans index.php : liste deroulante
<select name="choix">
    <option value="choix1">Choix 1</option>
    <option value="choix2">Choix 2</option>
    <option value="choix3" selected="selected">Choix 3</option>
</select>
// dans page2.php
<p> le choix est : <?php echo $_POST['choix']; ? ></p>

// cases a cocher ; $_POST['case']=on si la case est cocher
<input type="checkbox" name="case" id="case" /> <label for="case">Ma case à cocher</label>

// bouton radio ; $_POST['frite']=oui c est ce que on met dans value
<input type="radio" name="frites" value="oui" id="oui" checked="checked" /> <label for="oui">Oui</label>

// cacher un champ au visiteur, $_POST['pseudo']=Mateo21 
// on voit la balise dans le code source donc pas vraiment cacher
<input type="hidden" name="pseudo" value="Mateo21" />

 
// faille XSS , dans un champs ou l on entre du texte, on rentre un code JS qui permet d acceder a des donner priver ou fait planter le site
// htmlspecialchars => fait en sorte que l on recupere que des chars 
<p> Bonjour : < ?php echo htmlspecialchars( $_POST['prenom'] ) ; ? ></p>

// nl2br() permet de convertir les retour a la ligne en balise br html
echo nl2br(htmlspecialchars($donnees['contenu']));

// test dans les form si c est bloque
<p> <script type="text/javascript">alert('C\'est pas bloquée')</script> !</p>


// redirection avec header
header("location: index.php"); 


//================> ENVOI FICHIER <=====================================================================


// envoie de fichier ; enctype => le navigateur sait qu il va envoyer un fichier
<form action="cible_envoi.php" method="post" enctype="multipart/form-data">
    <input type="file" name="monfichier" /> 
    <input type="submit" value="Envoyer le fichier" />
//================> ENVOI FICHIER <=

// Testons si le fichier a bien été envoyé et s'il n'y a pas d'erreur
if (isset($_FILES['monfichier']) AND $_FILES['monfichier']['error'] == 0)
{
    // Testons si le fichier n'est pas trop gros
    if ($_FILES['monfichier']['size'] <= 1000000)
    {
        // Testons si l'extension est autorisée
		// pathinfo => renvoie un array avec des info sur le fichier comme : extension
        $infosfichier = pathinfo($_FILES['monfichier']['name']);
        $extension_upload = $infosfichier['extension'];
        $extensions_autorisees = array('jpg', 'jpeg', 'gif', 'png');
        if (in_array($extension_upload, $extensions_autorisees))
        {
            // On peut valider le fichier et le stocker définitivement
    		// move_uploaded_file =>  ; basename => extrai le nom du fichier
            move_uploaded_file($_FILES['monfichier']['tmp_name'], 'uploads/' . basename($_FILES['monfichier']['name']));
            echo "L'envoi a bien été effectué !";
        }
    }
}
// gerer les cas ou le nom du fichier contient des espaces



// variables superglobales ; 
$_SERVER['REMOTE_ADDR']; // donne adress ip du client
$_SESSION ; // variable de sesion reste stocke sur le serveur le temps de la presence du client
$_COOKIE ; // variable stockee sur le pc du client pendant x temps



//================> phpMyAdmin <=========================================================================


// dans un fichier connect.php 
< ?php

    define("SERVEUR", "localhost");
    define("USER", "tp3"); // le nom de lutilisateur de la bd
    define("PASSWORD", "tp3"); // le mdp sur phpmyadmin
    define("BDD", "forum"); // le nom de la bd

// dans le fichier principal
try { // on essay de ce connecter
    require_once('connect.php'); // appelle le fichier connect.php
    $connexion=new PDO('mysql:host='.SERVEUR.';dbname='.BDD,USER,PASSWORD); // cree la connection en remplacant les variables
    $connexion->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION); // initialise les future msg d erreur
}
catch(PDOException $e) { // on capture l erreur et on l afiche
    $msg = 'ERREUR dans ' . $e->getFile() . ' Ligne : ' . $e->getLine() . ' : ' . $e->getMessage();
    exit($msg); 
}
$connexion->query("SET NAMES UTF8"); // initialise l encodage

// faire une requete 
$requete="SELECT nom FROM ex1 WHERE test=2";
$resultat=$connexion->query($requete);
// ou en 1 ligne
$resultat=$connexion->query("SELECT nom FROM ex1 WHERE test=2");

// apres avoir utiliser $resultat, on ferme pr liberer de la memoir
$resultat->closeCursor();


// =====> lire ligne par ligne la table <=========

// 1} methode simple
// fetch() => renvoie un tableau et lit chaque ligne de le table ; fetch renvoie false quand il n y a plus de ligne a lire
while ($ligne=$resultat->fetch()) { 
    echo '<p>' . $ligne['nom'] . ' : ' . $ligne['msg'] . '</p>' ; // $ligne['nom'] => acces au champ nom de la ligne 
}

// 2} on met le resultat dans un tableau d obejct
$resultat-> setFetchMode(PDO::FETCH_OBJ);
// acces ligne par ligne au tableau d obj
while ($ligne=$resultat->fetch()) {
    echo '<p>' . $ligne->nom . ' : ' . $ligne->msg . '</p>' ; // $ligne->nom => acces au champ nom de la ligne 
}

// utilisation du $_POST
// isset($_POST) => est ce qu il existe ? ; !empty($_POST['nom']) => le champs nom est non vide ?
if ( isset($_POST) && !empty($_POST['nom']) && !empty($_POST['msg']) ) {
    $nom=$_POST['nom']; $msg=$_POST['msg'];
// utiliser des var ($nom=$_POST['nom']) pour le INSERT ; 0 => car Auto Incremente
    $resultat=$connexion->query("INSERT INTO forum VALUES (0,'$nom','$msg')");
// pour vider le tab $_POST
    unset($_POST);
}

// requete preparer ; on attend qqch a la place de ?
$requete=$connexion->prepare("SELECT nom FROM ex1 WHERE test=?");
// execute la requete avec comme parametre $_POST['test']
$requete->execute(array($_POST['test']));
// pr afficher les lignes
while ($ligne=$requete->fetch()) {

// requete preparer avec marqueur nominatif :nom
$requete=$connexion->prepare("SELECT nom FROM ex1 WHERE test= :nom");
$requete->execute(array('nom'=>$_POST['test']));

// modification bd alors utilise exec et non query
$requete="INSERT INTO forum VALUES ( 0 , '$nom' , '$msg' ) ";
$resultat=$connexion->exec($requete);



//================> Session Cookie <=====================================================================

// demarer la session ; 1 seul par page et avant <!DOCTYPE html>...
session_start();
// suivie de parametre key value
$_SESSION['prenom'] = 'Jean';
$_SESSION['nom'] = 'Dupont';
$_SESSION['age'] = 24

// fin de la session 
session_destroy();

// destruction propre de la session
$_SESSION = array();
if (isset($_COOKIE[session_name()])) {
    setcookie(session_name(), '', time()-42000, '/');
}
session_destroy();

// suprimer une valeur de la session
unset($_SESSION['login']);

// pr utiliser les donner de session dans une autre page : faire au debut de la page session_start()
$_SESSION['prenom'] 

// quand dans notre fichier est pas le index.php pour eviter de planter
if (strlen(session_id()) < 1) session_start();  // 0 si pas de session start


// cookie ecrit avant le code html
// 1 cookie = 1 info ; cookie a une durer de vie, time()=temps ecouler depuis le 01/01/1970
setcookie('pseudo', 'M@teo21', time() + 365*24*3600 , chemin , domaine set , secure);
// chemin : destination où le nav doit envoyer le cookie
// domaine set : nom du dommaine a partir duquel peut etre luss le cookie ou utilise $SERVER_NAME
// secure : 0 si la co n est pas securiser sinon 1

// cookie httpOnly pour eviter a faille XSS
setcookie('pseudo', 'M@teo21', time() + 365*24*3600, null, null, false, true);



//===========================================================

// on ouvre le fichier et on le stocke dans une var
$monfichier = fopen('compteur.txt', 'r+');
fopen('compteur.txt', 'r')  // lecture seule
fopen('compteur.txt', 'r+') // lecture et ecriture
fopen('compteur.txt', 'a')  // écriture seule, si le fichier n'existe pas, il est automatiquement créé.
fopen('compteur.txt', 'a+') // lecture et écriture, Si le fichier n'existe pas, il est créé automatiquement. Attention : le répertoire doit avoir un CHMOD à 777 dans ce cas ! À noter que si le fichier existe déjà, le texte sera ajouté à la fin

// on referme le fichier
fclose($monfichier);

// pour ligne la premier ligne du fichier ; il faudra faire une boucle pr le lire en entier
$ligne = fgets($monfichier);

// pour recuperer le 1er char
$charactere = fgetc($monfichier);

// ecrir dans le fichier a l endroit ou est le curseur
fputs($monfichier, 'Texte à écrire');
// remetre le curseur au debut du fichier
fseek($monfichier, 0); 
// j ai  impresion que l on ecrase l ancienne donner


//================> expressions régulieres <=====================================================================

// choix de 2 bibliotech : POSIX ou PCRE, POSIX(plus lent) < PCRE(plus complexe) donc on prend PCRE


// recherche un mot dans une chaine de char ; regex = expression reguliere
if (preg_match("#Ma regex#", "Ce dans quoi vous faites la recherche")) {
    echo 'Le mot que vous cherchez se trouve dans la chaîne';
}
else { 
    echo 'Le mot que vous cherchez ne se trouve pas dans la chaîne'; 
}

// la regex a des options, apres le 2eme # 
"#Ma regex#Options"

"#Ma regex" // on recherche exactemet la regex ex: toto!=Toto
"#Ma regex#i" // on ne fait pas attention au majuscule et minuscule ex: toto=Toto=TOTO

// | => OU  , soit guitare soit piano
preg_match("#guitare|piano#", "j aime la guitare") // vrai


preg_match("#^guitare#", "j aime la guitare") // ^ , regex au dubut de la phrase // faux
preg_match("#guitare$#", "j aime la guitare") // $ , regex a la fin de la phrase // vrai


// classe de caractere :
preg_match("#gr[ioa]s#", "le chat est gris")    // on accept gris ou gros ou gras // vrai
preg_match("#gr[a-z]s#", "le chat est gris")    // on accept tout les char de a à z // vrai
preg_match("#gr[a-zA-Z]s#", "le chat est gris") // on accept tout les char de a à z et A à Z // vrai
preg_match("#gr[0-9]s#", "le chat est gris")    // on accept tout les chiffres de 0 a 9 // vrai
preg_match("#gr[^ao]s#", "le chat est gris")    // on accept tout sauf gras ou gros // vrai


// quantificateur :
preg_match("#Ay(xy)?#", "Ayxy")   // ? , regarde si xy est present 0 ou 1 fois ; au plus 1 fois //vrai
preg_match("#Ay(xy)+#", "Ay")     // + , regarde si xy est present 1 ou x fois ; au moins 1 fois //faux
preg_match("#Ay(xy)*#", "Ayxyxy") // * , regarde si xy est present 0 ou 1 ou x fois //vrai

preg_match("#Ay(xy){1}#", "Ayxyxy")   // { } , regarde si xy est present 1 fois //vrai: Ayxy+xy donc le patern est bien present
preg_match("#^Ay(xy){1}$#", "Ayxyxy") // { } , regarde si xy est present exactement 1 fois //faux

preg_match("#^[0-9]{3,6}$#", "6666") // {3,6} , regarde si xy est present entre 3 et 6 fois //vrai
preg_match("#^[0-9]{3,}$#", "6666")  // {3,} ,  regarde si xy est present entre 3 et infini fois //vrai
















