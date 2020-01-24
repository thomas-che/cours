
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
/*                             */
/*         TABLEAU             */
/*                             */
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


/*#############################*/
/*                             */
/*                             */
/*        ACCESS DOM           */
/*                             */
/*                             */
/*#############################*/

// par l id de l element
document.getElementById('myDiv');

// par le nom mais des erreur car plusieur balise meme nom
document.getElementsByTagName('myDiv');

// par le nom
document.getElementsByName('myDiv');

// recupere le premier qui se touve dans id=menu/class=item/span comme selecteur CSS
document.querySelector('#menu .item span');

// recupere tout se qui se touve dans id=menu/class=item/span 
document.querySelectorAll('#menu .item span');


// recupere l atribut href de mon element id=myLink
var href = document.getElementById('myLink').getAttribute('href'); 

// modifie l atribut href de mon element id=myLink
document.getElementById('myLink').setAttribute('href', 'http://www.siteduzero.com'); 
// ou
var href = document.getElementById('myLink').href;
document.getElementById('myLink').href='http://www.siteduzero.com';
// mais
// getAttribute() retoure '/' si uniquement '/' dans href
// .href retourn l url complet https....

// affecter une class=blue css a un elememt id=myColoredDiv
document.getElementById('myColoredDiv').className = 'blue';


/*#############################*/
/*                             */
/*                             */
/*        MODIF  DOM           */
/*                             */
/*                             */
/*#############################*/

// remplace l element id=myDiv par 'remplacer'
document.getElementById('myDiv').innerHTML = 'remplacer';

// ajout a la fin de l element id=myDiv 
document.getElementById('myDiv').innerHTML += 'ajouter fin';

// pr recuperrer le contenu sans les balises
var div = document.getElementById('myDiv').innerText;
// ou .innerContent mais pas pris en charge par mozila


/*#############################*/
/*                             */
/*                             */
/*           NOEUDS            */
/*                             */
/*                             */
/*#############################*/

// acces au noeud parent de id=myP
document.getElementById('myP').parentNode;

// retourn un nb correcpondant au type
document.getElementById('myP').nodeType;

// il exite des constante pr chaque numero ex: 1 = Node.ELEMENT_NODE ( https://developer.mozilla.org/fr/docs/Web/API/Node/nodeType )
// c est util pr les comparaison dans les if
// --------------------------------------------------
// | nb|  type de noeud                             | 
// --------------------------------------------------
// | 1 |  Nœud élément                              | courrant
// --------------------------------------------------
// | 2 |  Nœud attribut                             | courrant
// --------------------------------------------------
// | 3 |  Nœud texte                                | courrant
// --------------------------------------------------
// | 4 |  Nœud pour passage CDATA (relatif au XML)  |
// --------------------------------------------------
// | 5 |  Nœud pour référence d'entité              | 
// --------------------------------------------------
// | 6 |  Nœud pour entité                          |
// --------------------------------------------------
// | 7 |  Nœud pour instruction de traitement       | 
// --------------------------------------------------
// | 8 |  Nœud pour commentaire                     | courrant
// --------------------------------------------------
// | 9 |  Nœud document                             | 
// --------------------------------------------------
// | 10 |  Nœud type de document                    |
// --------------------------------------------------
// | 11 |  Nœud de fragment de document             | 
// --------------------------------------------------
// | 12 |  Nœud pour notation                       |
// --------------------------------------------------

// retourn le nom de la balise (en miniscule, forcer le formatage)
document.getElementById('myP').nodeName.toLowerCase(); // p pour <p id="myP" >lazlke</p>

// retounr la balise ou #text du premier enfant
// ex: <p id="myP">Un peu de texte, <a>un lien</a> et <strong>une portion en emphase</strong></p>
document.getElementById('myP').firstChild; // #text car <p> commence par du texte

// retounr le dernier enfant
document.getElementById('myP').lastChild;

// pr eviter #text et avoir la premier balise
document.getElementById('myP').firstElementChild;

// recuperer le text du premier l enfant
document.getElementById('myP').firstChild.nodeValue;
// ou .nodevalue == .data

// recuperer le text du dernier enfant dans la balise strong : <strong>une portion en emphase</strong>
document.getElementById('myP').lastChild.firstChild.data;

// retoun un tableau avec tout les enfants 
document.getElementById('myP').childNodes;

// acces a l enfant suivant le premier
document.getElementById('myP').firstChild.nextSibling;

// acces a l enfant avant le dernier
document.getElementById('myP').lastChild.previousSibling;

// pr juste enfant suivant balise
document.getElementById('myP').firstChild.nextElementSibling;


/*#############################*/
/*                             */
/*                             */
/*       INSERT ELEMENT        */
/*                             */
/*                             */
/*#############################*/

// 1} cree un nouveaux element <a> et le text qui vas avec
var newLink = document.createElement('a');
var newLinkText = document.createTextNode("Le Site du Zéro");

// 2} ajoute des atribut
newLink.id    = 'sdz_link';
newLink.href  = 'http://www.siteduzero.com';
newLink.title = 'Découvrez le Site du Zéro !';
newLink.setAttribute('tabindex', '10');

// 3} asemble le text et <a> ; ajoute l element a la fin des enfant de id=myP
newLink.appendChild(newLinkText);
document.getElementById('myP').appendChild(newLink);


// clone element cree sans les enfant et sans atribut
document.createElement('hr').cloneNode(false); 

// clone element existant
document.getElementById('myP').cloneNode(true);
// cloneNode() ne copie pas les elemnt cree en js


// remplacer un element ex: <a>et un lien</a>
var link = document.querySelector('a');
var newLabel = document.createTextNode('et un hyperlien');
// remplace le #text de <a> par 'et un hyperlien'
link.replaceChild(newLabel, link.firstChild);


// suprimer un element
var link = document.querySelector('a');
link.parentNode.removeChild(link);

// removeChild() retourn l element suprimer donc on peut le reinteger dans le dom
var link = document.querySelector('a');
var oldLink = link.parentNode.removeChild(link); // On supprime l'élément et on le garde en stock
document.body.appendChild(oldLink); // On réintègre ensuite l'élément supprimé où on veut et quand on veut


// savoir si il y a des enfnat
.hasChildNodes() // true si aumoins 1 enfant


// inser element avant un autre
var paragraph = document.querySelector('p');
var emphasis = document.createElement('em'),
    emphasisText = document.createTextNode(' en emphase légère ');
emphasis.appendChild(emphasisText);
// insertBefore( element a insert , avant cette element )
paragraph.insertBefore(emphasis, paragraph.lastChild);


// inseert element apres un autre [fcn par opr]
function insertAfter(newElement, afterElement) {
    var parent = afterElement.parentNode;
    
    if (parent.lastChild === afterElement) { // Si le dernier élément est le même que l'élément après lequel on veut insérer, il suffit de faire appendChild()
        parent.appendChild(newElement);
    } else { // Dans le cas contraire, on fait un insertBefore() sur l'élément suivant
        parent.insertBefore(newElement, afterElement.nextSibling);
    }
}



/*#############################*/
/*                             */
/*           PROF              */
/*                             */
/*#############################*/

// nb aleatoire entre 0 et 100
var nb =Math.floor(Math.random()*99)+1;

// stocker dans n la valeur dans le form au nom de 'formul' dans input 'nb' 
var n= document.formul.nb.value;

// donner une valeur a l imput 'res'
document.formul.res.value ='BRAVO';

// dans le input on a un onclik sur le btn
<input type="button" name="controle" id="controle" onclick="verif()" value="CONTROLE" >

// rendre le btn 'controle' non cliquable
document.formul.controle.disabled=true;
