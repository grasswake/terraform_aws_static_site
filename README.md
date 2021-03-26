# terraform_aws_static_site

## Qiita

<https://qiita.com/grasswake/items/0c4b3ad4465dd311a2d6>

## Terraform Command Sample

```bash
terraform init  \
    -backend-config="access_key=AAAAAAAAAAAAAAAAAAAA" \
    -backend-config="secret_key=BBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBB"  \
    -backend-config="region=ap-northeast-1"

terraform plan \
    -var='aws_access_key=AAAAAAAAAAAAAAAAAAAA' \
    -var='aws_secret_key=BBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBB'

terraform apply \
    -var='aws_access_key=AAAAAAAAAAAAAAAAAAAA' \
    -var='aws_secret_key=BBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBB'

terraform destroy \
    -var='aws_access_key=AAAAAAAAAAAAAAAAAAAA' \
    -var='aws_secret_key=BBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBB'
```
