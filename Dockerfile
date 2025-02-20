# Étape 1 : Utilisation d'une image Python légère
FROM python:3.12-slim

# Étape 2 : Définir le répertoire de travail
WORKDIR /app

# Étape 3 : Copier les fichiers nécessaires
COPY requirements.txt .

# Étape 4 : Installer les dépendances
RUN pip install --no-cache-dir -r requirements.txt

# Étape 5 : Copier le reste des fichiers
COPY app/ app/

# Étape 6 : Exposer le port Flask
EXPOSE 5000

# Étape 7 : Définir la commande de lancement
CMD ["python", "app/main.py"]
