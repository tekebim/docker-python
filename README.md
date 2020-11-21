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

> La commande `exec` permet de lancer un terminal de commande en bash au sein d'un container
`docker exec -it <mycontainer> bash`

* expliquer ce qu'est un port dans un container

> Le port d'un container permet de mapper le point d'entrée d'un container dans l'environnement. Ainsi on peut mapper des ports pour chaque container. Chacun de ces containers pourra écouter des points d'entrée différents afin d'être "rendu"

* vérifier en vous connectant à votre container qu'il est bien `up` et qu'il s'aggit bien

> La commande `docker ps` permet de montrer que le container est en cours d'execution et le mappage du PORTS permet de déterminer le point d'écoute 

## How to create python flask image
### First step organize project
* Folder /app 
    * with our projects python source app code
* requirements.txt file : determine the python app lib dependencies (flask in this project)
    > Le fichier requirements.txt peut alors être ajouté dans un système de gestion de versions comme faisant partie de votre application. Les utilisateurs peuvent alors installer tous les paquets nécessaires à l’application avec `install -r` 
* Dockerfile (needed for building custom image)

### Commands execution

Create a dockerfile
> From python's image in version 3.8

> WORKDIR : Specify the workdir (app in our case)

> ADD : add the current working dir on that image

> COPY : can be used to add specific files if included in sub directory ( especially requirements.txt)

> RUN : execute require commands

> CMD : then then command to start inside the container

```
# Set base image (host OS)
FROM python:3.8

# Set the working directory.
WORKDIR /app

# Copy and load files from directory
ADD . /app

# Copy the file from your host to your current location.
COPY requirements.txt .

# install dependencies
RUN pip install -r requirements.txt

# command to run on container start
CMD [ "python", "./app.py" ]
```

Alernative with Ubuntu starter :
```
# Use the official image as a parent image.
# Set base image (host OS)
FROM ubuntu:20.04
# FROM python:3.8

# Set the working directory.
WORKDIR /app

COPY . /app

# Copy and load files from directory
ADD . /app

# Copy the file from your host to your current location.
COPY requirements.txt .

# install dependencies
RUN apt-get -qq update -y \
  && apt-get -qq install -y python3-pip python3-dev \
  && cd /usr/local/bin \
  && ln -s /usr/bin/python3 python \
  && pip3 install --upgrade pip

RUN pip install -r requirements.txt

EXPOSE 80

# command to run on container start
CMD [ "python", "./app/app.py" ]
```

> Build our custom image from this whole project
`docker build -t python_3.8-flask .`

> Run the container on external port 5000
`docker run -d -p 5000:5000 python_3.8-flask`


# Deploy on Heroku platform :
View _docs/heroku-sheet.md for more details

[View this project online](https://floating-thicket-69219.herokuapp.com/)

API Endpoint [_GET METHOD ONLY] : 
* [books](https://floating-thicket-69219.herokuapp.com/api/books) *("all" by default)*
* [books/id](https://floating-thicket-69219.herokuapp.com/api/books/1)
* [books/title](https://floating-thicket-69219.herokuapp.com/api/books/un%20titre)

Template with data.json :
* [books](https://floating-thicket-69219.herokuapp.com/books/json)
* [books/id](https://floating-thicket-69219.herokuapp.com/books/json/258)
* [books/title](https://floating-thicket-69219.herokuapp.com/books/json/Coffeehouse)


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

