# Projet 1 - Flask App with Docker, Terraform, and CI/CD

## 🚀 Project Overview
This project is a simple **Flask web application** that is containerized with **Docker**, deployed automatically using **GitHub Actions**, and provisioned on **AWS EC2** using **Terraform**. The pipeline builds and pushes the Docker image to **Docker Hub** on every push to the `main` branch. The application is automatically deployed on an AWS EC2 instance with Terraform.

## 📂 Project Structure
```
Projet_1/
│── app/
│   ├── main.py        # Main Flask application
│── .github/           # GitHub Actions workflows
│   ├── workflows/
│       ├── ci-cd.yml  # CI/CD pipeline definition
│── terraform/         # Terraform configurations
│   ├── main.tf        # Infrastructure definition
│   ├── variables.tf   # Terraform variables
│   ├── outputs.tf     # Terraform outputs
│   ├── install.sh     # Script to configure the EC2 instance
│── requirements.txt   # Python dependencies
│── Dockerfile         # Docker configuration
│── .dockerignore      # Ignore files for Docker
│── README.md          # Project documentation
```

## 🛠️ Technologies Used
- **Python** (Flask)
- **Docker**
- **Terraform** (Infrastructure as Code)
- **AWS EC2** (Cloud Hosting)
- **GitHub Actions** (CI/CD)
- **Docker Hub**
- **pytest** (Automated Testing)

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

## 🐓 Running with Docker
### 1️⃣ Build the Docker image
```bash
docker build -t fragmendal/projet1-flask:latest .
```

### 2️⃣ Run the Docker container
```bash
docker run -p 5000:5000 fragmendal/projet1-flask:latest
```
🚀 Open `http://127.0.0.1:5000/` in your browser.

## 🔄 Infrastructure as Code (Terraform)
This project uses **Terraform** to provision an **AWS EC2 instance** and automatically deploy the application.

### 1️⃣ Initialize Terraform
```bash
cd terraform
terraform init
```

### 2️⃣ Apply Terraform configuration
```bash
terraform apply -auto-approve
```

### 3️⃣ Retrieve the EC2 instance IP
```bash
echo $(terraform output instance_ip)
```
🚀 Open `http://<instance_ip>:5000/` in your browser.

## 🛠️ CI/CD Pipeline (GitHub Actions)
The GitHub Actions workflow **automates the build, test, and deployment process**:
1. **Runs unit tests with pytest**
2. **Builds the Docker image**
3. **Pushes the image to Docker Hub**
4. **Deploys the application on AWS EC2 with Terraform**

### How it Works?
- On every `push` or `pull request` to `main`, the pipeline executes automatically.
- You can check workflow runs here: [GitHub Actions](https://github.com/NassimKhal/Projet_1/actions)

## 🌟 Automated Testing with Pytest
This project includes **unit tests** using `pytest` to ensure the application runs correctly.

### 1️⃣ Install pytest
```bash
pip install pytest
```

### 2️⃣ Run tests
```bash
pytest
```

## 🏗️ Future Improvements
- ✅ Implement **automated rollback** on failure
- ✅ Add a **database** (PostgreSQL or DynamoDB)
- ✅ Use **AWS Lambda** for scaling
- ✅ Deploy using **Kubernetes (EKS)**

## 📃 License
This project is **open-source** and available under the **MIT License**.

---

👨‍💻 **Developed by:** [Nassim Khalfa](https://github.com/NassimKhal) 🚀

