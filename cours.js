
// appel d un fichier .js sur unr page html ; si volumineux appel juste avant </body>
//<script src="hello.js"></script>

// boite de dialogue
alert('Hello world!');

// declarer variable
var myVariable = 5.5;
var text1 = "Mon premier texte";

// affiche le type de la var si elle existe, sinon 'undefined' 
typeof nom_var
// pb avec typeof et parseInt()
var test = parseInt('test'); // Contient au final la valeur « NaN »
typeof test; // Affiche « number »
// resolution pb is Not a Number
var test = parseInt('test'); // Contient au final la valeur « NaN »   
alert(isNaN(test)); // Affiche « true »

// demande de renter qqch
prompt('Entrez votre prénom :');

// cast txt->number
var text = '1337', number;
number = parseInt(text);
number = parseInt('100', 2); // 100=4 en binaire 

// operateur de comparaison
var a=1,b='1';
alert(a==b);  // true  ; egal a 
alert(a===b); // false ; contenu et type egal a

// confirm => demande de cliquer sur ok
if (confirm('Voulez-vous exécuter le code JavaScript de cette page ?')) {
    alert('Le code a bien été exécuté !');
}

// test existance d un contenu ; 
var conditionTest = 'Fonctionnera ? Fonctionnera pas ?';
if (conditionTest) {
    alert('Fonctionne !'); // converti en boolean ; seul 0 '' undefined seront = flase
}

// fonction
function myFunction(arguments) {
    // code...
    return xxx;
}

// variable global et locla au meme nom
var message = 'Ici la variable globale !'; 
function showMsg() {
    var message = 'Ici la variable locale !';
    alert(message);
}
// appel de la foction
showMsg();

// fonction annonyme
var sayHello = function() { alert('Bonjour !'); };

// fonction annonyme isoler son code
var test = 'noir'; // On crée une variable « test » contenant le mot « noir »
(function() { // Début de la zone isolée
    var test = 'blanc'; // On crée une variable du même nom avec le contenu « blanc » dans la zone isolée
    alert('Dans la zone isolée, la couleur est : ' + test);
})(); // Fin de la zone isolée. Les variables créées dans cette zone sont détruites.
alert('Dans la zone non-isolée, la couleur est : ' + test); // Le texte final contient bien le mot « noir » vu que la « zone isolée » n'a aucune influence sur le reste du code


/*#############################*/
/*                             */
/*         TABLEAU             */
/*                             */
/*#############################*/

// definir un tableau
var myArray = ['Sébastien', 'Laurence', 'Ludovic', 'Pauline', 'Guillaume'];
var myArray = new Array('Sébastien', 'Laurence', 'Ludovic', 'Pauline', 'Guillaume');

myArray.push('Ludovic'); // Ajoute « Ludovic » à la fin du tableau
myArray.unshift('Ludovic'); // Ajoute « Ludovic » au debut du tableau

myArray.shift(); // Retire permier element
myArray.pop(); // Retire dernier element

// fait un tableau en prenant comme separateur ' '
myArray = myString.split(' ');
// reconstitue le text avec '-' entre element du tableau 
myString = myArray.join('-');

// tableau objet litteraux ; "resemble dictionaire"
var family = {
    self: 'Sébastien',
    sister: 'Laurence',
    brother: 'Ludovic',
    cousin_1: 'Pauline',
    cousin_2: 'Guillaume'
};
// acces au valeur :
family.sister;
family['sister'];

// ajouter des items
family['uncle'] = 'Didier'; // « Didier » est ajouté et est accessible via l'identifiant « uncle »
family.uncle = 'Didier'; // Même opération mais d'une autre manière

// parcour tabelau avec for in
for (var id in family) { // On stocke l'identifiant dans « id » pour parcourir l'objet « family »
    alert(family[id]);	
}

// demander en boucle 
while (prenom = prompt('Entrez un prénom :')) { // Si la valeur assignée à la variable « prenom » est valide (différente de « null ») alors la boucle s'exécute
    tab.push(prenom); // Ajoute le nouveau prénom au tableau
}

// debugage
console.log(tab); // affiche la variable tab
// warn() error() group() groupEnd() ; utiliser pour afficher les erreur 











