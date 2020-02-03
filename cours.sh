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

# adresse ip local
ip addr show

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
wc -w # nb mot sur la ligne 

IFS = : # redefinit le separateur est ':'

sleep 3 # shell dort pendant 3 sec

# changer langue LANG ; zone geographique TZ (=time zone); demander la date
LANG=en_US.utf8 TZ='America/New_york' date

# choisi un nb aleatoire
$RANDOM

# transforme une chaine de caractere
tr 'a' '1' # mais attend une entrer au clavier
tr -d '\r' # suprime les retour chariot 
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
fichier.txt | tail -n +3  # garde les 3 premiere ligne de fichier.txt

# calculatrice du shell
"2+3*4" | bc 

# trie avec sort; -k2 => prend le 2eme champs avec comme separateur -t',' = , ; -n => trie par ordre croisant ; -r => reverse donc tri ordre decoisant
sort -k2 -t',' -n -r villeTri.txt # -k pr trie numerique ; -n est par default: pas obliger ecrir

# faire une jointure, les 2 liste doivent etre trier ; bc => permet d eecuter en bash la ligne
join rp pp | cut -d' ' -f2,4 | tr ' ' '*' | bc

# changer le prompt
# \[\e]0;\u@\h: \w\a\]${debian_chroot:+($debian_chroot)}\[\033[01;32m\]\u@\h\[\033[00m\]:\[\033[01;34m\]\w\[\033[00m\]\$
PS1="[\d]\u:\w$"
# ou le lancer avec le source
source exo1.sh 
# ou avec le . point blanc point/
. ./exo1.sh

# seq
seq 10  # affiche les nb de 0 a 10
seq 5 10  # affiche les nb de 5 a 10
seq 3 2 10  # affiche les nb de 3 a 10 avec un pas de 2 

# paste => colle la ligne i du fichier1.txt avec la ligne i du fichier2.txt
paste fichier1.txt fichier2.txt 

# considere une var comme une chaine de char
"$var"  # ou var=23 on considere que var="23"

# affiche l encodage du fichier
file fichier1.txt

# affiche le coadage du fichier
hexdump -C fichier1.txt | head

# le -n permet d avoir les num de ligne
grep -n "^debut" fichier1.txt
grep -c "data" f1.txt #compte le nb fois data dans f1
grep -o "a" f1.txt #affiche que les "a" dans f1 ; sans le -o on affiche tout les mot avec des "a"
grep "^.[^ ]*$" f1.txt #nimporte quoi sauf espace

# egrep permet de faire des ou
egrep -n "^(Acte|Scene|Rideau)" f.txt # cherche Acte ou Scene ou Rideau

# sed pour remplace qqch dans un fichier
sed -e "s/NUMBER/INTEGER/g" f1.txt # s=substitution ; g= pr le faire plusieur fois dans la meme ligne 
sed -n "s/AAA/ZZZ/gp" f1.txt # -n pour afiche que ce que l on a modifier; p= afficher les mot que l on a modifier ex: AAAzerty => ZZZzerty
sed "abc/d" f1.txt # d= suprimer abc dans f1

# pour sauvgarder les modif 
cat f1.txt | sed -e "s/NUMBER/INTEGER/g" > f1_modif.txt 


###############################
#                             #
#                             #
#           BOUCLE            #
#                             #
#                             #
###############################

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


###############################
#                             #
#                             #
#         CONDITION           #
#                             #
#                             #
###############################

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
[ $X -lt $Y ]  # vrai si x < y   ; less than
[ $X -le $Y ]  # vrai si x <= y  ; less than ou equal 
[ $X -gt $Y ]  # vrai si x > y   ; greater than
[ $X -ge $Y ]  # vrai si x >= y

# test variable 
[ -z $X ]  # vrai si $X est vide : $X=""
[ -n $X ]  # vrai si $X est non vide : $X="sfs" 


#=======================================================

