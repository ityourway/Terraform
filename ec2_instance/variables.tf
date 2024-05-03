variable "ec2_name" {
  description = "test instance"
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

variable "ec2_count" {
  description = "How many instance to launch"
  type        = number
}
