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
