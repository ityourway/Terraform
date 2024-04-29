# Use variables from the root variables.tf file
variable "s3_bucket_name" {}

resource "aws_s3_bucket" "example_bucket" {
  bucket = var.s3_bucket_name

  # Access control settings
  acl    = "private"

  # Versioning configuration
  versioning {
    enabled = true
  }

  # Encryption settings
  server_side_encryption_configuration {
    rule {
      apply_server_side_encryption_by_default {
        sse_algorithm = "AES256"
      }
    }
  }

  tags = {
    Name = "Example S3 Bucket"
  }

  # Additional configuration options can be added here
}
