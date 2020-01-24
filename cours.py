#!/usr/local/bin/python3.7
                                                                          
                                                                                                                                                                                                                                                                                      
type ( x ) # donne le type de x                      
help ( x ) # aide                                                                                                        
                                                                                                                                                                                                                                  
type(12)    #int integer [en] = entier   
type(1.2)   #float   flottant ; nb a virgule                         
type(4j+3)  #complex nb complex, i devien j  3+4j                                                     
/       # division    
//      # division entiere                
%       # module / reste divison entiere                          
abs(x)   # valeur absolu   abs(-55)    -> 55                                                           
int(x)   # convertion en entier    int(123.5)  -> 123                                              
float(x) #    convertion en decimal / nb a virgule    flaot(12)   -> 12.0                     
min(a,b) # a   minimum entre les valeurs                                                               
max(a,b)   # b   maximum entre les valeurs 
round(12.3456,2)    #12.35   arondie a 2 chiffres apres virgule             
fabs (-2)   # 2 fonction valeur absolu 

a,b='XY'       # a=X et b=Y 
type(len)   #v F72   .= fonction predefinit          builtin_function_or_method                                                                                                                                                                                  
#global:{ (x,12) }  ~ x=12 ; mais jamais fonctionée     

end =" " #remplace saut de ligne par un espace, mettre a la fin de print  print(nb,"*",i,"=",nb*i," ; ",end=" ")  -> 6* 1 = 6  ;  6 * 2 = 12  ;…  


#table veriter or        or      True    False                                                           
#                        True    True    True                                                            
#                        False   True    False

#table veriter and       and     True    False
#                        True    True    False
#                        False   False   False

type(True)  # bool    -> booleen                                                                  
not     # negation ; ¬ [logique]  not(True)   -> flase    not prioritaire sur and et or                   
or      # disjonction ; ou ; v [logique]              
and     # disjonction ; et ; ∧ [logique]          or prioritaire sur and                   
==  	# egal            
!=      # difference  
+= (-= ; *= ; /=)  #ingrementer la variable ; var += 1 au lieu de var = var + 1 n+=1    -> 2       
# x\      permet continuer ecrire ligne de dessous ; x\  puis entrer puis xx                      
#( xxx)      encader par (  ) ;permet continuer ecrire ligne de dessous                                                                                              

if (…) :        # if [en] = si ; si condition=(…) alors...                                                                                            
else (…) :      # else [en] = sinon                                                                                           
elif (…) :      # else + if  [en] = sinon nouvelle condition=(…)   
while true:     execute la boucle 
for y in x  a ; b ; c ; d … #pour y dans x ; ecrit les caractere 1 par 1 et 1 sur chaque ligne ; boucle for  X = "abced…" (rt ligne ) for Y in X : (rt ligne) print(Y)      voir C202    a ; b ; c ; d;e ; … ecrit les letres 1 par 1 et 1 sur chaque ligne
if y in "…"   #si y = a un caractere de " …" alors execute le if   if Y in "ace…" : (rt ligne) print(Y)   a ; c ; e ….    afiche que les valeure que peut prendre Y      
continue  #retourne dans la boucle while sans executer ligne endesous de continue        
input("xx") # xx> ?  …    input [en] = donne ; enter une donner qui sera atribuer a une var   a = int( input ("a=") )     la var a est deja un entier                                         
  

# fonction lambda = petite fonction
lambda x, y: x + y



###############################
#                             #
#                             #
#         Chaine char         #
#                             #
#                             #
###############################                                                                                           
                                                                                                    
#\t      tab                                                                                         
#\n      retour ligne                                                                                            
'xx'+'yy'  # xxyy    concatenation = adition de chaine de caractere                                                                                          
type('x')  # str string [en] = chaine de caractere                                                                                           
'abcd' [0]  # a   on affiche dans 'abcd' la posision 0                                                                                            
'abcd' [-2] # c   on affiche dans 'abcd' la posision 2 en partant de la fin   'test' [-3;-1]  es  ~[-3;-2] ; on compte : -4-3-2-1                                                                             
'abcd' [0:2]    #ab  on affiche dans 'abcd' les posision 0 à 2 (mais on ne prend pas 2) ; 2 = 2 lettres  'abcd' [0:2]    ab  ~[0;2[ ; on compte : 0123 on prend le 0 mais pas le 2                       
'abcd' [2: ]    #cd  de 2 jusqu a la fin                                                                                         
'abcd' [ :2]    #ab  de 0 à 2                                                                                            
len( 'xx')  #2   lenght [en] = longeur ; cb de caractere entre ' et ' ; les espaces compte                                                                                           
bool('xx')  #True    out True dans tous les cas                                                                                          
str(x)  #'x' tranforme en chaine de caractere    str('3+4j') ('3+4j')    out avec les ( )                                                                                

