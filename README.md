# docker-python
Python container with docker

1. Comprendre la différence entre images et containers et à quoi sert un `Dockerfile`
> Une image est un ensemble de couches que l'on décrit pour construire "build" notre application

> L'instance de cette image s'appelle un conteneur

### Run hello-world
```
docker run hello-world
```
### Run ubuntu
```
docker run ubuntu
```
### Run first docker
```docker run -dp 80:80 docker/getting-started```
Open your browser to http://localhost
```
-d - run the container in detached mode (in the background)
-p 80:80 - map port 80 of the host to port 80 in the container
docker/getting-started - the image to use
```

* expliquer les commandes docker `build`, `run` et `exec`

> La commande `build` permet de créer une image à partir d'une liste de fichiers / répertoire de notre projet et ou en incluant des dépendances (d'autres docker images)

> La commande `run` permet de lancer une nouvelle instance à partir d'une image "built"

* expliquer ce qu'est un port dans un container

> Le port d'un container permet de mapper le point d'entrée d'un container dans l'environnement. Ainsi on peut mapper des ports pour chaque container. Chacun de ces containers pourra écouter des points d'entrée différents afin d'être "rendu"

## TP Docker & Flask 

**Quickstart Docker** 

* comprendre la différence entre images et containers et à quoi sert un `Dockerfile` 
* installer docker sur votre machine (Ubuntu de préférence, si pas de machine ubuntu vous pouvez faire un double boot ou bien installer une VM en profitant de l'accès gratuit d'un éditeur cloud GCP, Azur, AWS...) 
* lancer votre premier container ubuntu, l'équivalent du *hello-world* de docker  
* regarder si votre container est bien lancer 
* faire un résumé type `cheat sheet` des principales commandes dockers relatives aux images et containers
	* expliquer les commandes docker `build`, `run` et `exec`
	* expliquer ce qu'est un port dans un container
* vérifier en vous connectant à votre container qu'il est bien `up` et qu'il s'aggit bien 
* **(bonus)** lancer un petit container applicatif en python avec docker 

**Docker et Python**

* écrire un Dockerfile contenant : 
	* Une image ubuntu ou python 
	* installer python3, pip3 et vim 
	* une installation automatique du fichier `requirements.txt` que vous écrirez à la racine de votre application. Renseignez vous sur ce fichier `requirements.txt`, que fait il, pourquoi est il utile? 
	* un repertoire app (dans lequel se trouvera votre application flask) 
	* une exposition du port de votre choix
	* pour finir le container devra lancer votre application flask sur le port de votre choix précédemment exposé.  
	* **(bonus)** déployer votre application sur le cloud gratuit [heroku](https://www.heroku.com)

