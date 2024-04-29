output "s3_bucket_id" {
  value = module.s3_bucket.bucket_id
}

output "vpc_id" {
  value = module.vpc.vpc_id
}

output "iam_role_arn" {
  value = module.iam_role.role_arn
}