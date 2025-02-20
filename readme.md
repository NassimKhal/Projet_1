# Projet 1 - Flask App with Docker and CI/CD

## 🚀 Project Overview
This project is a simple **Flask web application** that is containerized with **Docker** and deployed automatically using **GitHub Actions**. The pipeline builds and pushes the Docker image to **Docker Hub** on every push to the `main` branch.

## 📂 Project Structure
```
Projet_1/
│── app/
│   ├── main.py        # Main Flask application
│── .github/           # GitHub Actions workflows
│   ├── workflows/
│       ├── ci-cd.yml  # CI/CD pipeline definition
│── requirements.txt   # Python dependencies
│── Dockerfile         # Docker configuration
│── .dockerignore      # Ignore files for Docker
│── README.md          # Project documentation
```

## 🛠️ Technologies Used
- **Python** (Flask)
- **Docker**
- **GitHub Actions** (CI/CD)
- **Docker Hub**

## 🔧 Installation & Running Locally
### 1️⃣ Clone the repository
```bash
git clone https://github.com/NassimKhal/Projet_1.git
cd Projet_1
```

### 2️⃣ Create a virtual environment & install dependencies
```bash
python -m venv venv
source venv/bin/activate  # On Windows, use 'venv\Scripts\activate'
pip install -r requirements.txt
```

### 3️⃣ Run the Flask application
```bash
python app/main.py
```
🚀 Open `http://127.0.0.1:5000/` in your browser.

## 🐳 Running with Docker
### 1️⃣ Build the Docker image
```bash
docker build -t fragmendal/projet1-flask:latest .
```

### 2️⃣ Run the Docker container
```bash
docker run -p 5000:5000 fragmendal/projet1-flask:latest
```
🚀 Open `http://127.0.0.1:5000/` in your browser.

## 🔄 CI/CD Pipeline (GitHub Actions)
The GitHub Actions workflow **automates the build and deployment**:
1. **Builds the Docker image**
2. **Pushes the image to Docker Hub**
3. **Runs tests (to be added)**

### How it Works?
- On every `push` or `pull request` to `main`, the pipeline executes automatically.
- You can check workflow runs here: [GitHub Actions](https://github.com/NassimKhal/Projet_1/actions)

## 🏗️ Future Improvements
- ✅ Add **automated tests** with `pytest`
- ✅ Deploy to a **Cloud VM** (AWS/GCP)
- ✅ Use **Nginx as a reverse proxy**
- ✅ Add **SSL with Let's Encrypt**

## 📝 License
This project is **open-source** and available under the **MIT License**.

---

👨‍💻 **Developed by:** [Nassim Khalfa](https://github.com/NassimKhal) 🚀

