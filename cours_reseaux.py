
# Unzip le lab dans le tmp
tar xvfz Documents/tp_l3_info/s5/reseau/tp1/labobs.tar.gz -C /tmp/

# lancer le lab
lstart

# arrter le lab
lcrash

# voir les parametres des interfaces reseaux
ifconfig

# ping un serveur/machine 2fois
ping 192.168.1.1 -c 2

# ping avec nom de dommaide de alice
ping alice.blue.net

# lancer sonde sur un reseau, sur le terminal hote
./ecoute lana  # => vdump "$1" | wireshark -i - -k &

# lancer wireshark sur le rezo lana
vdump lana | wireshark -i - -k

# affiche table de routage
route -n

# affiche les route traverser avant d'arriver a 80.8.0.50
traceroute -n 80.8.0.50

# retourn tout les server de ce nom de domaine
dig -t ANY nom_de_domaine

# retourn ip de ce site
dig -t ANY www.nom_de_domaine

# affiche la page web dans le terminal
lynx 'http://www.lexique.com'

# (= netcat) outil test des protocoles client-serveur. Il permet d'ouvrir des connexions réseau (sockets) et de réaliser des échanges en ligne de commande
nc <ip/nom_de_domaine> <port>
# ex : recuperer la page (avec les balises html) www.perdu.com dans le terminal
    nc -v www.perdu.com 80
    GET / HTTP/1.0
    Host: www.perdu.com
    # Une ligne vide
    # Valider par la touche Entrée


# scan les port ouvert sur un hote
nmap <ip>

# envoie d'un email
pine alice@jmail.com


###############################
#                             #
#            MAIL             #
#                             #
###############################  

# 1) touver le port du smtp 
nmap smtp.jmail.com

# 2) lancer socket ligne de commande
nc -v smtp.jmail.com 25
# affiche : 220 dio.univ-orleans.fr ESMTP Postfix (Debian/GNU)

# 3) dire que on envoie mail
HELO Chao
# affiche : 250 dio.univ-orleans.fr

# 4) qui envoie le mail
MAIL FROM: martin.delacourt@univ-orleans.fr
# affiche : 250 2.1.0 Ok

# 5) qui recoit le mail
RCPT TO: mdelacourt@dim.uchile.cl
# affiche : 250 2.1.5 Ok

# 6) dire envoi de donner suplementaire
DATA 
# affiche : 354 End data with <CR><LF>.<CR><LF>

# envoie les donner en +
From: Martin Delacourt <martin.delacourt@univ-orleans.fr>
To: Martin Delacourt <mdelacourt@dim.uchile.cl>
cc : ...
Date: Tue, 4 Sep 2010 15:21:45 +0200
Subject: Hola!Que tal?
body...
. # /!\ pas oublier se point ! 
# affiche : .250 2.0.0 Ok: queued as CECC47AB0B

# 7) Quiter la socket
QUIT
# affiche : 221 2.0.0 Bye



###############################
#                             #
#         UDP server          #
#                             #
###############################  

#!/usr/bin/python
##
# UDP echo server
# port 7777
##
from socket import *

# create an UDP socket instance
s=socket(AF_INET, SOCK_DGRAM)
# associate the socket to local port 7777
s.bind(('0.0.0.0', 7777))
print "Listening on port 7777"
while True:
  # wait for an incoming message
  (data,addr)=s.recvfrom(512)
  print "%s: %d %s" % (addr, len(data), repr(data))
  # send it back!
  s.sendto(data,addr)



###############################
#                             #
#         TCP server          #
#                             #
###############################  

#!/usr/bin/python
##
# Simple HTTP client 
##
from socket import *
from sys import argv

if len(argv)<>2:
  print "usage: %s server" % argv[0]
  exit(1)

# transform server name into IP address
sname=argv[1]
server=gethostbyname(sname)
print "%s address is %s" % (sname, server)
# create a TCP socket instance
s=socket()
# connecting to server on port 80
s.connect((server,80))
# send HTTP GET method
s.send("""GET / HTTP/1.0
Host: %s
Accept: */*

""" % (sname,) )


# autre exemple de server tcp

##
#  creat sc envoie mail avec a chaque une reponse du serveur
## 

from socket import *
# ducoup ecrit direct var=serveur avec string de l ip
serveur="10.0.1.1"
# par default : socket()=socket(AFINET, SOCK_STREAM)
s=socket()
s.connect((serveur,25))
data=s.recv(512)
print "data 1 = %s " % (data)

if "220" in data:
    s.send('HELO Chao\n')
    data=s.recv(512)
    print "data 2 = %s " % (data)
    if "250" in data:
        s.send('MAIL FROM: martin.delacourt@univ-orleans.fr\n')
        data=s.recv(512)
        print "data 3 = %s " % (data)
# ...








###############################
#                             #
#         	 Tp 6             #
#                             #
###############################  

#
# 	partie 1
#

# dans alice, on veut configurer rtA

# on se connect a rtA (=192.168.128.1) sur le port zebra avec l'outil  de routage Quagga
telnet 192.168.128.1 zebra # mdp=zebra
enable # prend les droit 
configure terminal # passe mode edition de configuration
hostname rtA # change le nom de l'hote
interface eth1 # on vas conf l'interface eth1
ip address 10.0.1.1/24 # on dit que le eth0 = 10.0.1.1
quit # sort de la conf
write # on sauvgarde la conf dans /etc/quagga/zebra.conf
quit # on sort de rtA

# on sauvegarde le zebra.conf de rtA ; mpd=root
ssh 192.168.128.1 cp /etc/quagga/zebra.conf /hostlab/rtA/etc/quagga/


#
# 	partie 2
#

# dans alice, on veut configurer la table de routage de rtA

# on se connect a rtA (=192.168.128.1) sur le port zebra avec l'outil  de routage Quagga
telnet 192.168.128.1 zebra # mdp=zebra
enable # prend les droit 
configure terminal # passe mode edition de configuration
ip route 192.168.130.0/23 10.0.1.2 # pour aller sur rtB
exit
write



#
# 	partie 3
#

# dasn alice, routage dynamique rip sur rtA0

# on se connect a rtA (=192.168.128.1) sur le port ripd avec l'outil  de routage Quagga
telnet rtA0 ripd # mdp=zebra
enable # prend les droit 
configure terminal # passe mode edition de configuration
route rip
reditribute connected # prepare a redistribuer les msg rip a ses voisin
network 10.0.1.0/24 # ajout protocole rip sur le reseaux 10.0.1.0 (=ab)
quit
write




###############################
#                             #
#         	 Tp 8             #		IpV6
#                             #
###############################  


# on cree une machie alice avec eth0 relier au rezo A
vstart alice --eth0=A

# sur alice: 
ip link set eth0 up # on active le eth0
ip addr add 2001:ad54::1/64 dev eth0 # affecte cette ip a alice en eth0

ip route add 2001:ad38::/64 via 2001:ad54::2 # route pr aller sur le rezo B on passe par la pasereil 2001:ad54::2 qui est celle du routeur R sur le rezo A 

# lance le routeur r
vstart r --eth0=A --eth1=B
ip link set eth0 up 
ip link set eth1 up 

# change les ip des interface
ip addr add 2001:ad54::2/64 dev eth0 
ip addr add 2001:ad38::2/64 dev eth1

# on dit que R devient un vrai routeur
echo 1 > /proc/sys/net/ipv6/conf/all/forwarding





ifconfig 200.1.128.100/17 # pr aatribuer l'ip
route add default gw 200.1.128.2 # pr mettre une route