'1234'.isdecimal ()     #TRUE    test si la chaine '1234' est decimale                                                                                           
'abcd'.islower () 		#TRUE    test si la chaine 'abcd' est en minuscule                                                                                           
'1234'.count ('2')    #1   compte le nb de fois ou 2 apparet dans la chaine '1234' 'x' . count ('22')      compte le nombre de fois ou 22 appairet dans la chaine  
'abcd'.replace ( 'b' , 't' )  # atcd    reamplace tous les 'b' par 't' dans la chaine 'abcd'                                                                                            
'abcd'.split ( 'b' )  #[ 'a , 'cd' ]   decoupe la chaine 'abcd' a chaque 'b', en sort une list avec plusieur valeur
"azerty".capitalize() #  Azerty  fonc qui met la 1er lettre en capitale          
"  az erty  ".strip() #  az erty retir les espace avant et apre une chaine de caractere          
"azerty".center(8)    # azerty     cente sur 8 espaces: 1 avant et 2 apres pour faire 8 emplacement au final 

'abc {} d'.format ( 2 )  # abc 2 d remplace {} par 2 aubligatoirement un nb dans le .format(nb)    
'abc {} d'.format ( 't' ) # abc t d remplace {} par 't'     'abc {} d' . format ( 2 )   abc 2 d remplace {} par 2 aubligatoirement un nb dans le .format(nb)                                            
'a {1} bc {1} d'.format ( 'X' , 'Y'  )  #  a Y bc Y d  remplace le premier {} par le premier terme d indice 1 dans le .format soit Y , pareil pour le 2 eme {} ; 'x' indice 0 et 'y' indice 1
'=> { : 4} <='.format( 2 )   #.=>   2<=   il y a 4 espace entre => et <= mais on ajoute 2 et 2 prend la place du 4 eme espace donc il y a 3 espace puis il y a 2 ; Préciser la taille à occuper
'=> { : <4} <='.format( 2 )  #.=>2   <=   aligner a gauche les resultats ; Préciser la taille à occuper et l'alignement
'=> { : >4} <='.format( 2 )  #.=>   2<=   aligner a droite les resultats
'=> { : ^4} <='.format( 2 )  #.=> 2  <=   aligner au milieu les resultats ; si pas vraimen au milieut comme ici alors plus proche de la gauche
'=> { : _>4} <='.format( 2 ) #.=>___2<=   on remplace les espace par _ ; fonctione avec les exemple au-dessu avec du autre truc pour remplacer                                
'=> { : b} <='.format( 2 )   #.=>10<= ecrit 2 en forme binnaire
'=> { : >6.2f} <='.format( 2 ) #.=>  2.00<= ecrit 2 avec 2 chifre apres la virgule, c est .2f qui signifie 2 chifre apres la virgule ; le . compte comme un cararater donc 2 espace

# 'a'<'b'<'c'<...         lettre a < b < c <...                                                                                           
# 'A'<'a'<...     lettre en majuscule < letre minuscule A < a                                                                                         
# '5'<'A'<'a'<...     nb < A < a                                                                                          
# '£'<'5'<'A'<'a'<...     signe/simbole < nb < A < a
  

# formatage d'une adresse
adresse = """
{no_rue}, {nom_rue}
 {code_postal} {nom_ville} ({pays})
""".format(no_rue=5, nom_rue="rue des Postes", code_postal=75003, nom_ville="Paris", pays="France")
print(adresse)
#5, rue des Postes
#  75003 Paris (France)



###############################
#                             #
#                             #
#        bibliotheque         #
#                             #
#                             #
###############################                                                                                                                                                                                                  
                                                                                                                                                                                                   
