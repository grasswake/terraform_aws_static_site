<!-- BEGIN_TF_DOCS -->

## Requirements

| Name                                                                     | Version  |
| ------------------------------------------------------------------------ | -------- |
| <a name="requirement_terraform"></a> [terraform](#requirement_terraform) | = 1.0.11 |
| <a name="requirement_aws"></a> [aws](#requirement_aws)                   | = 3.68.0 |

## Providers

| Name                                                               | Version |
| ------------------------------------------------------------------ | ------- |
| <a name="provider_aws"></a> [aws](#provider_aws)                   | 3.68.0  |
| <a name="provider_terraform"></a> [terraform](#provider_terraform) | n/a     |

## Modules

No modules.

## Resources

| Name                                                                                                                                                          | Type        |
| ------------------------------------------------------------------------------------------------------------------------------------------------------------- | ----------- |
| [aws_cloudfront_cache_policy.this](https://registry.terraform.io/providers/hashicorp/aws/3.68.0/docs/resources/cloudfront_cache_policy)                       | resource    |
| [aws_cloudfront_distribution.cfd](https://registry.terraform.io/providers/hashicorp/aws/3.68.0/docs/resources/cloudfront_distribution)                        | resource    |
| [aws_cloudfront_function.basic_auth](https://registry.terraform.io/providers/hashicorp/aws/3.68.0/docs/resources/cloudfront_function)                         | resource    |
| [aws_cloudfront_origin_access_identity.oai](https://registry.terraform.io/providers/hashicorp/aws/3.68.0/docs/resources/cloudfront_origin_access_identity)    | resource    |
| [aws_cloudfront_origin_request_policy.this](https://registry.terraform.io/providers/hashicorp/aws/3.68.0/docs/resources/cloudfront_origin_request_policy)     | resource    |
| [aws_route53_record.www](https://registry.terraform.io/providers/hashicorp/aws/3.68.0/docs/resources/route53_record)                                          | resource    |
| [aws_s3_bucket.logging_bucket](https://registry.terraform.io/providers/hashicorp/aws/3.68.0/docs/resources/s3_bucket)                                         | resource    |
| [aws_s3_bucket.origin_bucket](https://registry.terraform.io/providers/hashicorp/aws/3.68.0/docs/resources/s3_bucket)                                          | resource    |
| [aws_s3_bucket_policy.origin_bucket_policy](https://registry.terraform.io/providers/hashicorp/aws/3.68.0/docs/resources/s3_bucket_policy)                     | resource    |
| [aws_s3_bucket_public_access_block.logging_bucket](https://registry.terraform.io/providers/hashicorp/aws/3.68.0/docs/resources/s3_bucket_public_access_block) | resource    |
| [aws_s3_bucket_public_access_block.origin_bucket](https://registry.terraform.io/providers/hashicorp/aws/3.68.0/docs/resources/s3_bucket_public_access_block)  | resource    |
| [aws_iam_policy_document.origin_access_identity_policy](https://registry.terraform.io/providers/hashicorp/aws/3.68.0/docs/data-sources/iam_policy_document)   | data source |
| [terraform_remote_state.acm](https://registry.terraform.io/providers/hashicorp/terraform/latest/docs/data-sources/remote_state)                               | data source |
| [terraform_remote_state.route53](https://registry.terraform.io/providers/hashicorp/terraform/latest/docs/data-sources/remote_state)                           | data source |

## Inputs

| Name                                                                                 | Description | Type     | Default            | Required |
| ------------------------------------------------------------------------------------ | ----------- | -------- | ------------------ | :------: |
| <a name="input_aws_access_key"></a> [aws_access_key](#input_aws_access_key)          | n/a         | `any`    | n/a                |   yes    |
| <a name="input_aws_secret_key"></a> [aws_secret_key](#input_aws_secret_key)          | n/a         | `any`    | n/a                |   yes    |
| <a name="input_backend_s3_bucket"></a> [backend_s3_bucket](#input_backend_s3_bucket) | n/a         | `any`    | n/a                |   yes    |
| <a name="input_backend_s3_region"></a> [backend_s3_region](#input_backend_s3_region) | n/a         | `string` | `"ap-northeast-1"` |    no    |
| <a name="input_region"></a> [region](#input_region)                                  | n/a         | `string` | `"ap-northeast-1"` |    no    |

## Outputs

| Name                                                                                                  | Description                                                                                                                                                                 |
| ----------------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| <a name="output_cloudfront_arn"></a> [cloudfront_arn](#output_cloudfront_arn)                         | The ARN (Amazon Resource Name) for the distribution. For example: arn:aws:cloudfront::123456789012:distribution/EDFDVBD632BHDS5, where 123456789012 is your AWS account ID. |
| <a name="output_cloudfront_domain_name"></a> [cloudfront_domain_name](#output_cloudfront_domain_name) | The Cloudfront domain name                                                                                                                                                  |
| <a name="output_cloudfront_id"></a> [cloudfront_id](#output_cloudfront_id)                            | The identifier for the distribution. For example: EDFDVBD632BHDS5.                                                                                                          |
| <a name="output_origin_bucket_arn"></a> [origin_bucket_arn](#output_origin_bucket_arn)                | The ARN of the bucket. Will be of format arn:aws:s3:::bucketname.                                                                                                           |

<!-- END_TF_DOCS -->
