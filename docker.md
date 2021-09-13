<h1 align="center"> Cours Docker</h1>

<p align="center"><a href="https://docs.docker.com/" target="_blank"><img src="https://www.docker.com/sites/default/files/d8/2019-07/vertical-logo-monochromatic.png" width="150"></a></p>

Cours sur des commandes utiles pour Docker, les images sont sur [hub.docker](https://hub.docker.com/).

&nbsp;
### Commandes de base :

Afficher les images locales disponibles
```bash
docker images
```

Suppression d’une image locale
```bash
docker rmi <id_image>
```

Nommage d’image locale
```bash
docker tag <id_image> <nom_image>
```

Recherche d'une image sur le hub public docker
```bash
docker search <nom_image>
```

Téléchargement sur le disque local d'une image sur le hub public docker
```bash
docker pull <nom_image>:<tag_image>
# docker pull httpd:2.4
```

Lancer une image
```bash
docker run <nom_image>:<tag_image>
# docker run httpd:2.4
```

Connexion au hub de docker, puis entrer ces identifiants
```bash
docker login
```

Arrêté le container
```bash
docker stop <id_container>
```

Démarré le container
```bash
docker start <id_container>
```

Supprime le container
```bash
docker rm <id_container>
```

Liste des conteneurs en cours d’exe 
```bash
docker ps
```

Liste tous les conteneurs 
```bash
docker ps -a
```

Liste des ports du container
```bash
docker port <id_container>
```

Liste des processus du container 
```bash
docker top <id_container>
```

Nommer un container
```bash
docker run --name <nom_du_container> <nom_image>
```


&nbsp;
### Commandes Docker + :

Lancer le container mapper avec un port
```bash
docker run -p <port_remplace>:<port_cible> <nom_image>
# docker run -p 8088:80 httpd:2.4
```

Stop et supprime le container
```bash
docker rm -f <id_container>
```

Lancer le container mapper avec un repertoire
```bash
docker run -v <path>:<path_in_container> <nom_image>
# docker run -p 8088:80 -v /home/thomas/Documents/tp_m1_miage/bdd_si/td1/:/usr/local/apache2/htdocs httpd:2.4
```

Lancer un container mysql sans mdp
```bash
docker run -p 3306:3306 -e MYSQL_ALLOW_EMPTY_PASSWORD=yes mysql
```

On rentre dans le container en executant une commande
```bash
docker exec -it <id_container> <commande>
# docker exec -it 67783aceb96f /bin/bash
```



