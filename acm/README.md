<!-- BEGIN_TF_DOCS -->

## Requirements

| Name                                                                     | Version |
| ------------------------------------------------------------------------ | ------- |
| <a name="requirement_terraform"></a> [terraform](#requirement_terraform) | = 1.1.6 |
| <a name="requirement_aws"></a> [aws](#requirement_aws)                   | = 4.2.0 |

## Providers

| Name                                                                     | Version |
| ------------------------------------------------------------------------ | ------- |
| <a name="provider_aws"></a> [aws](#provider_aws)                         | = 4.2.0 |
| <a name="provider_aws.us_east"></a> [aws.us_east](#provider_aws.us_east) | = 4.2.0 |
| <a name="provider_terraform"></a> [terraform](#provider_terraform)       | n/a     |

## Modules

No modules.

## Resources

| Name                                                                                                                                                         | Type        |
| ------------------------------------------------------------------------------------------------------------------------------------------------------------ | ----------- |
| [aws_acm_certificate.main_cert](https://registry.terraform.io/providers/hashicorp/aws/4.2.0/docs/resources/acm_certificate)                                  | resource    |
| [aws_acm_certificate_validation.main_cert_validation](https://registry.terraform.io/providers/hashicorp/aws/4.2.0/docs/resources/acm_certificate_validation) | resource    |
| [aws_route53_record.main_cnames](https://registry.terraform.io/providers/hashicorp/aws/4.2.0/docs/resources/route53_record)                                  | resource    |
| [terraform_remote_state.route53](https://registry.terraform.io/providers/hashicorp/terraform/latest/docs/data-sources/remote_state)                          | data source |

## Inputs

| Name                                                                                 | Description | Type     | Default            | Required |
| ------------------------------------------------------------------------------------ | ----------- | -------- | ------------------ | :------: |
| <a name="input_aws_access_key"></a> [aws_access_key](#input_aws_access_key)          | n/a         | `any`    | n/a                |   yes    |
| <a name="input_aws_secret_key"></a> [aws_secret_key](#input_aws_secret_key)          | n/a         | `any`    | n/a                |   yes    |
| <a name="input_backend_s3_bucket"></a> [backend_s3_bucket](#input_backend_s3_bucket) | n/a         | `any`    | n/a                |   yes    |
| <a name="input_backend_s3_region"></a> [backend_s3_region](#input_backend_s3_region) | n/a         | `string` | `"ap-northeast-1"` |    no    |
| <a name="input_region"></a> [region](#input_region)                                  | n/a         | `string` | `"ap-northeast-1"` |    no    |

## Outputs

| Name                                                                                   | Description                     |
| -------------------------------------------------------------------------------------- | ------------------------------- |
| <a name="output_acm_main_cert_arn"></a> [acm_main_cert_arn](#output_acm_main_cert_arn) | The ARN of the main certificate |

<!-- END_TF_DOCS -->
