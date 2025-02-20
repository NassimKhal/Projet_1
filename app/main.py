# Importation de Flask pour créer une application web
from flask import Flask  

# Création de l'application Flask
app = Flask(__name__)

# Définition de la route principale "/"
@app.route("/")
def home():
    """Cette fonction est appelée lorsque quelqu'un accède à la route '/'.
       Elle retourne un simple message 'Hello, DevOps!' en tant que réponse HTTP.
    """
    return "Hello, DevOps!"  # La réponse HTTP retournée au client

# Vérifie si ce fichier est exécuté directement (et non importé en tant que module)
if __name__ == "__main__":
    # Démarre le serveur Flask sur l'adresse 0.0.0.0 (accessible de l'extérieur) et sur le port 5000
    app.run(host="0.0.0.0", port=5000)