# substitution de variable
${var}  # même chose que sans les accolades ($var) ; ex: $HOME1 n esxite pas alors que {$HOME1} vas dans $HOME puis dans 1
${#var}  # longueur du contenu de la variable var
${var%.txt}.sh # change .txt en .sh
${var#f}ff #chage f en ff
${aaaaafichier##a} #change aaaaafichier en afichier


###############################
#                             #
#                             #
#           SCRIPT            #
#                             #
#                             #
###############################

function () { ... } #fonction en shell
chemin= /home/...
compteur=$(( compteur + 1 ))  # quand soit calculer utilise $(( ))
$(ls -l $chemin)  # utilise le resultat d une commande (ls -l)

./script.sh alpha beta gama
fichier1=$1  # fichier1 recupere l argument 1(alpha) passer en paramet lors d l execution du script
$# # retourne 3 => nb d argument
$@ # retourne la liste des arguments

set -e  # arret du script si erreur
set -n  # fait semblant de s executer
set -v  # affiche le scipt en meme temps que s execute
set -x  # affiche des infos


###############################
#                             #
#                             #
#       SCRIPT EXAMPLE        #
#                             #
#                             #
###############################

# recuperer un mot au hazard dans un fichier
nbligne=$(cat /usr/share/dict/words | wc -l)
ligne=$(($RANDOM%nbligne))
tail -n $ligne /usr/share/dict/words | head -n 1

# numerote les ligne d un fichier ; on peux utiliser cat -n
fic= /outil_dev/atelier/data/data/txt/cyrano.txt
nbligne=$(cat  $fic |wc -l)
seq $nbligne > nbligne.txt
paste nbligne.txt $fic

#on lit RP et on prend pr chaque ligne le 1er mot et stocke dans q , 2eme mot dans p
while read q p; do
	som=$(echo "$som+$q*$p" | bc )
done <RP.txt

# savoir le mot qui se repete le plus dans un fichier : doublon
cat f.txt | sort | uniq -c | sort -nr | head -n 1

# coordoner en commun ? coo1= $1
cat coo1 | sort >coo1Trier
cat coo2 | sort >coo2Trier
join coo1Trier coo2Trier

# calc d un prix=quantiter*prix_uniter
som=0
#on lit RP et on prend pr chaque ligne le 1er mot et soquer dans q , 2eme mot dans p
while read q p; do
	som=$(echo "$som+$q*$p" | bc )
done <RP # ou RP est un fichier de type: 12 3.04
#										 8 14     ...

# recupere text iteresant
fic=$1
debut=$(grep -n "^** STRAT OF" $fic | cut -d':' -f 1)
fin=$(grep -n "^** END OF" $fic | cut -d':' -f 1)
head -n $(($fin-1)) $fic | tail -n $(($debut+1)) > fic_clear.txt
cat fic_clear.txt | tr -d '\r' > fic_clear.txt 
cat fic_clear.txt

# recupere les 5 personne qui ont le plus de replique
grep "^[A-Z][A-Z ]*(.*):$" cyrano.txt | cut -d'(' -f1 >tmp/avec
grep "^[A-Z][A-Z ]*:$" cyrano.txt | tr -s ':' ' ' >tmp/sans
(cat tmp/avec ; cat tmp/sans ) >tmp/global
cat tmp/global | sort | uniq -c | sort -nr | head -n5

# ecrir chaque phrase du fichier a l envert
if [ $# -eq 1 ] ; then # savoir si lit en enter standard ou en argument $1
	nomfic=$1
else
	read nomfic # lit en enter standard
fi
while read ligne ; do
	nbm=$(echo $ligne | wc -w )
	phrase=''
	for i in $(seq $nbm -1 1) ; do
		mot=$(echo $ligne | cut -d' ' -f$i)
		phrase="$phrase $mot"
	done
	echo $phrase
done< $monfic



###############################
#                             #
#                             #
#            GIT              #
#                             #
#                             #
###############################

# Premiere utilisation sur nouveau pc
# cours: https:#github.com/thomas-che/cours.git
# tp_l2_info: https:#github.com/thomas-che/tp_l2_info.git
git clone https:/.....
cd nom_du_repository
git config --global user.name "thomas-univ-num_salle"
git config --global user.email "nom_matiere-tp/td@date.heure"
git commit -am"msg"
git push origin master


# Utilisation au quotidien
# cours: https:#github.com/thomas-che/cours.git
# tp_l2_info: https:#github.com/thomas-che/tp_l2_info.git
cd nom_du_repository
git pull origin master
git config --global user.name "thomas-univ-num_salle"
git config --global user.email "nom_matiere-tp/td@date.heure"
git commit -am"msg"
git push origin master


# config du git, @email pour github (gratuit)
git config --global user.name "Votre nom ou pseudo"
git config --global user.email "Votre@email.com"


# Se placer dans le repertoir ou l on veux enregistrer les versions de notre code ; 
git init 		# initialise git, le repertoir devien repository git 
git status 	# voir status
touch nom_du_fichier.md 	# cree fichier : nom_du_fichier
git add nom_du_fichier	# ajoute notre fichier a l indexe
git commit -m "msg decrip modification projet"	

# a chaque fois que modifi le ficher il faut faire ligne 10 et 11 :
git commit -am "msg"	# -a => fait direct le add, ligne 10+11


git log 		# on voit le sha,auteur,date,msg ; se lit de bas en haut


git checkout sha_du_commit 	# on se positione au niveau de ce sha
git checkout master 			# revenir sur le derner commit


# Si je veux changer le msg du dernier commit
git commit --amend -m "Votre nouveau message"

# Si pas encore fait le commit, on peux faire la commande suivantes:
git reset --hard‌


# Sur github, copier lien https 
git clone https:/github.com/thomas-che/test_git.git


# Envoi (=syncronise modifiction fichier sur notre pc et sur github)
# apres avoir fait : add et commit :
git push origin master  	# origin (=> car que a 1 seul endroi ou envoyer) ; master (=> ici dans la branche master)
# demande user et passeword lors du clonage du dossier sur notre pc, metre user de GitHub 

# Recuperer la derniere modifiction d un fichier (le dernier commit) sur notre pc
git pull origin master


# Dire ou est l origine pour envoier les fichier sur github
git remote add origin https:#github.com/thomas-che/cours.git


# faire add sur tout le dossier
git add *

# suprimer un fichier
git rm nom_du_fichier

# cacher un fichier du versinage
git rm --cached nom_du_fichier

# restaurer le fichier sup
git checkout HEAD -- nom_du_fichier

# on revien a la version commiter
git reset nom_du_fichier 

# voir la diff entre 2 commit
git diff <sha1...> <sha2...>

# voir sur quelle branche on est
git branch
# on la repere avec * 

# cree une nouvelle branche
git branch nouvelle-branche

# changer de branch
git checkout nouvelle-branche

# cree et se placer sur une nouvelle branche
git checkout -b nouvelle-branche

# fusioner branche: ajouter dans master les commit sur nouvelle-branche
git merge nouvelle-branche

# conflict fusion branche, lors du merge, ouvrir le fichier et le modifier a la main
git add nom_du_fichier
git commit 	# pas de msg, generer tout seul, faus juste sauvgarder

# suprimer branche
git branch -d ma-branche


# savoir qui a ecrit quoi dans le fichier
git blame nom_du_fichier

# savoir ce qui a ete modifier
git show effc7ae9 # c est le debut du sha que l on a avec git blame


# ingniorer ; rendre invisible au autre des fichier ex: fichier config
.gitignore # cree fichier 
# y ajouter le nom des fichier a ignorer, si pas meme repertoir alors donner chemin


# metre du code en stand-bye quelque instant
# ne pas faire le commit ; car sa fait un commit intermediaire moche
git stash
# modifie le fichier, envoy sur github
git stash pop 	# recupere notre code 
# fait le commit -am

# le stash pop suprime ne garde pas en memoir ce qu il y avait dadans apres le pop,
# ..si on veux garder soit refait un stash, soit apply
git stash apply


# pull request PR ; modif code open source
# une fois sur le projet, cliquez sur "fork" (=> duplique le repository sur notre compte)
# ..lire le readme et regarder condition pour contribuer au code
# methode general :
git clone https:/...
git checkout -b my-new-feature  	# cree nouvelle branche avec comme nom notre modification (ex: readme-update)
git commit -am "msg"
git push origin my-new-feature
# sur github, cliquez sur "Compare & pull request", rediger msg a destination du mec qui gere le repository


# rester identifier 1h pour push 
git config --global credential.helper 'cache --timeout=3600'


# forcer un push
git push --force origin master  # suprime les commits des autres machines


git remote -v
git remote show origin
git remote show partage
git config branch.master.remote partage
git pull -v


###############################
#                             #
#                             #
#           SVN               # avec univ
#                             #
#                             #
###############################

# pr se co
http://192.168.46.176/svn/o2180812/
login: o21...
mdp: nne...
# initialiser le svn
svn checkout https://pdicost.univ-orleans.fr/svn/o2180812/ projet1 --username=o2180812
svn status
# ajout 
svn add *
# commit
svn commit -m'msg'
#
svn log
#
svn log -v
# affiche le 2eme commit
svn log -r 2
# affiche des ifon a propos du svn
svn info
# affiche la diff avec l ancien commit
svn diff -r 1
# syncroniser le rep =~ pull
svn update
# si conflict suivre les indication



###############################
#                             #
#                             #
#            SSH              #
#                             #
#                             #
###############################

#connexion
ssh -p port login_machine@ip

#eteindre machine ; 1 min d attente pas default avant de s eteindre
shutdown
























