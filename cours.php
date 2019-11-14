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

// test dans les form si c est bloque
<p> <script type="text/javascript">alert('C\'est pas bloquée')</script> !</p>



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


















