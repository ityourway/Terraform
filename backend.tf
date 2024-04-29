terraform {
  backend "s3" {
    bucket         = "ityourway-state"
    dynamodb_table = "terraform-state-lock-dynamo"
    encrypt        = "true"
    key            = "terraform.tfstate"
    region         = "us-east-1"
  }
}