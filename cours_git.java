// config du git, @email pour github (gratuit)
$ git config --global user.name "Votre nom ou pseudo"
$ git config --global user.email "Votre@email.com"



// Se placer dans le repertoir ou l on veux enregistrer les versions de notre code ; 
$ git init 		// initialise git, le repertoir devien repository git 
$ git status 	// voir status
$ touch nom_du_fichier.md 	// cree fichier : nom_du_fichier
$ git add nom_du_fichier	// ajoute notre fichier a l indexe
$ git commit -m "msg decrip modification projet"	

// a chaque fois que modifi le ficher il faut faire ligne 10 et 11 :
$ git commit -am "msg"	// -a => fait direct le add, ligne 10+11


$ git log 		// on voit le sha,auteur,date,msg ; se lit de bas en haut


$ git checkout sha_du_commit 	// on se positione au niveau de ce sha
$ git checkout master 			// revenir sur le derner commit


// Si je veux changer le msg du dernier commit
$ git commit --amend -m "Votre nouveau message"

// Si pas encore fait le commit, on peux faire la commande suivantes:
$ git reset --hard‌


// Sur github, copier lien https 
$ git clone https:/github.com/thomas-che/test_git.git


// Envoi (=syncronise modifiction fichier sur notre pc et sur github)
// apres avoir fait : add et commit :
$ git push origin master  	// origin (=> car que a 1 seul endroi ou envoyer) ; master (=> ici dans la branche master)
// demande user et passeword lors du clonage du dossier sur notre pc, metre user de GitHub 

// Recuperer la derniere modifiction d un fichier (le dernier commit) sur notre pc
$ git pull origin master


// Dire ou est l origine pour envoier les fichier sur github
$ git remote add origin https://github.com/thomas-che/cours.git
