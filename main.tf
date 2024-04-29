provider "aws" {
  region     = var.aws_region
  access_key = var.access_key
  secret_key = var.secret_key
}

module "ec2_instance" {
  source            = "./ec2_instance"
  aws_region        = var.aws_region
  ec2_ami           = var.ec2_ami
  ec2_instance_type = var.ec2_instance_type
  ec2_instance_name = var.ec2_name
  access_key        = var.access_key
  secret_key        = var.secret_key
  ec2_count         = var.ec2_count
  sg_name           = var.sg_name
}

module "s3_bucket" {
  source         = "./s3_bucket"
  s3_bucket_name = var.s3_bucket_name
}

module "vpc" {
  source                           = "./vpc"
  vpc_cidr_block                   = var.vpc_cidr_block
  public_subnet_cidr_block         = var.public_subnet_cidr_block
  public_subnet_availability_zone  = var.public_subnet_availability_zone
  private_subnet_cidr_block        = var.private_subnet_cidr_block
  private_subnet_availability_zone = var.private_subnet_availability_zone
}

module "iam_role" {
  source                = "./iam_role"
  iam_role_name         = var.iam_role_name
  iam_user_name         = var.iam_user_name
  iam_group_name        = var.iam_group_name
  group_membership_name = var.group_membership_name
}

