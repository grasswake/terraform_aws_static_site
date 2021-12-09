<!-- BEGIN_TF_DOCS -->

## Requirements

| Name                                                                     | Version  |
| ------------------------------------------------------------------------ | -------- |
| <a name="requirement_terraform"></a> [terraform](#requirement_terraform) | = 1.0.11 |
| <a name="requirement_aws"></a> [aws](#requirement_aws)                   | = 3.68.0 |

## Providers

| Name                                             | Version |
| ------------------------------------------------ | ------- |
| <a name="provider_aws"></a> [aws](#provider_aws) | 3.68.0  |

## Modules

No modules.

## Resources

| Name                                                                                                              | Type     |
| ----------------------------------------------------------------------------------------------------------------- | -------- |
| [aws_route53_zone.main](https://registry.terraform.io/providers/hashicorp/aws/3.68.0/docs/resources/route53_zone) | resource |

## Inputs

| Name                                                                        | Description | Type     | Default            | Required |
| --------------------------------------------------------------------------- | ----------- | -------- | ------------------ | :------: |
| <a name="input_aws_access_key"></a> [aws_access_key](#input_aws_access_key) | n/a         | `any`    | n/a                |   yes    |
| <a name="input_aws_secret_key"></a> [aws_secret_key](#input_aws_secret_key) | n/a         | `any`    | n/a                |   yes    |
| <a name="input_region"></a> [region](#input_region)                         | n/a         | `string` | `"ap-northeast-1"` |    no    |
| <a name="input_zone_name"></a> [zone_name](#input_zone_name)                | n/a         | `any`    | n/a                |   yes    |

## Outputs

| Name                                                                                   | Description                                                            |
| -------------------------------------------------------------------------------------- | ---------------------------------------------------------------------- |
| <a name="output_main_name_servers"></a> [main_name_servers](#output_main_name_servers) | A list of main name servers in associated (or default) delegation set. |
| <a name="output_main_zone_id"></a> [main_zone_id](#output_main_zone_id)                | The Main Hosted Zone ID                                                |
| <a name="output_main_zone_name"></a> [main_zone_name](#output_main_zone_name)          | The Main Hosted Zone Name                                              |

<!-- END_TF_DOCS -->
