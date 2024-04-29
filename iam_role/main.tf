variable "iam_role_name" {}
variable "iam_user_name" {}
variable "iam_group_name" {}
variable "group_membership_name" {}

resource "aws_iam_role" "example_role" {
  name               = var.iam_role_name
  assume_role_policy = jsonencode({
    Version   = "2012-10-17",
    Statement = [{
      Effect    = "Allow",
      Principal = {
        Service = "ec2.amazonaws.com"
      },
      Action    = "sts:AssumeRole"
    }]
  })

  tags = {
    Name = "Example IAM Role"
  }
}

resource "aws_iam_policy" "example_policy" {
  name        = "example-policy"
  description = "An example IAM policy"
  policy      = jsonencode({
    Version   = "2012-10-17",
    Statement = [{
      Effect    = "Allow",
      Action    = "s3:*",
      Resource  = "*"
    }]
  })
}

resource "aws_iam_role_policy_attachment" "example_attachment" {
  role       = aws_iam_role.example_role.name
  policy_arn = aws_iam_policy.example_policy.arn
}

resource "aws_iam_user" "example_user" {
  name = var.iam_user_name
}

resource "aws_iam_group" "example_group" {
  name = var.iam_group_name
}

resource "aws_iam_group_membership" "example_membership" {
  name  = var.group_membership_name
  group = aws_iam_group.example_group.name
  users = [aws_iam_user.example_user.name]
}