from yy import xx    #   dans la biblioteque/module yy importe la fonction xx                                                                                       
from yy import*      # import toute la biblioteque/module yy ; pas conseilé trop lour                                                                                          
type(yy)    # module  module [en] <=> biblioteque                                                                                         
                                          
from matplotlib import pyplot    # bibliotheque matplotlib                                                                                                                                                           
                                                                                                    

###############################
#                             #
#           LISTE +           #
#          iterables          #
#                             #
#                             #
###############################                                                                                                  
                                                                                                    
for x in 'azerty' :     # pour x dans la chaine azerty ... ; for <identifiant> in <expression itérable> : ; lit lettre 1 par 1                                                                                  
for x in range (0,3) :      # pour x dans range, prend la position 0, execute la boucle, puis prend 1 ; 2 ; mais pas 3                                                                                        
for x in range (0,10,2) :      # 'pareil' on a ajouter un pas de 2 ; 0= debut , 10= limite exlu , 2=pas                                                                                          
for x in (0,1,2,3):     # x prend les valeur 0, puis 1, 2, 3                                                                                          
t = (x,y,z,w...) {rt line} for x in t :     # t = tuple = une suite de valeur ici (x,y,z,w...) donc x prend valeur tour a tour du tuple               
t = (x,y,z,(w,v) )      # tuple peut contenir un tuple                                                                                            
t = (x,y,z,(w,v) ) {rt line} len(t)  # 4   compte le nb de valeur, le tuple (w,v) est compte comme 1                                                                                           
t = (x,y,z,(w,v) ) {rt line} print(t[2])   # z   afiche la valeur en position 2                                                                                                                                                                                  
t = (x,y,z,(w,v) ) {rt line} a,b,c,d=t     # a=x et b=y et c=z et d=(w,v)                                                                                            
t = (x,y,z,(w,v) ) {rt line} a,*b=t     # a=x et b= [y,z,(w,v)] ; *signifi que b peut s agrandir et prendre plus que 1 valeur     
a,*b='azerty'      # a=a et b=['z','e','r','t','y'] ; b prend des veleur en str                                                                                          
b=['z','e','r','t','y'] {rt line} type(b)   #list    liste de valeur                                                                        
for indice, x in enumerate(b)       # b prend la valeur d indice 0 : z                                                                                            
break      # arrete la boucle for                                                                                            

#l = [ 'a' , 'b' , 'c' , 'd' ]                                                                                                                                                                                                  
l.append ('fin' )   #[ 'a' , 'b' , 'c' , 'd' , 'fin' ]   ajoute a la fin de la liste l la chaine 'fin'                                                                                           
l.insert ( 0 , 'debut' )    #[ 'debut' , 'a' , 'b' , 'c' , 'd' ] ajoute n importe ou la chaine 'debut' ici en position 0 de la liste l               
l.insert ( -3 , 'x' )   #[ 'a' , 'x' , 'b' , 'c' , 'd' ] ajoute 'x' en position -3 de la liste l                                                                                         
l.pop ()    #[ 'a' , 'b' , 'c' ] retir un element, par defaut le dernier de la liste l                                                                                           
l.pop (2)   #[ 'a' , 'b' , 'd' ] retir l element en position 2 (compte a partir de 0) de la liste l                                                                                          
l.remove( 'b' ) #[ 'a' , 'c' , 'd' ] retir l element 'b' de la liste l ; mais n eleve que le premier 'b' [ 'a' , 'b' , 'c' , 'd' , 'b' ] [ 'a' , 'c' , 'd' , 'b' ]   n enleve que le premier 'b'                                                                             
                                                                                               
b=['z','e','r','t','y']     #liste est modifiable ; peut remplacer le 'e' par 'F' avec : l [1] = 'F' ; structure maléables de donnée similaires                      
'azerty'       # chaine non modifiable (immuable)                                                                                            
t = (x,y,z,w...)        #tuple non modifiable ; stucture rigide et maitrisée                                                                                                
                                                                                                                                                                                                       
