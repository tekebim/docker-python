# Commandes principales

* `docker attach` : Joindre à un conteneur en cours d’exécution \
* `docker build` : Construire une nouvelle image à partir du code source dans le PATH \
* `docker commit` : Créer une nouvelle image à partir des changements d’un conteneur \
* `docker cp` : Copier des fichiers ou des dossiers depuis le PATH d’un conteneur vers le HOSTDIR ou vers STDOUT \
* `docker create` : Créer un nouveau conteneur \
* `docker diff` : Inspectez changements sur le système de fichiers d’un conteneur \
* `docker events` : Obtenir des événements en temps réel depuis le serveur \
* `docker exec` : Exécuter une commande dans le conteneur en cours d’exécution \
* `docker export` : Exporter le contenu d’un système de fichiers d’une archive tar vers STDOUT \
* `docker history` : Afficher l’historique d’une image Docker \
* `docker images` : Lister des images \
* `docker import` : Créer une image de système de fichiers vide et y importer le contenu d’une l’archive (.tar, .tar.gz, .tgz, .bzip, .tar.xz, .txz), puis éventuellement y ajouter une étiquette (tag) \
* `docker info` : Afficher l’ensemble des informations système \
* `docker inspect` : Afficher les informations de bas niveau sur un conteneur ou une image Docker \
* `docker kill` : Tuer un conteneur en cours d’exécution en utilisant SIGKILL ou un signal spécifié \
* `docker load` : Chargez une image à partir d’une archive tar sur STDIN \
* `docker login` : Inscrivez-vous ou connectez-vous à le Docker Register (HUB) \
* `docker logout` : Déconnexion du Docker Register (HUB) \
* `docker logs` : Fetch des journaux d’un conteneur \
* `docker pause` : Mettre en pause tous les processus dans un conteneur \
* `docker port` : Liste les ports d’un conteneur, ou rechercher les ports “public” NATé vers un PRIVATE_PORT \
* `docker ps` : Liste de conteneurs \
* `docker pull` : Récupérer une image ou un repository à partir du Docker HUB \
* `docker push` : Publier une image ou un repository vers le Docker HUB \
* `docker rename` : Renommer un conteneur Docker \
* `docker restart` : Redémarrez un conteneur en cours d’exécution \
* `docker rm` : Supprimer une ou plusieurs conteneurs \
* `docker rmi` : Supprimer une ou plusieurs images \
* `docker run` : Exécuter une commande dans un nouveau conteneur \
* `docker save` : Enregistrer une image dans une archive tar (streaming vers STDOUT par défaut) \
* `docker search` : Rechercher des images sur le Docker Hub \
* `docker start` : Lancer un ou plusieurs conteneurs arrêtés \
* `docker stats` : Afficher l’utilisation des ressources d’un ou plusieurs conteneurs sous la forme d’un flux \
* `docker stop` : Arrêtez un conteneur en cours d’exécution en envoyant SIGTERM et SIGKILL après une période de grâce \
* `docker tag` : Étiqueter une image dans un repository \
* `docker top` : Afficher les processus en cours d’exécution d’un conteneur \
* `docker unpause` : Réactiver tous les processus dans un conteneur \
* `docker version` : Afficher les informations de version Docker \
* `docker wait` : Bloquer jusqu’à l’arrêt du conteneur, puis imprime son code de sortie \


# Docker Cheat Sheet
> Test docker

`docker run hello-world`

### Display the version of docker installed:
```docker version```

### Pull, create, and run 'hello-world' all in one command:
```docker run hello-world```

### Lifecycle

* [`docker create`](https://docs.docker.com/engine/reference/commandline/create) creates a container but does not start it.
* [`docker rename`](https://docs.docker.com/engine/reference/commandline/rename/) allows the container to be renamed.
* [`docker run`](https://docs.docker.com/engine/reference/commandline/run) creates and starts a container in one operation.
* [`docker rm`](https://docs.docker.com/engine/reference/commandline/rm) deletes a container.
* [`docker update`](https://docs.docker.com/engine/reference/commandline/update/) updates a container's resource limits.

### Starting and Stopping

* [`docker start`](https://docs.docker.com/engine/reference/commandline/start) starts a container so it is running.
* [`docker stop`](https://docs.docker.com/engine/reference/commandline/stop) stops a running container.
* [`docker restart`](https://docs.docker.com/engine/reference/commandline/restart) stops and starts a container.
* [`docker pause`](https://docs.docker.com/engine/reference/commandline/pause/) pauses a running container, "freezing" it in place.
* [`docker unpause`](https://docs.docker.com/engine/reference/commandline/unpause/) will unpause a running container.
* [`docker wait`](https://docs.docker.com/engine/reference/commandline/wait) blocks until running container stops.
* [`docker kill`](https://docs.docker.com/engine/reference/commandline/kill) sends a SIGKILL to a running container.
* [`docker attach`](https://docs.docker.com/engine/reference/commandline/attach) will connect to a running container.

### Info

* [`docker ps`](https://docs.docker.com/engine/reference/commandline/ps) shows running containers.
* [`docker logs`](https://docs.docker.com/engine/reference/commandline/logs) gets logs from container.  (You can use a custom log driver, but logs is only available for `json-file` and `journald` in 1.10).
* [`docker inspect`](https://docs.docker.com/engine/reference/commandline/inspect) looks at all the info on a container (including IP address).
* [`docker events`](https://docs.docker.com/engine/reference/commandline/events) gets events from container.
* [`docker port`](https://docs.docker.com/engine/reference/commandline/port) shows public facing port of container.
* [`docker top`](https://docs.docker.com/engine/reference/commandline/top) shows running processes in container.
* [`docker stats`](https://docs.docker.com/engine/reference/commandline/stats) shows containers' resource usage statistics.
* [`docker diff`](https://docs.docker.com/engine/reference/commandline/diff) shows changed files in the container's FS.

`docker ps -a` shows running and stopped containers.
`docker stats --all` shows a list of all containers, default shows just running.

### Import / Export

* [`docker cp`](https://docs.docker.com/engine/reference/commandline/cp) copies files or folders between a container and the local filesystem.
* [`docker export`](https://docs.docker.com/engine/reference/commandline/export) turns container filesystem into tarball archive stream to STDOUT.

### Executing Commands

* [`docker exec`](https://docs.docker.com/engine/reference/commandline/exec) to execute a command in container.

