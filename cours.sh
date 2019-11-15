#! /bin/bash


# voir ou on est	
pwd	

# cree repertoir
mkdir
# suprimer repertoir ; attention il doit etre vide !
rmdir

# voir history des commande
history	

# recherche text dans resultat avant le pipe=( | )
ll | grep text		# ex: ll | grep opt	-> montre que fichier opt

# liste procecus consomation en direct
top	

# raccourci de comande ; lltc = ls et la
alias lltc='ls -la --color=auto' 

# voir moniteur
ps u   #voir moniteur
ps aux # voir liste de tous les processus	
ps -aux | grep xxx  # liste des procesus ou il y a la chaine de caractere xxx

# tuer logiciel avec id 1234
kill 1234

# affiche espace disque par montage	
df		
df -h  # affichage avec uniter humaine

# lancer sript en tache de fond &
gedit &

# afficher une variable d environement 
echo $HOME

# copier fichier puis espace et lieux arriver
cp f1 repertoir/f2		

# mouve le fichier vers le rep que on veut
mv fichier1 rep/fichier1

# renommer un fichier fichier1 en fichier2
mv fichier1 fichier2

# suprimer fichier
rm	
rm -r  # pour suprimer le repertoir recursivement(-r)
rm -rf # pour forcer(-f) la supretion

# retirer droit x (execution) pour user groupe et autre du fichier yyy	metre + pour autoriser pour tous	r= read ; w=write ; x=execution
chmod -x yyy

# tout autoriser et pour tout le monde pour le fichier yyy	
chmod 777 yyy	 # 4=r ; w=2 ; x=1
# ou
chmod g-x yyy  # retir x pour le g=groupe 
chmod x-x yyy  # retir x pour le u=user
chmod o-x yyy  # retir x pour le o=oser

# cree fichier
touch fichier.txt

# affiche page par page
more nom_fichier.txt

# avance ligne par ligne
less nom_ficher.txt
/parter 	# on regarde un motif :"pater"

# affiche le manuel de less ; on peux remplacer less par d autre appli ex: nano
man less

ls -a  # afiche les fichier cacher
ls -g  # trier par odre croissant
ls -rg # trier decroisant(-rg=>reverse de g)
ls -rt # trier date vieux->jeune

ls *.txt      # affiche les fichiers en .txt
ls *[a]*.txt  # affiche les fichiers avec 'a' dans le nom et en .txt
ls *[!a]*.txt # affiche les fichiers sans 'a' dans le nom et en .txt

# rediriger sortie ecran & enter standar 
ls -l /etc >etc.ls-l   ; # redirige ls -l du dosier etc dans un fichier nomer etc.ls-l
ls -l /etc >>etc.ls-l  ; # ecrit a la fin du fichier
ls -l /etc 2>/dev/null ; # rediriger sortie d erreur(2) vers le trou noir de linux
tr ' ' '-' <fic.txt    ; # prend fic.txt comme enter
tr ' ' '-' < < FIN     ; # << tant que le mot fin n est pas taper on continue le tr
ls -l /etc >/dev/null  2>&1 ; # rediriger sortie d erreur(2) comme la sortie standard

wc fic.txt    # sortie: nb_ligne nb_mot nb_char nom_fichier
wc -l fic.txt # compte le nb de ligne

IFS = : # redefinit le separateur est ':'

sleep 3 # shell dort pendant 3 sec

# changer langue LANG ; zone geographique TZ (=time zone); demander la date
LANG=en_US.utf8 TZ='America/New_york' date

# choisi un nb aleatoire
$RANDOM

# transforme une chaine de caractere
tr 'a' '1' # mais attend une entrer au clavier
tr -s ' '  // ex: remplace '   ' par ' ' # remplacer plusieur ocurence avec tr
tr 'a-mn-z' 'n-za-m' # transforme chaine avec un decalage de 13 charactere : ROT13
tr 'a-z' 'n-za-m' # peut etre ecrit comme
tr 'a-zA-Z' 'n-za-mN-ZA-M' # gere les maj
cat fichier.txt | tr 'a-zA-Z' 'n-za-mN-ZA-M' # afficher le fichier txt puis le trad