x = [ {rtl} [a,b,c] {rtl}  ,[d,e,f] {rtl} ]     #on a une liste de liste : liste 0 = [a,b,c] ; liste 1 = [d,e,f]                                                                                         
x[0][1] + x[1][1]   # be  on prend la valeur en indice 1 de la chaine 0 + la valeur en indice 1 de la chaine 1                                                                                                

liste_1.extend(liste_2)   #  permet d etendre la liste1 avec la liste 2 ; liste_1=liste_1+liste_2            
del liste_1[2]      #retir la valeur en position 2 de la liste 1         
del variable        #del permet de supprimer des variable            
" ".join(liste)     #rejoin la listepar des espace           
sorted(liste,reverse=True)      #trie une liste dans lordre decroisant           
liste.sort(reverse=True)        #trie une liste dans lordre decroisant                                                                                                  

                                                                                                
###############################
#                             #
#           Math +            #
#         Math graph          #
#                             #
#                             #
###############################  

# importer tout le module de math en tant que mathematiques
import math as mathematiques
mathematiques.sqrt(25)

# Pointe vers le module clavier
nom_bibliotheque.evenements.clavier 

# importer fabs (valeur absolut) du module de math
from math import fabs

# importer tout le module de math
from math import *
sqrt(4)  

#si import le module multipli alors peut appeler la fonction
# table ; si execute le fichier multipli.py alors on test 
# le fichier (ici table(4) )
"""module multipli contenant la fonction table"""
def table(nb, max=10):
    """Fonction affichant la table de multiplication par nb de
    1 * nb jusqu'à max * nb"""
    i = 0
    while i < max:
        print(i + 1, "*", nb, "=", (i + 1) * nb)
        i += 1
# test de la fonction table
if __name__ == "__main__":
    table(4)

                                                                                                                                                                                                       
from matplotlib import pyplot    # bibliotheque matplotlib    
import matplotlib.pyplot as plt  # on import juste la fonction pyplot de la biblio matplotlib et on l associe a plt (~ plt = matplotlib.pyplot ) ; pour eviter les collisions de noms          
type ( pyplot )  # module                                                                                         
                                                                                                    
pyplot.plot ( [1,5,9] )       #courbe ; point d abscice 0 prend y= la valeur d indice 0, point d abscice 5 prend y=9
pyplot.show ()        #montrer la courbe                                                                                           
pyplot.plot ( [1,5,9] , 'r' )     #la courbe est en rouge r = red ; les couleur en anglais                                                                                         
pyplot.plot ( [1,5,9] , 'ro' )    #les point sont en rouge (le r ) et de forme ronde (le o)                                                                                            
pyplot.plot ( [1,5,9] , 'bs' )    #les point sont en bleu (le b ) et de forme carre (le s) s=square(carre)                                                                                         
pyplot.plot ( [1,5,9] , 'g^' )    #les point sont en vert (le g=green ) et de forme traingle (le ^)                                                                                            
pyplot.plot ( [1,5,9] , 'y--' )   #les point sont en jaune (le y=yello ) et de forme tiret (le -)                                                                                          
pyplot.plot ( [1,5,9] , 'g^-' )   #le - a la fin premet de relier les points                                                                                           
                                                                                                                                                                            
#05.05_CM_tortue                                                                                                 
#pas noter....          
                                                                                       

###############################
#                             #
#                             #
#         EXCEPTION           #
#                             #
#                             #
###############################  

try:
	# Test d'instruction(s)
    resultat = numerateur / denominateur
except:
    # Bloc qui sera exécuté en cas d'erreur
#on specifie quelle erreur on peut avoir
except NameError:
    print("La variable numerateur ou denominateur n'a pas été définie.")
except TypeError:
    print("La variable numerateur ou denominateur possède un type incompatible avec la division.")
except ZeroDivisionError:
    print("La variable denominateur est égale à 0.")
else:
	#si pas erreur alors execute le else
    print("Le résultat obtenu est", resultat)
finally:
    # Instruction(s) exécutée(s) qu'il y ait eu des erreurs ou non

try:
	# Test d'instruction(s)
except type_de_l_exception: # Rien ne doit se passer en cas d'erreur
    pass

try:
    # Bloc de test
except type_de_l_exception as exception_retournee:
    print("Voici l'erreur :", exception_retournee)


