# ACM

## Requirements

| Name | Version |
|------|---------|
| terraform | = 0.14.7 |
| aws | = 3.32.0 |

## Providers

| Name | Version |
|------|---------|
| aws | = 3.32.0 |
| aws.us\_east | = 3.32.0 |
| terraform | n/a |

## Modules

No Modules.

## Resources

| Name |
|------|
| [aws_acm_certificate](https://registry.terraform.io/providers/hashicorp/aws/3.32.0/docs/resources/acm_certificate) |
| [aws_acm_certificate_validation](https://registry.terraform.io/providers/hashicorp/aws/3.32.0/docs/resources/acm_certificate_validation) |
| [aws_route53_record](https://registry.terraform.io/providers/hashicorp/aws/3.32.0/docs/resources/route53_record) |
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
| acm\_main\_cert\_arn | The ARN of the main certificate |
