## Requirements

No requirements.

## Providers

No providers.

## Modules

| Name | Source | Version |
|------|--------|---------|
| <a name="module_ec2_instance"></a> [ec2\_instance](#module\_ec2\_instance) | ./ec2_instance | n/a |
| <a name="module_iam_role"></a> [iam\_role](#module\_iam\_role) | ./iam_role | n/a |
| <a name="module_s3_bucket"></a> [s3\_bucket](#module\_s3\_bucket) | ./s3_bucket | n/a |
| <a name="module_vpc"></a> [vpc](#module\_vpc) | ./vpc | n/a |

## Resources

No resources.

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_access_key"></a> [access\_key](#input\_access\_key) | AWS access key ID. | `string` | n/a | yes |
| <a name="input_aws_region"></a> [aws\_region](#input\_aws\_region) | The AWS region to deploy resources. | `string` | n/a | yes |
| <a name="input_ec2_ami"></a> [ec2\_ami](#input\_ec2\_ami) | The ID of the AMI to use for the EC2 instance. | `string` | n/a | yes |
| <a name="input_ec2_count"></a> [ec2\_count](#input\_ec2\_count) | How many instance to launch | `number` | n/a | yes |
| <a name="input_ec2_instance_type"></a> [ec2\_instance\_type](#input\_ec2\_instance\_type) | The type of EC2 instance to launch. | `string` | n/a | yes |
| <a name="input_ec2_name"></a> [ec2\_name](#input\_ec2\_name) | test instance | `string` | n/a | yes |
| <a name="input_group_membership_name"></a> [group\_membership\_name](#input\_group\_membership\_name) | name for group membership | `string` | n/a | yes |
| <a name="input_iam_group_name"></a> [iam\_group\_name](#input\_iam\_group\_name) | name of the group | `string` | n/a | yes |
| <a name="input_iam_role_name"></a> [iam\_role\_name](#input\_iam\_role\_name) | The name of the IAM role. | `string` | n/a | yes |
| <a name="input_iam_user_name"></a> [iam\_user\_name](#input\_iam\_user\_name) | the namme for the new user | `string` | n/a | yes |
| <a name="input_private_subnet_availability_zone"></a> [private\_subnet\_availability\_zone](#input\_private\_subnet\_availability\_zone) | The availability zone for the private subnet. | `string` | n/a | yes |
| <a name="input_private_subnet_cidr_block"></a> [private\_subnet\_cidr\_block](#input\_private\_subnet\_cidr\_block) | The CIDR block for the private subnet. | `string` | n/a | yes |
| <a name="input_public_subnet_availability_zone"></a> [public\_subnet\_availability\_zone](#input\_public\_subnet\_availability\_zone) | The availability zone for the public subnet. | `string` | n/a | yes |
| <a name="input_public_subnet_cidr_block"></a> [public\_subnet\_cidr\_block](#input\_public\_subnet\_cidr\_block) | The CIDR block for the public subnet. | `string` | n/a | yes |
| <a name="input_s3_bucket_name"></a> [s3\_bucket\_name](#input\_s3\_bucket\_name) | The name of the S3 bucket. | `string` | n/a | yes |
| <a name="input_secret_key"></a> [secret\_key](#input\_secret\_key) | AWS secret access key. | `string` | n/a | yes |
| <a name="input_sg_name"></a> [sg\_name](#input\_sg\_name) | security group name | `string` | n/a | yes |
| <a name="input_vpc_cidr_block"></a> [vpc\_cidr\_block](#input\_vpc\_cidr\_block) | The CIDR block for the VPC. | `string` | n/a | yes |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_iam_role_arn"></a> [iam\_role\_arn](#output\_iam\_role\_arn) | n/a |
| <a name="output_s3_bucket_id"></a> [s3\_bucket\_id](#output\_s3\_bucket\_id) | n/a |
| <a name="output_vpc_id"></a> [vpc\_id](#output\_vpc\_id) | n/a |
