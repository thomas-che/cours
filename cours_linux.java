

//afficher tout les docier du repertoire
$ ll / ls / ls-l

$ ls -a // afiche les fichier caher

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
$ rm -r  // pour suprimer le repertoir
$ rm -rf // pour forcer la supretion

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
$ chmod 777 yyy	 // 4=r ; w=2 ; x=1

$ chmod g-x yyy  // retir x pour le g=groupe 
$ chmod x-x yyy  // retir x pour le u=user
$ chmod o-x yyy  // retir x pour le o=oser

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
$ mv fichier1 fichier3  // si on veux rename fichier1 en fichier2 
// renommer un fichier fichier1 en fichier2
$ mv fichier1 fichier2	

// editeur texte dans terminal
$ nano	

// adresse ip local
$ ip addr show	

// cree fichier
$ touch fichier.txt

// affiche page par page
$ more nom_fichier.txt

// avance ligne par ligne
$ less nom_ficher.txt
$ /parter 	// on regarde un motif :"pater"

// affiche le manuel de less ; on peux remplacer less par d autre appli ex: nano
$ man less

// trier par odre croissant
$ ls -g 	// trie par nom croissant 

// rediriger sortie ecran dans un fichier
$ ls -l /etc >etc.ls-l  // redirige ls -l du dosier etc dans un fichier nomer etc.ls-l

// changer langue LANG ; zone geographique TZ (=time zone); demander la date
$ LANG=en_US.utf8 TZ='America/New_york' date

// compte le nb de fichier 
$ wc

// afficher une variable 
$ echo $VARIABLE

// ecrir a la fin du fichier
$ echo toto >> fichier.txt




