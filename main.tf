provider "aws" {
  region = "us-east-1"
}

resource "aws_instance" "web" {
  ami           = "ami-0953476d60561c955"  # Amazon Linux 2023 (us-east-1)
  instance_type = "t2.micro"
  key_name      = "886436941748_NV-Mar-25"  # Use existing key manually created

  vpc_security_group_ids = [aws_security_group.web_sg.id]

  tags = {
    Name = "WebAppServer"
  }
}

resource "aws_security_group" "web_sg" {
  name        = "flask-app-sg_1"
  description = "Allow SSH and HTTP"

  ingress {
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  ingress {
    from_port   = 80
    to_port     = 80
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }
}

