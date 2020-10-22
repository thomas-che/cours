// code minimum pour un fichier java
public class Cours {
    public static void main(String[] arg) {
        System.out.println("voilla le cours de java");
    }
}
// compiler fichier java : ~/Documents/fichier_java$ javac nom_fichier.java
// executer fichier class: ~/Documents/fichier_java$ java nom_fichier


/* ligne comande a lancer pour lancer : 
	1) aller dans le rep du project ; 
~/Documents/java_fichier/Openclassrooms_java$
	2) executer
java -jar out/artifacts/Openclassrooms_java_jar/Openclassrooms_java.jar */


System.out.print("retour a la ligne ->\n ; retour chariot ->\r ; \"protection des quotes\" ");


// variable numerique
byte <127	; short<32767	; int<2*10**9	; long<9*10**18 ;// pour long doit ajouter "L" : long nb=15L
float pi=3.14f; // c est comme le int mais a vigule, ajout "f"
double pi=pi=3.14159263d; //comme long


// var stocke caractere
// /!\ un char utilise les simple quote /!\
char caractere = 'A'


// var booleen
boolean question = true ; // false


// String chaine de caractere
String str = new String("Une chaîne de caractères");
// ou simplement, cree tout seul sans appler new
String phrase = "ma phrase";


//opperateur division et modulo
nb1=10/3	// 3
nb1=10.0/3	// 3.3333333333333335
nb1=10%3	// 1

//incrementation et decrementation
nb1++ ; nb1-- //incremente apres operation
++nb1 ; --nb1 //incremente avant op


// cast
int resulta = (int)(10.0/3) // 3 ; car on a forcer le type de retour
/* /!\ regle de prioriter :
	double peut contenir int donc pas de cast : double res=10/3  */


// formatage des nb
int nb1=1_000_000 // le "_" permet la lisibiliter du nb et en aucun cas modifie la var
int entier = 255; //Peut s'écrire « int entier = 0xFF; »
int entier = 0b1111_1111; //Est équivalent à : « int entier = 255; »


// Scanner
Scanner sc = new Scanner(System.in); 
// exemple 
System.out.println("saisie : ");
String str = sc.nextLine();  // pour une chaine de char 
int i = sc.nextInt();  // pour int
// les autres types : next<Type de variable commençant par une majuscule>

String str = sc.nextLine();  // vas avec ligne desous
char carac = str.charAt(0);  // recupere le char d indice 0 de str
reponce = sc.nextLine().charAt(0)  // example recupere 'o' de oui

// si pb : tete de lecture pas repositioner quand nextInt() donc faire nextLine() dans le vide
int i = sc.nextInt();
System.out.println("Saisissez une chaîne : ");
//On vide la ligne avant d'en lire une autre
sc.nextLine();
String str = sc.nextLine();


&& // ET logique
|| // OU logique
!= // different 


// pas besoin des acolades apres le if ou else si que une seul ligne d instruction
if (0 < 1)
	System.out.println("le nombre est négatif");
else if (0==1)
    System.out.println("le nombre est positif");
else 
	System.out.println("le nombre est positif")


// switch
switch (/*Variable*/) {
  case /*Argument*/:
    /*Action*/;
    break;        
  default:
    /*Action*/;             
}


//operateur ternaire
type_retour nom_variable = (/*condition*/) ? /*si true */ : /*si false */ ;


// example force user a taper soit 'o' ou 'n' 
while (reponce2 != 'o' && reponce2!='n'){
    System.out.println("recomenece !");
    reponce2 = sc1.nextLine().charAt(0);
}


// do while ; contrairement a while fait au moins une execution
// utile pour teste si saisie clavier est bien un int 
do{
  /*Instructions*/
}while(a < b); // pas oublier ;


// boucle for
for(int i = 1; /* condition */ ; i++) { }


//tableau 1D
<type du tableau> <nom du tableau> [] = { <contenu du tableau>};
int tableauEntier[] = {0,1,2,3,4,5,6,7,8,9};

// declarer tableu vide d un certain type
int tableauEntier[] = new int[6];

// tableau 2D
int tab [][] = {{1,2},{4,5}};

// longeur d un tableau
tab.lenght

// parcour le tableau
for(String str : tab)	// for (type_du_tab variable : nom_du_tab)


// methode sur chaine : majuscule , minucule, longeur
chaine.toLowerCase()
chaine.toUpperCase()
chaine.length()
chaine.charAt(4) // retourn char a l indice 4 de la chaine
chaine.substring(3,13)  // extrait un string de la position 3 a 13
n = chaine.indexOf('t')  // retourn un int qui est l indice du char 't' ou d un string dans la chaine en partant du debut
n = mot.lastIndexOf('t');  // pareil mais partant de la fin


// test l egaliter entre 2 chaines
if (str1.equals(str2))
// l inegaliter
if (!str1.equals(str2))


// methode math
//Retourne un nombre aléatoire compris entre 0 et 1, comme 0.0001385746329371058
double X = 0.0;
X = Math.random();

double sin = Math.sin(120);     //La fonction sinus
double cos = Math.cos(120);     //La fonction cosinus
double tan = Math.tan(120);     //La fonction tangente
double abs = Math.abs(-120.25); //La fonction valeur absolue (retourne le nombre sans le signe)

