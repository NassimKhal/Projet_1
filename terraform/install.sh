#!/bin/bash
# Rediriger toutes les sorties du script vers un fichier log
exec > /var/log/user-data.log 2>&1
echo "=== Début du script d'installation ==="

# Mettre à jour le système
sudo apt update -y
sudo apt upgrade -y

# Installer Docker
echo "=== Installation de Docker ==="
sudo apt install -y docker.io
sudo systemctl start docker
sudo systemctl enable docker

# Ajouter l'utilisateur ubuntu à Docker pour éviter sudo
sudo usermod -aG docker ubuntu
# Forcer l'application du groupe docker immédiatement
newgrp docker

# Installer Python et pip
echo "=== Installation de Python et Flask ==="
sudo apt install -y python3 python3-pip
sudo pip3 install flask

# Télécharger et exécuter l’application Flask avec Docker
echo "=== Lancement de l'application Flask ==="
sudo docker pull fragmendal/projet1-flask:latest
sudo docker run -d -p 5000:5000 fragmendal/projet1-flask:latest

echo "=== Fin du script d'installation ==="
