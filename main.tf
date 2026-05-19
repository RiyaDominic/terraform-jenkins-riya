
provider "aws" {
  region = "ap-south-2"
}

resource "aws_security_group" "riya_sg" {
  name        = "terraform-riya-sg"
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

resource "aws_s3_bucket" "riya_bucket" {
  bucket = "riya-terraform-bucket-demo-2026"
}

resource "aws_instance" "riya_ec2" {
  ami           = "ami-0f918f7e67a3323f0"
  instance_type = "t3.micro"

  vpc_security_group_ids = [aws_security_group.riya_sg.id]

  tags = {
    Name = "Riya-Terraform-EC2"
  }
}