# on test si annee est sup a 0
assert annee > 0
except AssertionError:
    print("L'année saisie est inférieure ou égale à 0.")

#exception du type : AssertionError
def avg(marks):
    assert len(marks) != 0,'marks1=0 ou vide' #affiche msg si condition faux


#lever une exception
if annee<=0:
    raise ValueError("l'année saisie est négative ou nulle")



###############################
#                             #
#                             #
#           LISTE             #
#                             #
#                             #
###############################

#parcourir une chaine avec les indice et les elements
for i, elt in enumerate(ma_liste):
     print("À l'indice {} se trouve {}.".format(i, elt))
#À l'indice 0 se trouve a.
#À l'indice 1 se trouve b.

#ou ca
for elt in enumerate(ma_liste):
    print(elt)
#(0, 'a')


#on peux appeler la fonction avec x parametre, elle va les mettre dans un tuple
def fonction_inconnue(*parametres):
"""Test d'une fonction pouvant être appelée avec un nombre variable de paramètres"""
    print("J'ai reçu : {}.".format(parametres))


#avec * on affiche pas la liste mais juste les parametre avec des espaces
liste_des_parametres = [1, 4, 9, 16, 25, 36]
print(*liste_des_parametres)
#1 4 9 16 25 36


#list comprehensions  compréhensions de liste
liste_origine = [0, 1, 2, 3, 4, 5]
[nb * nb for nb in liste_origine]
#[0, 1, 4, 9, 16, 25]

liste_origine = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]
[nb for nb in liste_origine if nb % 2 == 0]
#[2, 4, 6, 8, 10]


#trier un inventaire decroisant
inventaire = [("pommes", 22),("melons", 4),("poires", 18),("fraises", 76),("prunes", 51)]
# On change le sens de l'inventaire, la quantité avant le nom
inventaire_inverse = [(qtt, nom_fruit) for nom_fruit,qtt in inventaire]
# On trie l'inventaire inversé dans l'ordre décroissant
inventaire_inverse.sort(reverse=True)
# Et on reconstitue l'inventaire
inventaire = [(nom_fruit, qtt) for qtt,nom_fruit in inventaire_inverse]

#ou moins lisible
inventaire_inverse = [(qtt, nom_fruit) for nom_fruit,qtt in inventaire]
inventaire = [(nom_fruit, qtt) for qtt,nom_fruit in sorted(inventaire_inverse,reverse=True)]


  
###############################
#                             #
#                             #
#        DICTIONAIRE          #
#                             #
#                             #
###############################                                                                                                                                                                                                                                                                                                      
                                                                                                    
dic={}      # initialisation du dictionaire                                                                                           
dic['cle']='valeur'     # ajoute au dictionaire la cle :'cle' a pour valeur : 'valeur'                                                                                            
dic={'cle' : 'valeur',1:pomme,.... }        #initialise dico avec des valeur                                                                                         
a=dict(cle=valeur , one=1,...)      #initialise dico avec des valeur                                                                                         
a=dict ( [ (cle, valeur), ('one', 1) , .... ] )     #initialise dico avec des valeur                                                                                         
print(dic['cle'])   #valeur' affiche la valeur de la cle : 'cle' ; si 'cle' n existe pas ERROR                                                                                           
print(dic.get('cle'))   #valeur' affiche la valeur de la cle : 'cle' ; si 'cle' n existe pas alors en sortie = None                                                                                          
del dic [ 'cle' ]       #suprime la cle : 'cle' et la valeur associer                                                                                            
dic.pop ( 'cle' )       #suprime la cle : 'cle' et la valeur associer et renvoie la valeur : 'valeur'


#dictionaire avec des definitions
def oiseau():
    print("Fais comme l'oiseau...")
fonctions = {}
fonctions["oiseau"] = oiseau 
# on ne met pas les parenthèses 
fonctions["oiseau"]
#<function oiseau at 0x00BA5198>
fonctions["oiseau"]() # on essaye de l'appeler
#Fais comme l'oiseau...


#parcour dans un dictionaire : KEY
fruits = {"pommes":21, "melons":3, "poires":31}
for cle in fruits.keys():
    print(cle)
#melons ; #poires ; #pommes

#parcour dans un dictionaire : VALUE
for valeur in fruits.values():
    print(valeur)
