#!/usr/bin/Rscript

# cree l obj n, et prend la val 12
n<-12

# obj null , vide
NULL

# boolean :
T / TRUE #=true; 
F / FALSE #=false; 
NA #=not aviable

#numeric
2.3333
pi # 3.14159..
1e-10 # 1^-10

# complex
2+0i
2i

# help sur une fonc
help(dnorm) # ou ? dnorm

# return le type de l object
mode(n) 

# test sur type d une var
is.null(x)
is.logical(x)
is.numeric(x)
is.complex(x)
is.character(x)
is.na(x) # is not aviable

# forcer la conversion
as.logical(x) # logicial = booleans
as.numeric(x)
as.complex(x)
as.character(x) # 'bonjour', "K"

# expendenciel e^10
exp(1e10) # inf

# Not a Number
log(-2)

# suprimer l obj n
rm(n) 
rm(objet1,objet2,objet3)

# suite de 1 a 12
suite<-1:12 

# sequence de 20a 40 avec un pas de 5
seq(from=20,to=40,by=5) # =seq(20,40,5) 

# sequence de 1 a 6 avec 5 valeurs repartie egalement enter ces valeur
seq(1,6,length=5)

# vecteur de 3 element
vecteur<-c(1, 4, 10) 

# vecteur à 7 éléments
y <- seq(1,10,by=2)

# vecteur de vecteur
z <- c(vecteur,y) # 1 4 10 1 3 5 7 9

# faire un vecteur avec des string
vecteur<-c("bleu","vert","marron")

# repeat 1 *4
rep(1,4) # 1 1 1 1

# repeat 1*3 puis 2*3
rep(c(1,2),each=3) # 1 1 1 2 2 2
rep(c("rouge","jaune","bleu"),each=2) #"rouge" "rouge" "jaune" "jaune" "bleu" "bleu"

# vecteur repeat selon time : 1*rouge; 4*jaune; 2*bleu
rep(c("rouge","jaune","bleu"),times=c(1,4,2)) # "rouge" "jaune" "jaune" "jaune" "jaune" "bleu" "bleu"

# concatenation avec paste
r <- paste(rep("etu",5),1:5,sep="-") # "etu-1" "etu-2" "etu-3" "etu-4" "etu-5"

# extraire une chaine de string
substr("freerider",5,9) # "rider"

# return la longeur de la serrie
lenght(serie1) 

# test operateur logique
x <- c(-1,0,2)
test <- x>1 # F F T

# all = return T si tous les element sont satisfait
all(x>1)

# any = return T si 1 des element est verifier
any(x>1)

# prend x item (type=number) en enter
scan() 

# colle les ligne
z=rbind(x,y) 
# colle les colones x,y
w=cbind(x,y) 

# matice de 4*4 avec comme valeur de 2 a 17
m=matrix(c(2:17),ncol=4) 
# byrow=T permet de remplir en ligne
m1=matrix(c(2:17),ncol=2,byrow=T)

m[1, ] # retun la premeier ligne
m[2:4, ] # extrait de la ligne 2 a 4
m[c(2,4), ] # extrai les ligne 2 et 4

# produit de matrices A*B
A%*%B 

# transforme valeur bool en int : TRUE  TRUE FALSE 
as.integer(u<r) 
FALSE FALSE => 1 1 0 0 0

# operateur logique
& #=et 
| #=ou

# nommer les composantes d'un vecteur avec names
matiere <- c("Anglais","Informatique","Biologie")
note <- c(12,19.5,14)
names(note) <- matiere # nome les col de note avec le vect matiere
note

# trier un vecteur
sort(note) # trie ordre croissant
rev(sort(note)) # trie ordre de-croissant

# pr afficher sur 1 col, 2 graphes
par(mfrow=c(1,2))

# acceder au val dans iris colone=Sepal.lengh quand la Sepecies = versicolor
iris$Sepal.Length[iris$Species == "versicolor"]



###############################
#                             #
#                             #
#           PROBA	          #
#                             #
#                             #
###############################

# cree loi uniform de 50 pt entre 0 et 3
ech1<-runif(50,0,3)

# avg de ech1
mean(ech1)

# varience de ech1
var(ech1) # varience en biais, S²n-1
sum(ech1^2)/50 - (mean(ech1))^2 # variance a la main

# ecat type 
sd(ech1) # ou sqrt(var(ech1))

# trace histograme
hist(sqrt(islands),breaks = 12, col = "gray")

#histo de frequence
hist(ech2,breaks=30) 

# pr afficher sur 1 col, 2 graphe
par(mfrow=c(1,2)) 

# trace histograme de densite avec : proba=T
hist(ech2,breaks=30, proba=T, col = "red") 

# loi normal : 5000 pt entre 0-3
loiN<-rnorm(5000,0,3)

# densiter normal
dnorm(loiN)
hist(dnorm(loiN))

# afficher la loi gaussienne avec line ; x<-loiN ou echantillon
hist(x, main="titre graphe",breaks = 50, probability = T, col = "red")
x0<-seq(min(x),max(x),length.out = 100)
lines(x0,dnorm(x0,mean(x),sd(x)),col="green")

# echantillon de poisson 5000 avec 4 param
loiPoisson<-rpois(5000,4)

# table des effectif ; rassembler des info dans un tableau
t<-table(loiPoisson) 

# diagrame en baton de la repartition des effectifs
plot(table(loiPoisson),ylim=c(0,990)) # diagrame en batton

# echantillon binomiale avec n=100, taille=500, proba=0.25
echantillonBino<-rbinom(500,100,0.25)

# echantillon poison avec taille=500, proba=0.25
echantillonPoison<-rpois(500,25)

# lire un tableau dans un fichier .txt
class=read.table("/home/thomas/Documents/tp_l3_info/s5/stat/tp2/class.data.txt", header = T)

vec_sexe<-class$sexe # ou on peut faire : attach(class) et apres on aura deja des vect juste avec sexe

# diagrame en baton des frenquence de sexe
barplot(table(vec_sexe)/lenght(vec_sexe),col = "blue") 

# pr avoir un cammenbert des frequence des departement
pie(table(vec_dep)/lenght(vec_dep))

# diagramme en baton des frequence sur la provenance des etudiants
plot(table(t_seri)/lenght(t_seri))

# bande de donner de R ; iris, caith, ...
library(MASS) # quine

# pr avoir une boite a moustache, directemnt le vecteur
boxplot(quine$Days)

# affiche plein de donner sur la boite ; ex : $conf = interval de confiance
boxplot.stats(quine$Days) 

# boite moustache en fonction de l age et du nb jour abs
boxplot(quine$Days~quine$Age)

# boite a moustache des jour abs et ou l age=F1 
boxplot(quine$Days[quine$Age == "F1"])

# donne les modaliter min-max d un tableau de vecteur
range(t_nb_e)

# resume plein de donner sur le vecteur
summary(nb_e) 

# tabeau frequence cumuler 
t_fc_cum<-cumsum(t_nb_e/length(nb_e))
# diagrame en escalier sur un vect de frequence cumuler
plot(t_fc_cum,type="s")

# courbe des frequences cumulee = fonction repartition empirique => ecdf(vecteur)
c=ecdf(nb_e)
plot(c)

# importer in fichier .rda
load("/home/thomas/.cache/.fr-2AJteU/robinet.rda")




