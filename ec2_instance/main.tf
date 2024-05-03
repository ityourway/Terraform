variable "aws_region" {}
variable "ec2_ami" {}
variable "ec2_instance_type" {}
variable "access_key" {}
variable "secret_key" {}
variable "ec2_count" {}
variable "sg_name" {}
variable "ec2_instance_name" {}

provider "aws" {
  region     = var.aws_region
  access_key = var.access_key
  secret_key = var.secret_key
}

# Define a security group
resource "aws_security_group" "example_security_group" {
  name        = var.sg_name
  description = "Example security group for EC2 instances"

  # Define ingress rule(s) for allowing incoming traffic
  ingress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }

  # Define egress rule(s) for allowing outgoing traffic
  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }
}

resource "aws_instance" "example" {
  ami           = var.ec2_ami
  instance_type = var.ec2_instance_type
  count         = var.ec2_count
  tags = {
    Name = var.ec2_instance_name
  }  

  # Associate the EC2 instance with the security group
  security_groups = [aws_security_group.example_security_group.name]
}





