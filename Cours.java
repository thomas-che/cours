// code minimum pour un fichier java
public class Cours {
    public static void main(String[] arg) {
        System.out.println("voilla le cours de java");
    }
}
// compiler fichier java : ~/Documents/fichier_java$ javac nom_fichier.java
// executer fichier class: ~/Documents/fichier_java$ java nom_fichier


/* ligne comande a lancer pour lancer : 1) aller dans le rep du project ; 2) executer
~/Documents/java_fichier/Openclassrooms_java$
java -jar out/artifacts/Openclassrooms_java_jar/Openclassrooms_java.jar */


// double pr les nb decimaux
double x = 2.1 ;


// type objet commence par une majuscule : String
// type primitif non : int


// cree nouvelle variable : type nomVariable = new type(valeurVariable)
String varTexte = new String("ceci est du texte") ;
// pas besoin de new et des () racoursi avec le string
String varTexte = "ceci est du texte" ;


// varTexte.(tabulation) permet de voir dans jshell tout ce que l on peux faire


&& // ET logique
|| // OU logique
!= // different 


// switch si pas de break apres le case 1 alors fait le case 2 
switch (nbMenu) {
    case 1:
        System.out.println("Vous avez choisi comme menu : poulet");
        break;
    case 2:
        System.out.println("Vous avez choisi comme menu : boeuf");
        break;;
    default:
    	System.out.println("Vous n'avez pas choisi de menu parmi les choix proposés");
        break;
}


//test Given_When_Then
//code dans Class OrderTest
@Test
    public void Given_Chicken_When_DisplayMenuSelected_Then_DisplayChickenSentence() {
        order.displaySelectedMenu(1);
        assertEquals("Vous avez choisi comme menu : poulet\n", outContent.toString().replace("\r\n", "\n"));
    }


public static void main(String[] args) {
    Order order = new Order();				//
    order.displayAvailableMenu();           //methode display... dans la class order
    Scanner sc = new Scanner(System.in);	//permet de recuper entrer clavier
    int nb = sc.nextInt();					//nextInt => revoie un entier
    order.displaySelectedMenu(nb);			//nb est un parametre
}










































































































