#3 ; #31 ; #21

#parcour dans un dictionaire : KEY/VALUE
for cle, valeur in fruits.items():
    print("La clé {} contient la valeur {}.".format(cle, valeur))
#La clé melons contient la valeur 3. ; #La clé poires contient la valeur 31. ; #La clé pommes contient la valeur 21.


#condition avec dictionaire
if 21 in fruits.values():
    print("Un des fruits se trouve dans la quantité 21.") 
#Un des fruits se trouve dans la quantité 21.



#la fonction_inconue prend x parametre nomme et en fait un dictionaire
def fonction_inconnue(**parametres_nommes):
    """Fonction permettant de voir comment récupérer les paramètres nommés
    dans un dictionnaire"""    
    print("J'ai reçu en paramètres nommés : {}.".format(parametres_nommes))
fonction_inconnue() # Aucun paramètre
#J'ai reçu en paramètres nommés : {}
fonction_inconnue(p=4, j=8 )
#J'ai reçu en paramètres nommés : {'p': 4, 'j': 8}



#tout les parametre non nome se retrouveron dans la varible en_liste et 
#	les parametre nomme dans la varible en_dictionaire
def fonction_inconnue(*en_liste, **en_dictionnaire):



#Transformer un dictionnaire en paramètres nommés d'une fonction
parametres = {"sep":" >> ", "end":" -\n"}
print("Voici", "un", "exemple", "d'appel", **parametres)
#Voici >> un >> exemple >> d'appel -

#ou d une autre facon
print("Voici", "un", "exemple", "d'appel", sep=" >> ", end=" -\n")
#Voici >> un >> exemple >> d'appel -


###############################
#                             #
#                             #
#          FICHIER            #
#                             #
#                             #
############################### 


#travail sur un fichier : ouvrir,femer,lire,ecrire..
# "r"=read 
# "w"=write cree le ficher si il n esxite pas
# "a"=append ajouter a la fin du ficher ; cree le ficher si il n esxite pas
# "b"=binary ouvrir le ficher en binaire
mon_fichier = open("fichier_1.txt","r")
print(mon_fichier)
#<_io.TextIOWrapper name='fichier_1.txt' mode='r' encoding='UTF-8'>
print(type(mon_fichier))
#<class '_io.TextIOWrapper'>
mon_fichier.close() #fermer fichier
mon_fichier.read() #lire fichier
mon_fichier.write() #ecrir fichier

#fichier fermer automatiquement a la fin du bloc with
with open(mon_fichier, mode_ouverture) as variable:
    # Opérations sur le fichier


#module pickle : on peut enregistrer n'importe quel objet et le récupérer par
#	 la suite, au prochain lancement du programme
import pickle
with open('donnees', 'wb') as fichier:
     mon_pickler = pickle.Pickler(fichier)

#méthode dump du pickler pour enregistrer l'objet (1 uniquement). Son emploi est des plus simples
score = {"joueur 1":5,"joueur 2":35,"joueur 3":20,"joueur 4":2,}
with open('donnees', 'wb') as fichier:
    mon_pickler = pickle.Pickler(fichier)
    mon_pickler.dump(score)

with open('donnees', 'rb') as fichier:
    mon_depickler = pickle.Unpickler(fichier)
    # méthode load de notre depickler. Elle renvoie le premier objet qui a été lu 
	#	(s'il y en a plusieurs, il faut l'appeler plusieurs fois)
    score_recupere = mon_depickler.load()
    print(score_recupere)
#{'joueur 1': 5, 'joueur 2': 35, 'joueur 3': 20, 'joueur 4': 2}


#############
#   .CSV    #
#############

# ouvre le fichier en lecture seul
f = open('tab_inter_2019.csv', 'r')
line = f.readline()
# lire le fichier ligne par ligne
while (line):
	# acces comme un tableau
    l = line.split(',')
    ligneStr=line[0]+" : total d'heures travaillées "+line[1]+" h"+"\n"
    # atribuer la ligne suivante
    line = f.readline()

# ferme le fichier pour la memoir et sinon peut avoir des pb
f.close()

# test si une cellule est vide
if (len(line[4]) != 0 ):
	l=" remarque : "+line[4]