double d = 2;
double exp = Math.pow(d, 2);    //La fonction exposant ; ==> d**2


/* 3 type de methodes :
1) constructeur ; renvoit rien : void
2) accesseurs ; renvoit type primitif ex: int,double...
3) instance ; renvoit Objet ex: String */


// cree sa propre methode instance
public static double arrondi(double A, int B) {
  return (double) ( (int) (A * Math.pow(10, B) + .5)) / Math.pow(10, B);
}

// methode definit en dehors de la class
public void nomDeLaMethode ()
// ou methode static 
static void parcourirTableau(String[] tab) {
    for(String str : tab)
	System.out.println(str);
}
// surcharge de methode ; meme nom mais parametre different : type ; nb d arguments           
static void parcourirTableau(int[] tab)
static void parcourirTableau(String[][] tab,int i)


// cree intance de la classe String()
String str = new String("intance de la classe String");


// cree class
public class Ville {
	private String nomVille;  // variable d instance 
}
// cree constructeur default ; meme nom pr le constructeur que la classe 
public Ville () {
	nomVille="Inconu";
}
// cree un Objet (dans le main)
Ville maVille = new Ville ();  // nom de la class ; nom de mon objet ; constructeur new ; le nom de mon contructeur

	
// accesseur getter 
public String getNomVille (){
	return nomVille;
}
// mutateur setter 
public void setNomVille (String nomVille){
	this.nomVille=nomVille;
}se


// this fait refrence a l objet courrant ; a l interieur d un objet designe var ou methode
this.nomVille=nomVille;


// appeler un constructeur dans un autre constructeur
public Ville (String nonPaii) {
	nomPays = nomPaii ;
	this();  // appelle le constructeur ville
}


// variable de class => une seul var pour  ; cree compteur commun 
private static int num ;
public static int compteur = 1; 
//dans la class du constructeur :
this.num=compteur++;
public static int getNum () {  // getter doit etre declarer static car var static ; donc c est une methode de class
	return num;
}



/*#############################*/
/*                             */
/*                             */
/*         HERITAGE            */
/*                             */
/*                             */
/*#############################*/

