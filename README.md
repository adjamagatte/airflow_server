# Installation de airflow-server

# Prérequis
## Docker

folow this tutoriel (https://www.digitalocean.com/community/tutorials/how-to-install-and-use-docker-on-debian-10)
## docker-compose (dernière version)
follow this tutoriel (https://docs.docker.com/compose/install/)

# Airflow installation

## Création de l'images qui nous servira de base

Build a docker image from Dockerfile... (lancer cette commande dans le dossier contenant le fichier Dockerfile)

`docker build . -t qistaairflow:0.0.2`

## initalisation 

1) Create volumes : 

Dans un dossier vide lancer ces commandes : 

`mkdir ./dags ./logs ./plugins`

`echo -e "AIRFLOW_UID=$(id -u)\nAIRFLOW_GID=0" > .env`

2) Run database migrations and create the first user account

`docker-compose up airflow-init`

3) Running Airflow

`docker-compose up -d`

# Some commandes and informations importantes

## Docker commandes.

1) Execute some commande on a container

`docker exec -it contenaire_id bash`


