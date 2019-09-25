#!/usr/local/bin/python3.7


# fonction lambda = petite fonction
lambda x, y: x + y


# importer tout le module de math en tant que mathematiques
import math as mathematiques
mathematiques.sqrt(25)

nom_bibliotheque.evenements.clavier # Pointe vers le module clavier


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


#lever une lever une exception
if annee<=0:
    raise ValueError("l'année saisie est négative ou nulle")


# formatage d'une adresse
adresse = """
{no_rue}, {nom_rue}
 {code_postal} {nom_ville} ({pays})
""".format(no_rue=5, nom_rue="rue des Postes", code_postal=75003, nom_ville="Paris", pays="France")
print(adresse)
#5, rue des Postes
#  75003 Paris (France)


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



#dictionaire avec des definitions
def oiseau():
    print("Fais comme l'oiseau...")
fonctions = {}
fonctions["oiseau"] = oiseau # on ne met pas les parenthèses 
fonctions["oiseau"]
#<function oiseau at 0x00BA5198>
fonctions["oiseau"]() # on essaye de l'appeler
#Fais comme l'oiseau...



#parcour dans un dictionaire
fruits = {"pommes":21, "melons":3, "poires":31}
for cle in fruits.keys():
    print(cle)
#melons
#poires
#pommes
for valeur in fruits.values():
    print(valeur)
#3
#31
#21
for cle, valeur in fruits.items():
    print("La clé {} contient la valeur {}.".format(cle, valeur))
#La clé melons contient la valeur 3.
#La clé poires contient la valeur 31.
#La clé pommes contient la valeur 21.

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





















































