// cree class
public class Ville {
	protected String nomVille;  // var acceseible par les sous class
// heritage ; Capital herite de ville ; Capital ne peut heriter que de 1 seul class mere
public class Capital extends Ville () {
	private String monument ; // atribut de la class qui diferencie Capital de Ville
	public Capital(String nom, int hab, String pays, String monument){
		super(nom, hab, pays);  // appelle le constructeur de la class mere avec les parametres passer
		this.monument="inconu";  // pour faire sa doit declarer protected devant la var 
	}	
}

// redefinit methode dans la class fille
@Override  // controle si la signature est la meme que dans la class mere
public String decrisToi() {  // signature de la methode
    return super.decrisToi()+" le monument : "+this.monument;  // supper.decristoi() appelle la methode de la class mere
}                                                              //  a la quele on ajoute des String



/*#############################*/
/*                             */
/*                             */
/*        POLYMORPHISME        */
/*                             */
/*                             */
/*#############################*/

// on fait un traitement sur un objet sans connaitre son type
// covariance des variables : objet de type Ville peut contenir un objet de type Capitale

// methode toString() : affiche l etat de l objet ; dans chaque fille ajoute code pour toString
public String toString(){
  return super.toString() + "\n \t ==>>" + this.monument + " en est un monument";
}
// appelle toString : previlegier 2eme methodes
System.out.println(ville); 
System.out.println(ville.toString() );


//test si capitale est de type ville 
cap instanceof (Ville); // true


// transtypage : ((Ville)v) on transtype la reference v (de type Objet) et Ville
System.out.println(((Ville)v).decrisToi()+"\n");

// methode de hashcode () : code Entier associer a un object ; redefeni aussi equals ()
// depuis java 7 propose methode de calcul simple
public int hashCode() {
  return Objects.hash(categorie, nbreHabitants, nomPays, nomVille);
}

// methode equal () : savoir si 2 objet sont egaux= meme atribut et meme contenut
public boolean equals(Object obj) {
    // ...
}


// methode clone () : clone calss et sous class
// pas vus sur opr
protected Object clone() throws CloneNotSupportedException {
    return super.clone();
}

// methode signe final ne peux pas être surchargée
public final int maMethode(){
}


//==============================================

// package : com.exo1 => en miniscule et tj par un com,fr,... com.package_ => metre le _ pour utiliser des mots deja utiliser par java
// public => la porter de la class est definit endehors du package
public class A {
}
// porter par default = juste le package

// dans un autre package doit faire un impot
import com.exo2;


/*#############################*/
/*                             */
/*                             */
/*         ABSTACT             */
/*                             */
/*                             */
/*#############################*/

// abstract => rend une methode inutile dans la class mere mais utile dans class fille
// si methode abstract alors la class est aussi abstract !!
public abstract class Animal {
    abstract void manger ();  // methode abstrac pas de corp
    protected void boire(){  // peux avoir des methode non abstract
        System.out.println("Je bois de l'eau !");
    }
}

// instancier un objet
Animal loup = new Loup();

// retourne le nom du package + nom de la class ex: com.thomas.Loup
this.getClass();



/*#############################*/
/*                             */
/*                             */
/*         INTERFACE           */
/*                             */
/*                             */
/*#############################*/

// cree une interface avec des methode abstrac, pas bessoin du mot abstarct devant les methode car une interface est par default abstract
public interface I{ 
  public void methode(); 
}

//  pour que la class X utilise une interface : implements I
public class Chien extends Y implements I{
    // ... constructeur ...
  public void methode(){
    // methode des interface doivent etre redefinit !
}

// utiliser methode de l interface
Chien c = new Chien();
c.methode();

// utiliser polymorphisme de l interface
I i = new Chien();
i.methode();


// ========> java 8

//interface plus abstrac a 100% , contien : methode static , une def par default d une methode

public interface Reproduction {
// methode static
    public static void description() {
        System.out.println("Méthode statique dans une interface");
    }
}
// rajoute 1 niveau d implementation suplemenatire : interface Pondre est la fille de l interface Reproduction
public interface Pondre extends Reproduction {
// redef methode description
    public static void description() {
// appelle l ancienne methode 
        Reproduction.description();
        System.out.println("Redéfinie dans Pondre.java");
    }   
}

public interface Pondre extends Reproduction {
    public static void description() {
        Reproduction.description();
        System.out.println("Redéfinie dans Pondre.java");
    }
// methode par default pour l interface Reproduction    
    default void reproduire() {
        System.out.println("Je ponds des oeufs !");
    }   
}
// appelle la methode par default car reproduire n exite pas dans Reproduction
Pondre.super.reproduire();



/*#############################*/
/*                             */
/*                             */
/*         EXCEPTION           */
/*                             */
/*                             */
/*#############################*/

// il y a 2 type d exception
//   1} RuntimeException : ( ArithmeticException ; IllegalArgumentException ; IndexOutOfBoundsException ; NullPointerException )
//        ne sont pas recuperer, on doit les anticiper en codant
//   2} IOException , recuperer avec des try catch

// pour debuger 
try {
System.out.println(" =>" + (1/0));
} catch (ClassCastException e) {  // toute la classe des exceptions
e.printStackTrace();  // idique ou il y a eu l execption
}
finally{
System.out.println("action faite systématiquement");
}


// cree une exception :
// cree une nouvelle class pour l exception
public class NbHabException extends Exception {
    public NbHabException () {
        System.out.println("nb habitant negatif"); 
    }
    public NbHabException (nb) {
        System.out.println("nb habitant negatif ==> "+nb); 
    }
    public NbHabException (String message) {
        super(message); 
    }
}
// dans la class Ville on modifie le constructeur avec : throws NbHabException , throws => relever exception 
public Ville (String nomVille , String nomPays , int nbHabitant) throws NbHabException,NomVilleException {
    if (nbHabitant<0) {
        throw new NbHabException(nbHabitant); // instacie la class de l execption
        throw new NbHabException("MSG D ERREURRRRRRRR"); // ou pour utiliser dans le catch : getMessage() qui renvoie le string
    }
    else { ... }

// dans le main...
// cree obj ville2 avant le bloc try sinon pb car la var ne serai connu que dans le bloc try       
Ville ville2 = null;
try {
    ville2 = new Ville("marseil","france",-10);
} catch (NbHabException e | NomVilleException e) { 
    System.out.println(e.getMessage())
} // recupere l exeption      


/*#############################*/
/*                             */
/*                             */
/*        GENERICITER          */
/*                             */
/*                             */
/*#############################*/

public class Solo<T> {
  private T valeur; //Variable d'instance

  public Solo(){ //Constructeur par défaut
    this.valeur = null;
  }
  public Solo(T val){ //Constructeur avec paramètre inconnu pour l'instant
    this.valeur = val;
  }
  public void setValeur(T val){ //Définit la valeur avec le paramètre
    this.valeur = val;
  }
  public T getValeur(){ //Retourne la valeur déjà « castée » par la signature de la méthode !
    return this.valeur;
  }       
}

// example creation class
Solo<Integer> val = new Solo<Integer>();
Solo<String> valS = new Solo<String>("TOTOTOTO");
Solo<Float> valF = new Solo<Float>(12.2f);
Solo<Double> valD = new Solo<Double>(12.202568);  
// type primitif utiliser pr classe envelope (classe wrapper)

// autoboking transforme type primitif en classe wrapper
double d = new Double(12.2586);  //<=> double d = 12.2586
Double d = 12.0;

//genericiter sur 2 param
public class Duo<T, S> {        
  public Duo(T val1, S val2){ //Constructeur avec paramètres
    this.valeur1 = val1;
    this.valeur2 = val2;
  }
// comme pr 1 param       
}
// creeation 
Duo<String, Boolean> dual = new Duo<String, Boolean>("toto", true);


// genericiter et collection
List<String> listeString= new ArrayList<String>();
List<Float> listeFloat = new ArrayList<Float>();


/*#############################*/
/*                             */
/*  heritage et genericiter    */
/*                             */
/*#############################*/

// wildcard = ? ; on peut utiliser n impote quel type d objet
ArrayList<?> list;

//List n'acceptant que des instances de Voiture ou de ses sous-classes
List<? extends Voiture> listVoitureSP = new ArrayList<VoitureSansPermis>();  
// /!\ bloquer lecture seule

//'? extends MaClasse' autorise toutes les collections de classes ayant pour supertype MaClasse
//Avec cette méthode, on accepte aussi bien les collections de Voiture que les collection de VoitureSansPermis
static void affiche(List<? extends Voiture> list){
  for(Voiture v : list)
    System.out.print(v.toString());
}

//'? super MaClasse' autorise toutes les collections de classes ayant pour type MaClasse et tous ses supertypes
//Avec cette méthode, on accepte aussi bien les collections de Voiture que les collections d'Object : superclasse de toutes les classes
static void affiche(List<? super Voiture> list){
  for(Object v : list)
    System.out.print(v.toString());
}


/*#############################*/
/*                             */
/*       classe anonyme        */
/*   interface fonctionnelle   */
/*          lambda             */
/*    reference de methode     */
/*                             */
/*#############################*/

// classe anonyme 
pers.setSoin(new Operation());
//Utilisation d'une classe anonyme
pers.setSoin(new Soin() {
    public void soigne() {
        System.out.println("Je soigne avec une classe anonyme ! ");
    }       
  }
);


// interface fonctionnelle
@FunctionalInterface // doit declarer
public interface Soin {
    public void soigne();
// methode default dans inteface fonctionnelle
    public default String toto(int i){
        return "ok";
    };
}


// lambda 
// () -> faire une action;
// (param1, param2) -> faire une action;
// (param1, param2, param3) -> {traitements ; retourne une valeur;} ;
(a, b) -> {System.out.println("coucou"); return a + b;};


// EX:

// interface fonctionnelle
@FunctionalInterface
public interface Dialoguer {
    public void parler(String question);
}

// classe anonyme 
Dialoguer d = new Dialoguer() {
    public void parler(String question) {
        System.out.println("Tu as dis : " + question);  
    }
};
d.parler("Bonjour");

// lambda 
Dialoguer d = (s) -> System.out.println("Tu as dis : " + s);
d.parler("Bonjour");


/*#############################*/
/*                             */
/*                             */
/*         COLLECTION          */
/*                             */
/*                             */
/*#############################*/


////////////////
//    LIST    //
////////////////

// collection>list ; stocker valeur sans conditions pr stocker, accept toute les valeur meme null
// tableau extensible a vonlonter, recuprer element via indice ; ex: Vector, LinkedList, ArrayList


// LinkedList = liste chainee ; utile si beaucoup insert delete dans la list ; tres volumineux
import java.util.LinkedList;
import java.util.List;
import java.util.ListIterator;
// 1er [null,element,element suivant] ; [element precedent,element,element suivant] ; ...

List l = new LinkedList();
l.add(12);

// parcourir la liste avec l interface Iterator qui est implementer
ListIterator li = l.listIterator();
while(li.hasNext())
    System.out.println(li.next());


// ArrayList ; pas limite taille, tout object meme null, rapide en lecture, lente pr insert et delete
import java.util.ArrayList;

ArrayList al = new ArrayList();
al.add(12);

// methode fornie par arraylist
add() //permet d'ajouter un élément ;
get(int index) //retourne l'élément à l'indice demandé ;
remove(int index) //efface l'entrée à l'indice demandé ;
isEmpty() //renvoie « vrai » si l'objet est vide ;
removeAll() //efface tout le contenu de l'objet ;
contains(Object element) //retourne « vrai » si l'élément passé en paramètre est dans l'ArrayList.


////////////////
//    SET     //
////////////////

// collection>set ; pas de doublon , null mais que 1 fois , pr beacoup de donnee
// ex objet de set : HashSet, TreeSet, LinkedHashSet , sortedSet pr stoker selon un ordre 


// HashSet ; le plus perfomant en temps d acces , utilise un iterator
import java.util.HashSet;
import java.util.Iterator;

HashSet hs = new HashSet();
hs.add("toto");

// extraire un tableau d objet
Object[] obj = hs.toArray();
// parcout de ce tableau
for(Object o : obj)
    System.out.println(o);

// methode fornie par HashSet
add() //ajoute un élément ;
contains(Object value) //retourne « vrai » si l'objet contient value ;
isEmpty() //retourne « vrai » si l'objet est vide ;
iterator() //renvoie un objet de type Iterator ;
remove(Object o) //retire l'objet o de la collection ;
toArray() //retourne un tableau d'Object.


////////////////
//    MAP     //
////////////////

import java.util.Enumeration;
import java.util.Hashtable;
// map> ; cle-valeur ; objet de type Hashtable, HashMap, TreeMap, WeakHashMap ; pb taille des donner a stoker


// Hashtable = table de hachage ; pas de valeur = null ; est Thread Safe
// parcourt cet objet grâce aux clés qu'il contient en recourant à la classe Enumeration

Hashtable ht = new Hashtable();
ht.put(1, "printemps");

// parcourir hashtable
Enumeration e = ht.elements();
while(e.hasMoreElements())
    System.out.println(e.nextElement());

// methode fornie par hashtable
isEmpty() //retourne « vrai » si l'objet est vide ;
contains(Object value) //retourne « vrai » si la valeur est présente. Identique à containsValue(Object value) ;
containsKey(Object key) //retourne « vrai » si la clé passée en paramètre est présente dans la Hashtable ;
put(Object key, Object value) //ajoute le couple key - value dans l'objet ;
elements() //retourne une énumération des éléments de l'objet ;
keys() //retourne la liste des clés sous forme d'énumération.


// HashMap ; varie peux de Hashtable sauf: accept valeur null ; n est pas Thread Safe


/*#####################################################################################*/
/*                                                                                     */
/*                                                                                     */
/*          EXAMPLE : project Java gestion seance                                      */
/*                                                                                     */
/*                                                                                     */
/*#####################################################################################*/

// ajouter un comparateur interne
public class Spectacle {
    protected Set<Seance> lesSeances;
    public Spectacle (String titre){
        interprete = new TreeSet<>();
        lesSeances = new TreeSet<Seance>(new Comparator<Seance>() {
            @Override
            public int compare(Seance s1, Seance s2) {
                Creneau s1Creneau = s1.getCreneau();
                Creneau s2Creneau = s2.getCreneau();
                return s1Creneau.compareTo(s2Creneau);
            }
        });
    }
}
// redefini compareTo dans Seance
public class Seance implements Comparable<Seance> {
  @Override
  public int compareTo(Seance seance) {
      return this.getCreneau().compareTo(seance.getCreneau());
  }
}
// ducoup redefini compareTo dans Creneau
public class Creneau implements Comparable<Creneau> {
  @Override
  public int compareTo(Creneau creneau) {
      if (this.equals(creneau)){
          return 0;
      }
      else if (this.getNumJour() < creneau.getNumJour()){ //this avant creneau
          return -1;
      }
      else {
          return this.getHoraireDebut().compareTo(creneau.getHoraireDebut());
      }
  }
}
// ducoup redefini compareTo dans Horaire
public class Horaire implements Comparable<Horaire>{
  @Override
  public int compareTo(Horaire horaire) {
      int h = horaire.getHeures();
      int m = horaire.getMinutes();
      if (this.equals(horaire)){
          return 0;
      }
      else {
          if (this.heures == h){
              if (this.minutes < m){
                  return -1; //this plus petit que horaire
              }
              else return 1;
          }
          if (this.heures < h){
              return -1; //this plus petit que horaire
          }
          else {
              return 1; // this plus grand que horaire
          }
      }
  }
}

// utilisation d un TreeMap avec son iterator
public class GestionProgrammationSemaine implements IProgrammationSemaine {
  private SortedMap<Integer,Salle> lesSalle;
  public GestionProgrammationSemaine (){
      lesSalle = new TreeMap<>();
      Salle s1 = new Salle("salle 1",100, 12.43);
      lesSalle.put(s1.getNum(),s1);
  }
// exemple iterateur sur un TreeMap
  public String lesSallesFilm() {
    String listSalleF="";
    Set lesSalleF = lesSalle.keySet();
    Iterator<Integer> it = lesSalleF.iterator();
    while (it.hasNext()){
        Integer numSalleF = it.next();
        Salle salleF = lesSalle.get(numSalleF);
        listSalleF+=salleF.affichierSalle();
    }
    return listSalleF;
  }
}

// iterer sur un ensemble dans un sortedMap -> for...
public class Salle {
  private SortedMap<Integer, Set<Creneau> > lesCreneauxOccupes;
  public Salle () {
    this.lesCreneauxOccupes=new TreeMap< Integer, Set<Creneau>>();
  }
  public boolean estDisponible (Creneau c){
    if (lesCreneauxOccupes.containsKey(c.getNumJour())) {
      Horaire cHeureDeb = c.getHoraireDebut();
      Horaire cHeureFin = c.getHoraireFin();

      Set<Creneau> lesCreneau = lesCreneauxOccupes.get(c.getNumJour());
      Horaire heureFinAncienCreneau = new Horaire(0, 0); // instancie & heure de la journer 00:00
      boolean estDisponible = false;
      for (Creneau unCreneau: lesCreneau){
        // ...
      }
    }
  }
}

// ajouter un creneau : recupere l ensemble des creneaux puis ajoute le new creneau et remplace dans lesCreneauOcuper
public boolean ajouterCreneau (Creneau c){
  if (lesCreneauxOccupes.containsKey(c.getNumJour())) {
    if ( estDisponible(c)){ //test si la salle est dispo
      Set ensembleCreneau = lesCreneauxOccupes.get(c.getNumJour());
      Set ancienEnsembleCreneau=ensembleCreneau;
      ensembleCreneau.add(c);
      return lesCreneauxOccupes.replace(c.getNumJour(),ancienEnsembleCreneau,ensembleCreneau);
    }
    else {
      return false;
    }
  }
  else { // aucun creneau a ce jour
    Set<Creneau> newEnsembleCreneau = new TreeSet<>() ;
    newEnsembleCreneau.add(c);
    lesCreneauxOccupes.put(c.getNumJour(),newEnsembleCreneau);
    return true;
  }
}
/*#####################################################################################*/
/*     FIN EXAMPLE                                                                     */
/*#####################################################################################*/


/*#############################*/
/*                             */
/*                             */
/*         JAVA DOC            */
/*                             */
/*                             */
/*#############################*/

// generer doc (InteliJ) : tool > generate JavaDoc

/** 
	* @param  
	* @return  doivent toujour etre indiquer (sauf methode sans parametre ; methode void)
	*/

/**
    *premiere ligne de la doc
	*2eme ligne
    * metre à jour le niveau du membre.
    * @param level  Le nouveau level du membre.
    */
    protected void setLevel(SDZLevel level) {
        this.level = level;
    }
/**
    * Retourne le level du zéro.
    * @return Une instance de SDZLevel, qui correspond à niveau du membre sur SDZ.
    */
    public SDZLevel getLevel() {
        return level;
    }
/**
    * Retourne l'adresse du profil du Zero.
    * @return L'URL du profil du Zero, générée à partir de l'id du Zero.
    * @throws MalformedURLException  Si jamais l'url est mal formée. 
    */
    public URL getURLProfil() throws MalformedURLException{
        URL url = new URL("http://www.siteduzero.com/membres-294-"+id+".html");
        return url;
    }
/**
    * Le "level" du Zéro. Ce "level" peut être modifié.
    * 
    * @see SDZLevel  // permet de faire reference a une autre methode, class, ...
    */
    private SDZLevel level;

/**
	* QUE POUR DES CLASS PAS DES METHODES
	* @author thomas
	* @version 3.0
	* @since 3.0  // c est le num de version de la class
	* @deprecated depuis Java 1.4, remplacé par getListeAmis() // depuis java 7 doit utilise getListeAmis a la place de getVectorAmis()
	*/
    protected Vector<Zero> getVectorAmis(){
        Vector<Zero> vector = new Vector<Zero>();
        for (Zero z : listeAmis){
            vector.add(z);
        }
        return vector;
    }
}


/*#############################*/
/*                             */
/*                             */
/*          FICHIER            */
/*                             */
/*                             */
/*#############################*/

//Package à importer afin d'utiliser l'objet File
import java.io.File;

//Création de l'objet File
File f = new File("test.txt");

f.getAbsolutePath(); // Chemin absolu du fichier 
f.getName(); // Nom du fichier
f.exists(); // Est-ce qu'il existe ? 
f.isDirectory(); // Est-ce un répertoire ?
f.isFile(); // Est-ce un fichier ?
f.listRoots(); // pr avoir liste des lecteur a la racine

// /!\ tres peux utile car utilise les byte pr se deplacer /!\
import java.io.FileInputStream; // lecture
import java.io.FileOutputStream; // ecriture

// copier un fichier txt :
// Nous déclarons nos objets en dehors du bloc try/catch
FileInputStream fis = null;
FileOutputStream fos = null;
try {
  // On instancie nos objets 
  fis = new FileInputStream(new File("test.txt"));   // fis va lire le fichier
  fos = new FileOutputStream(new File("test2.txt"));   // fos va écrire dans le nouveau fichier si il n existe pas il sera cree
  while (fis.read(x) ) { // x est un parametre de lecture
    // On écrit dans notre deuxième fichier avec l'objet adéquat
    fos.write(x);
  }
} catch (FileNotFoundException e) {
  // Cette exception est levée si l'objet FileInputStream ne trouve aucun fichier
  e.printStackTrace();
} catch (IOException e) {
  // Celle-ci se produit lors d'une erreur d'écriture ou de lecture
  e.printStackTrace();
}
// On ferme nos flux de données dans un bloc finally pour s'assurer que ces instructions seront exécutées dans tous les cas même si une exception est levée !
try {
  if (fis != null)
    fis.close();
} catch (IOException e) {
  e.printStackTrace();
}

// /!\ pas fini le cours opr /!\

/*#############################*/
/*                             */
/*                             */
/*         IHM ; GUI           */
/*                             */
/*                             */
/*#############################*/
// IHM = Interfaces Homme Machine ; GUI = Graphical User Interfaces

import javax.swing.*;
javax.swing // LightWeight ; nous travaillerons uniquement avec des composants swing
java.awt // HeavyWeight ; Nous n'utiliserons pas de composants awt; en revanche, des objets issus du package awt seront utilisés afin d'interagir et de communiquer avec les composant swing


// instancier un obj de type JFrame
JFrame fenetre = new JFrame();

//Définit un titre pour notre fenêtre
fenetre.setTitle("titre de la fenetre");
//Définit sa taille : 400 pixels de large et 100 pixels de haut
fenetre.setSize(400, 100);
//Nous demandons maintenant à notre objet de se positionner au centre
fenetre.setLocationRelativeTo(null);
//Termine le processus lorsqu'on clique sur la croix rouge
fenetre.setDefaultCloseOperation(JFrame.EXIT_ON_CLOSE);
// rendre visible la fenetre
fenetre.setVisible(true);

// pr placer la fenetre ; O en haut a gauche
fenetre.setLocation(int x, int y);
// redimetioner la fenetre ; false empeche de redimentioner
fenetre.setResizable(boolean b);
// garder au premier plan ; true garde au premier plan
fenetre.setAlwaysOnTop(boolean b);

// Composition d une fenetre du plus profond vers nous : https://user.oc-static.com/files/396001_397000/396288.png
// le RootPane(en vert), le conteneur principal qui contient les autres composants ;
// le LayeredPane(en violet), qui forme juste un panneau composé du conteneur global et de la barre de menu (MenuBar) ;
// la MenuBar(en orange), la barre de menu, quand il y en a une ;
// le content pane (en rose) : c'est dans celui-ci que nous placerons nos composants ;
// le GlassPane(en transparence), couche utilisée pour intercepter les actions de l'utilisateur avant qu'elles ne parviennent aux composants.


// utilisation de JPanel
import javax.swing.JFrame;
import javax.swing.JPanel;

//Instanciation d'un objet JPanel au meme endroit que instancie la fenetre
JPanel pan = new JPanel();
//Définition de sa couleur de fond
pan.setBackground(Color.ORANGE);
//On prévient notre JFrame que notre JPanel sera son content pane
this.setContentPane(pan);
// ou
this.setContentPane(new Panneau());

import java.awt.Graphics;
public class Panneau extends JPanel { 
  public void paintComponent(Graphics g){ // des que l on modifie la fenetre on appelle cette methode
    // obj g avec fonction pr desiner qqch
  }               
}

int largeurFenetre = this.getWidth(); 
int hauteurFenetre = this.getHeight();

// dessiner un rond plein : fillOval(coo x, coo y, largeur, hauteur)
g.fillOval(20, 20, 75, 75);
// dessiner le perimetrer un rond 
g.drawOval(20, 20, 75, 75);

//dessiner un rectangle ; x1, y1, width, height
g.drawRect(10, 10, 50, 60);

// dessiner un rectangle arrondi : x1, y1, width, height, arcWidth, arcHeight
g.drawRoundRect(10, 10, 30, 50, 10, 10);

// dessiner une ligne ; x1, y1, x2, y2
g.drawLine(0, 0, this.getWidth(), this.getHeight()); // digonal

// dessiner un polygone : drawPolygon(int[] x, int[] y, int nbrePoints);
int x[] = {20, 30, 50, 60, 60, 50, 30, 20};
int y[] = {30, 20, 20, 30, 50, 60, 60, 50};
g.drawPolygon(x, y, 8);
// dessine une ligne entre chaque pt
g.drawPolyline(x, y, 8);

// dessine du text : txt, coo x, coo y
g.drawString(" mon txt ", 10, 20);

// changer la couleur du text
Font font = new Font("Courier", Font.BOLD, 20);
g.setFont(font);
g.setColor(Color.red);

// afficher une image taille original
Image img = ImageIO.read(new File("images.jpg"));
g.drawImage(img, 0, 0, this);

// afficher image qui s adapte a la taille de la fenetre
g.drawImage(Image img, int x, int y, int width, int height, Observer obs)


// Oject grafique 2D pr faire degrader
// faire un cast de g et g2D
Graphics2D g2d = (Graphics2D)g;
// cree un nouveau degrader : true pr que degrader ce repete sur tote la fenetre
// GradientPaint(coo x debut, coo y debut, primier color, coo x debut 2eme color, coo y debut 2eme color, Color.cyan, true);         
GradientPaint gp = new GradientPaint(0, 0, Color.RED, 0, 50, Color.cyan, true);               
g2d.setPaint(gp);
g2d.fillRect(0, 0, this.getWidth(), this.getHeight());      











/*#############################*/
/*                             */
/*                             */
/*            RMI              */
/*                             */
/*                             */
/*#############################*/

/* Architecture

    -> src
      -> main
        -> java
          -> client
            - Client.java
          -> interface
            - Hello.java
          -> server
            - HelloImpl.java
            - HelloLaunch.java
*/

//////////////////////
//    interface     //  1} décrit l'interface et ses services
//////////////////////
public interface Hello extends Remote {
    // interface Hello etend Remote et chaque methode releve RemoteException
    String hello() throws RemoteException;
}


////////////////////////
//    inmplemente     //  2} inmplemente l'interface et les methodes
////////////////////////
// implements Serializable pr transmetre des obj
public class HelloImpl implements Hello, Serializable{
    @Override
    public String hello() throws RemoteException {
        return "Hello world";
    }
}


////////////////////
//    Lanceur     //  3} le lanceur permet de publier le service
////////////////////
public class HelloLaunch {
    public static void main(String[] args) {

        // cree instance de hello
        Hello h = new HelloImpl();
        try{
            // 1) Fabrique le STUB ; preparer la classe pr l appel distant ; avec caste de l'interface
            Hello stub = (Hello)UnicastRemoteObject.exportObject(h,0);

            // 2) se co a annuaire dans le localhost
            Registry registry = LocateRegistry.getRegistry("localhost");

            // 3) Publie le STUB ; publier service sous le nom : HelloService
            registry.bind("HelloService",stub); // avec bind on s'inscrit dans le registre
            System.out.println("HelloService publié....");

// initialiser l annuaire : 
//      1) lancer le lanceur 
//      2) init rmiregistry dans ubuntu : metre le chemin complet vers le target/classes/ du projet
//      commande line  FILE: rmiregistry -J-Djava.rmi.server.codebase=file:///<path_to_project>/target/classes///
//      commande line  URL: rmiregistry -J-Djava.rmi.server.codebase=http://<url_serveur_distant>

            // 4) attendre msg client
            new Scanner(System.in).nextLine();
            // 5) arreter proprement le service
            System.out.println("FIN....");
            registry.unbind("HelloService"); // cela depublie le services
            System.exit(0); // fin du prog

        } catch (RemoteException e){
            e.printStackTrace(); // excption du Registry
        } catch (AlreadyBoundException e) {
            e.printStackTrace(); // excption du bind()
        } catch (NotBoundException e) {
            e.printStackTrace(); // excption de reg.unbind()
        }
    }
}


///////////////////
//    Client     //  4} le client permet de acceder au service
///////////////////
public class Client {
    public static void main(String[] args) {
        try{
            // on se connect a l'annuaire, hote = localhost
            Registry registry = LocateRegistry.getRegistry("localhost");

            // on cherche le service portant le nom : HelloService, on le caste en type de l'interface
            Hello h = (Hello) registry.lookup("HelloService");

            // affiche le resultat de l appel au server
            String result = h.hello();
            System.out.println(result);

        } catch (RemoteException e){
            e.printStackTrace(); // excption du Registry
        } catch (NotBoundException e) {
            e.printStackTrace(); //  excption reg.lookup
        }
    }
}



/*#############################*/
/*                             */
/*                             */
/*            JDBC              */
/*                             */
/*                             */
/*#############################*/

/* Architecture

    -> src
      -> main
        -> java
          -> client
            - Client.java
            - ConnexionBD.java
          -> modele
            - FacadeMessagerieImpl.java
*/


////////////////////////
//    ConnexionBD     //  1} cree une connecxion unique static 
////////////////////////

public class ConnexionBD {

