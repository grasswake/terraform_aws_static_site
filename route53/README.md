# Route53

## Requirements

| Name | Version |
|------|---------|
| terraform | = 0.14.7 |
| aws | = 3.32.0 |

## Providers

| Name | Version |
|------|---------|
| aws | = 3.32.0 |

## Modules

No Modules.

## Resources

| Name |
|------|
| [aws_route53_zone](https://registry.terraform.io/providers/hashicorp/aws/3.32.0/docs/resources/route53_zone) |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| aws\_access\_key | n/a | `any` | n/a | yes |
| aws\_secret\_key | n/a | `any` | n/a | yes |
| region | n/a | `string` | `"ap-northeast-1"` | no |

## Outputs

| Name | Description |
|------|-------------|
| main\_name\_servers | A list of main name servers in associated (or default) delegation set. |
| main\_zone\_id | The Main Hosted Zone ID |
| main\_zone\_name | The Main Hosted Zone Name |
