# CloudFront

## Requirements

| Name | Version |
|------|---------|
| terraform | = 0.14.7 |
| aws | = 3.32.0 |

## Providers

| Name | Version |
|------|---------|
| archive | n/a |
| aws | = 3.32.0 |
| aws.us\_east | = 3.32.0 |
| terraform | n/a |

## Modules

No Modules.

## Resources

| Name |
|------|
| [archive_file](https://registry.terraform.io/providers/hashicorp/archive/latest/docs/data-sources/file) |
| [aws_cloudfront_distribution](https://registry.terraform.io/providers/hashicorp/aws/3.32.0/docs/resources/cloudfront_distribution) |
| [aws_cloudfront_origin_access_identity](https://registry.terraform.io/providers/hashicorp/aws/3.32.0/docs/resources/cloudfront_origin_access_identity) |
| [aws_iam_policy_document](https://registry.terraform.io/providers/hashicorp/aws/3.32.0/docs/data-sources/iam_policy_document) |
| [aws_iam_role](https://registry.terraform.io/providers/hashicorp/aws/3.32.0/docs/resources/iam_role) |
| [aws_iam_role_policy_attachment](https://registry.terraform.io/providers/hashicorp/aws/3.32.0/docs/resources/iam_role_policy_attachment) |
| [aws_lambda_function](https://registry.terraform.io/providers/hashicorp/aws/3.32.0/docs/resources/lambda_function) |
| [aws_route53_record](https://registry.terraform.io/providers/hashicorp/aws/3.32.0/docs/resources/route53_record) |
| [aws_s3_bucket](https://registry.terraform.io/providers/hashicorp/aws/3.32.0/docs/resources/s3_bucket) |
| [aws_s3_bucket_policy](https://registry.terraform.io/providers/hashicorp/aws/3.32.0/docs/resources/s3_bucket_policy) |
| [aws_s3_bucket_public_access_block](https://registry.terraform.io/providers/hashicorp/aws/3.32.0/docs/resources/s3_bucket_public_access_block) |
| [terraform_remote_state](https://registry.terraform.io/providers/hashicorp/terraform/latest/docs/data-sources/remote_state) |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| aws\_access\_key | n/a | `any` | n/a | yes |
| aws\_secret\_key | n/a | `any` | n/a | yes |
| region | n/a | `string` | `"ap-northeast-1"` | no |

## Outputs

| Name | Description |
|------|-------------|
| cloudfront\_arn | The ARN (Amazon Resource Name) for the distribution. For example: arn:aws:cloudfront::123456789012:distribution/EDFDVBD632BHDS5, where 123456789012 is your AWS account ID. |
| cloudfront\_domain\_name | The Cloudfront domain name |
| cloudfront\_id | The identifier for the distribution. For example: EDFDVBD632BHDS5. |
| origin\_bucket\_arn | The ARN of the bucket. Will be of format arn:aws:s3:::bucketname. |
