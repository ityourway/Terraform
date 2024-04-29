# specify the required provider version to use
terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "4.67.0" 
    }
  }
}
# Configure the AWS Provider
provider "aws" {
  region = "us-east-1"
}
#creating the lightsail instance
resource "aws_lightsail_instance" "lightsail_instance" {
  name          = "centos_devops"
  availability_zone = "us-east-1b"
  blueprint_id  = "centos_7_2009_01"
  bundle_id     = "small_1_0"
  tags = {
    name = "ityourway devops"
    env  = "prod"
  }
}
