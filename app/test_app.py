# Importation des modules nécessaires
import pytest  # Outil de test en Python
from app.main import app  # Importation de l'application Flask

# Définition d'une fixture client Flask pour simuler des requêtes
@pytest.fixture
def client():
    """Cette fonction crée un client de test pour Flask.
       Elle permet d'exécuter des requêtes sur l'application sans réellement la lancer.
    """
    app.config["TESTING"] = True  # Active le mode TEST de Flask pour éviter les effets de bord
    with app.test_client() as client:  # Crée un client de test Flask
        yield client  # Retourne le client pour l'utiliser dans les tests

# Définition du test unitaire
def test_home(client):
    """Ce test envoie une requête GET à la route '/' et vérifie :
       - Que la réponse HTTP est bien un code 200 (OK)
       - Que le texte retourné est bien 'Hello, DevOps!'
    """
    response = client.get("/")  # Envoie une requête GET à "/"
    assert response.status_code == 200  # Vérifie que le statut HTTP est 200 (succès)
    assert response.data == b"Hello, DevOps!"  # Vérifie que le contenu retourné est bien attendu