    private static Connection connecxion=null; // on l'initialise a null
    /**
     * Si premier fois que appele cette methode alors cree la co avec DriverManager.getConnection
     * Sinon retun juste la co
     * @return la connecxion de la bdd
     */
    public static Connection getConnecxion(){
        if(connecxion == null){
            try {
                connecxion = DriverManager.getConnection("jdbc:mysql://dbhost:3306/bd_o2180812","o2180812","thomas");
            } catch (SQLException throwables) {
                throwables.printStackTrace();
            }
        }
        return connecxion;
    }

    public ConnexionBD() {
        getConnecxion();
    }
}


///////////////////
//    xxImpl     //  2} Dans le fic Impl on ecrit les requettes 
///////////////////

// tj dans un block try/catch
try {

    // Select
    Statement s = ConnexionBD.getConnecxion().createStatement(); // recuprer la co
    ResultSet rs =s.executeQuery("SELECT * FROM utilisateurs WHERE nom=\""+pseudo+"\";");
    if (rs.next()) {
        return new Utilisateur(rs.getString("nom"),rs.getString("mdp"));
    }

    // Insert en prepar
    PreparedStatement prep_st =  ConnexionBD.getConnecxion().prepareStatement("INSERT INTO utilisateurs VALUES (?,?);");
    prep_st.setString(1,nom);
    prep_st.setString(2,mdp);
    prep_st.executeUpdate();

    // Delete
    Statement s1 = ConnexionBD.getConnecxion().createStatement();
    int nbr = s1.executeUpdate("DELETE FROM connecte WHERE nom=\""+nom+"\";");
    System.out.println("user deco");
    if(nbr==0){ // sa veux dire que il c'est rien passer dans le delete
        throw new UtilisateurNonConnecteException();
    }

    // Traitement a rep x fois
    prep_st = ConnexionBD.getConnecxion().prepareStatement("SELECTE * FROM message WHERE id_d=?;");
    prep_st.setInt(1,id_d);
    ResultSet rs = prep_st.executeQuery();
    while (rs.next()){
        /*Utilisateur user = getUtilisateurParNom(rs.getString("user"));*/ // on cree 50 fois le meme user....
        String envoyer_str = rs.getString("envoyer");
        String msg = rs.getString("msg");
        Utilisateur envoyer = envoyer_str.equals(u1.getNom()) ? u1 : u2; // eviter d avoir 50 fois le meme utilisateur
        Message m = new Message(envoyer,rs.getString("msg"));
        d.ajouterMessage(m);
    }

} catch (SQLException throwables) {
    throwables.printStackTrace();
}









///////////////////
//    Client     //  3} le client utilise la facade
///////////////////

public class Client {
    public static void main(String[] args) throws <...> {
        FacadeMessagerieImpl facade = new FacadeMessagerieImpl();

        facade.connexion("thomas","thomas");
        System.out.println(facade.lesConnecte());

        /*
                pr recuperer la clef=id gener en auto increment
         */
        /*try {
            Statement st = ConnexionBD.getConnecxion().createStatement();
            st.executeUpdate("INSERt INTO test(valeur) VALUES(1);",Statement.RETURN_GENERATED_KEYS); // recuperer l'auto increment
            ResultSet rt = st.getGeneratedKeys(); // return l'auto increment cree
        } catch (SQLException throwables) {
            throwables.printStackTrace();
        }*/

    }
}


