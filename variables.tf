variable "aws_region" {
  description = "The AWS region to deploy resources."
  type        = string
}

variable "ec2_ami" {
  description = "The ID of the AMI to use for the EC2 instance."
  type        = string
}

variable "ec2_instance_type" {
  description = "The type of EC2 instance to launch."
  type        = string
}

variable "ec2_name" {
  description = "test instance"
  type        = string
}

variable "ec2_count" {
  description = "How many instance to launch"
  type        = number
}

variable "s3_bucket_name" {
  description = "The name of the S3 bucket."
  type        = string
}

variable "vpc_cidr_block" {
  description = "The CIDR block for the VPC."
  type        = string
}

variable "public_subnet_cidr_block" {
  description = "The CIDR block for the public subnet."
  type        = string
}

variable "public_subnet_availability_zone" {
  description = "The availability zone for the public subnet."
  type        = string
}

variable "private_subnet_cidr_block" {
  description = "The CIDR block for the private subnet."
  type        = string
}

variable "private_subnet_availability_zone" {
  description = "The availability zone for the private subnet."
  type        = string
}

variable "iam_role_name" {
  description = "The name of the IAM role."
  type        = string
}
variable "iam_user_name" {
  description = "the namme for the new user"
  type        = string
}

variable "iam_group_name" {
  description = "name of the group"
  type        = string
}

variable "access_key" {
  description = "AWS access key ID."
  type        = string
}

variable "secret_key" {
  description = "AWS secret access key."
  type        = string
}

variable "group_membership_name" {
  description = "name for group membership "
  type        = string
}
variable "sg_name" {
  description = "security group name "
  type        = string
}