# selectioner une partie de l affichage
ls -l | cut -d' ' -f 2,3 # on garde les champs 2,3 du ls
cut -c 1 # garde le premier char
cat villes.csv | cut -f3,5 -d',' > villeTri.tx  # cut -f3,5 => prend les champ 3 et 5 , -d',' => separateur est ','

# rechercher
find -type d -name"*s*" # chercher un dossier(d) avec un 's' dans son nom
find /etc -type d -maxdepth 1 # on descend de 1 niveau
# reproduire l arborecence d un dossier avec les fichier dedans dans le rep ou on veux reprodirer l arborecence
find /home/thomas/Documents/tp_l2_info/outil_dev/atelier/ | cut -f8- -d'/' | xargs mkdir 

# selectioner des ligne sur un fichier txt
fichier.txt | head -n 30  # garde les 30 premiere ligne de fichier.txt
fichier.txt | tail -n 30  # garde les 30 derniere ligne de fichier.txt

# calculatrice du shell
"2+3*4" | bc 

# trie avec sort; -k2 => prend le 2eme champs avec comme separateur -t',' = , ; -n => trie par ordre croisant ; -r => reverse donc tri ordre decoisant
sort -k2 -t',' -n -r villeTri.txt # -k pr trie numerique ; -n est par default: pas obliger ecrir

# faire une jointure, les 2 liste doivent etre trier ; bc => permet d eecuter en bash la ligne
join rp pp | cut -d' ' -f2,4 | tr ' ' '*' | bc


#===========> BOUCLE <===========================================================


for i in exp1 exp2 ; do
	# action
done
# ou
for (( i = 0; i < 10; i++ )); do
	#statements
done

# switch
case $jour in
	samedi|dimache) echo "w-e" ;;
	lundi) echo "reprise" ;;
	*) echo "semaine" ;; # cas par default
esac

# if simple
if [ condition ] ; then
	# action
else
	# action
fi

# boucle while
while [ condition ] ; do
	# action 
done


#===========> CONDITION <===========================================================


[ -e fic.txt ] # vrai si le fichier fic.txt existe
[ -d fic.txt ] # vrai si le repertoire/dossier fic.txt existe
[ -f fic.txt ] # vrai si le fichier fic.txt est un ficier regulier
[ -r fic.txt ] # vrai si fic.txt peut etre en lecture
[ -w fic.txt ] # vrai si fic.txt peut etre en ecriture

# $X,$Y sont des chaines de chars
[ $X ]       # vrai si la chaine est non vide
[ $X = $Y ]  # vrai si les chaînes sont identiques
[ $X != $Y ] # vrai si les chaînes sont distinctes
[ $X < $Y ]  # comparaison lexicographique ASCII
[ $X > $Y ]  # comparaison lexicographique ASCII

# $X,$Y sont des entier
[ $X -eq $Y ]  # vrai si x = y   ; equal
[ $X -ne $Y ]  # vrai si x != y  ; negation equal
[ $X -lt $Y ]  # vrai si x < y   ; left inf
[ $X -le $Y ]  # vrai si x <= y  ; left inf ou equal 
[ $X -gt $Y ]  # vrai si x > y   
[ $X -ge $Y ]  # vrai si x >= y


#=================

# substitution de variable
${var}  # même chose que sans les accolades ($var) ; ex: $HOME1 n esxite pas alors que {$HOME1} vas dans $HOME puis dans 1
${#var}  # longueur du contenu de la variable var
${var%.txt}.sh # change .txt en .sh
${var#f}ff #chage f en ff
${aaaaafichier##a} #change aaaaafichier en afichier


#===========> SCRIPT <===========================================================

function () { ... } #fonction en shell
chemin=$(/home/...)
compteur=$(( compteur + 1 ))  # quand soit calculer utilise $(( ))
$(ls -l $chemin)  # utilise le resultat d une commande (ls -l)

./script.sh alpha beta gama
fichier1=$1  # fichier1 recupere l argument 1(alpha) passer en paramet lors d l execution du script
$# # retourne 3 => nb d argument
$@ # retourne la liste des arguments

set -e  # arret du script si erreur
set -n  # fait semblant de s executer
set -v  # affiche le scipt en meme temps que s execute


