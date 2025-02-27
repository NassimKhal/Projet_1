resource "aws_instance" "app_server" {
  ami           = "ami-053b0d53c279acc90"  # Ubuntu 22.04 LTS
  instance_type = var.instance_type
  key_name      = "projet1-key"

  tags = {
    Name = "Projet1-EC2"
  }

  security_groups = [aws_security_group.app_sg.name]


  user_data = file("${path.module}/install.sh")    # Utilisation du fichier externe install.sh pour l'installation automatique
  user_data_replace_on_change = true

}



resource "aws_security_group" "app_sg" {
  name        = "projet1-sg"
  description = "Securite pour Projet 1"

  ingress {
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]  # Autoriser SSH (à restreindre plus tard)
  }

  ingress {
    from_port   = 5000
    to_port     = 5000
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]  # Autoriser Flask
  }

  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }
}
