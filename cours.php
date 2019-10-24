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
if (! $i){
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

