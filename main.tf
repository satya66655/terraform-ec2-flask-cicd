provider "aws" {
  region = "us-east-1"
}

resource "aws_instance" "web" {
  ami           = "ami-0953476d60561c955"  # Amazon Linux 2023 (us-east-1)
  instance_type = "t2.micro"
  key_name      = var.key_name

  vpc_security_group_ids = [var.existing_sg_id]

  tags = {
    Name = "WebAppServer"
  }
}

