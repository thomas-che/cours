

//afficher tout les docier du repertoire
$ ll / ls / ls-l

// selectioner un dossier		
$ cd

// voir moniteur
$ ps u	voir moniteur

// voir liste de tous les processus
$ ps aux

// liste des procesus ou il y a la chaine de caractere xxx	
$ ps -aux | grep xxx

// tuer logiciel avec id 1234
$ kill 1234

// affiche espace disque par montage	
$ df	

// affichage avec uniter humaine	
$ df -h

// voir ou on est	
$ pwd	

// cree repertoir
$ mkdir

// suprimer repertoir ; attention il doit etre vide !
$ rmdir	

// suprimer fichier
$ rm	

// retour arriere dans dossier	
$ cd ..	

// raccourci de comande ; lltc = ls et la
$ alias lltc='ls -la --color=auto' 

// pour voir la racine = voir tout ce qu il y a sur le pc	
$ cd /

// cree ficher nom : yyy et text dedans : xxx	
$ echo 'xxx' > yyy

// afficher le fichier yyy dans le terminal	
$ cat yyy	

// retirer droit x (execution) pour user groupe et autre du fichier yyy	metre + pour autoriser pour tous	r= read ; w=write ; x=execution
$ chmod -x yyy

// tout autoriser et pour tout le monde pour le fichier yyy	
$ chmod 777 yyy	

// voir history des commande
$ history	

// recherche text dans resultat avant le pipe=( | )
$ | grep text		// ex: ll | grep opt	-> montre que fichier opt

// liste procecus consomation en direct
$ top	

// copier fichier puis espace et lieux arriver
$ cp		// ex: cp bonjour.text /rep1/	bonjour copier dans repertoir 1

// bouger le fichier vers le rep que on veut
$ mv	

// editeur texte dans terminal
$ nano	

// adresse ip local
$ ip addr show	

// renommer un fichier fichier1 en fichier2
$ mv fichier1 fichier2	

// cree fichier
$ touch fichier.txt


