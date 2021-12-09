# terraform_aws_static_site

## ブログ

<https://blog.grasswake.me/tech_posts/1616684400>

## Terraform Command Sample

各パラメータは適宜変更してください。

### route53

```bash
terraform init  \
    -backend-config="access_key=AAAAAAAAAAAAAAAAAAAA" \
    -backend-config="secret_key=BBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBB"  \
    -backend-config="region=ap-northeast-1" \
    -backend-config="bucket=terraform-tfstate-sample"

terraform plan \
    -var="aws_access_key=AAAAAAAAAAAAAAAAAAAA" \
    -var="aws_secret_key=BBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBB"  \
    -var="zone_name=sample.com"

terraform apply \
    -var="aws_access_key=AAAAAAAAAAAAAAAAAAAA" \
    -var="aws_secret_key=BBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBB"  \
    -var="zone_name=sample.com"

terraform destroy \
    -var="aws_access_key=AAAAAAAAAAAAAAAAAAAA" \
    -var="aws_secret_key=BBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBB"  \
    -var="zone_name=sample.com"
```

### acm

```bash
terraform init  \
    -backend-config="access_key=AAAAAAAAAAAAAAAAAAAA" \
    -backend-config="secret_key=BBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBB"  \
    -backend-config="region=ap-northeast-1" \
    -backend-config="bucket=terraform-tfstate-sample"

terraform plan \
    -var="aws_access_key=AAAAAAAAAAAAAAAAAAAA" \
    -var="aws_secret_key=BBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBB"  \
    -var="backend_s3_bucket=terraform-tfstate-sample"

terraform apply \
    -var="aws_access_key=AAAAAAAAAAAAAAAAAAAA" \
    -var="aws_secret_key=BBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBB"  \
    -var="backend_s3_bucket=terraform-tfstate-sample"

terraform destroy \
    -var="aws_access_key=AAAAAAAAAAAAAAAAAAAA" \
    -var="aws_secret_key=BBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBB"  \
    -var="backend_s3_bucket=terraform-tfstate-sample"
```

### cloudfront

```bash
terraform init  \
    -backend-config="access_key=AAAAAAAAAAAAAAAAAAAA" \
    -backend-config="secret_key=BBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBB"  \
    -backend-config="region=ap-northeast-1" \
    -backend-config="bucket=terraform-tfstate-sample"

terraform plan \
    -var="aws_access_key=AAAAAAAAAAAAAAAAAAAA" \
    -var="aws_secret_key=BBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBB"  \
    -var="backend_s3_bucket=terraform-tfstate-sample"

terraform apply \
    -var="aws_access_key=AAAAAAAAAAAAAAAAAAAA" \
    -var="aws_secret_key=BBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBB"  \
    -var="backend_s3_bucket=terraform-tfstate-sample"

terraform destroy \
    -var="aws_access_key=AAAAAAAAAAAAAAAAAAAA" \
    -var="aws_secret_key=BBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBB"  \
    -var="backend_s3_bucket=terraform-tfstate-sample"
```
