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























