terraform {
  backend "s3" {
    bucket         = "ityourway-state"
    # dynamodb_table = "terraform-state-lock-dynamo"
    encrypt        = "true"
    dynamodb_table = "" // No DynamoDB table used for locking
    key            = "terraform.tfstate"
    region         = "us-east-1"
  }
}