terraform {
  required_version = "= 1.1.6"

  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "= 4.2.0"
    }
  }

  backend "s3" {
    key     = "cloudfront/terraform.tfstate"
    encrypt = true
  }
}


provider "aws" {
  access_key = var.aws_access_key
  secret_key = var.aws_secret_key
  region     = var.region
}

provider "aws" {
  alias      = "us_east"
  access_key = var.aws_access_key
  secret_key = var.aws_secret_key
  region     = "us-east-1"
}

data "terraform_remote_state" "route53" {
  backend = "s3"
  config = {
    bucket     = var.backend_s3_bucket
    key        = "route53/terraform.tfstate"
    access_key = var.aws_access_key
    secret_key = var.aws_secret_key
    region     = var.backend_s3_region
  }
}

data "terraform_remote_state" "acm" {
  backend = "s3"
  config = {
    bucket     = var.backend_s3_bucket
    key        = "acm/terraform.tfstate"
    access_key = var.aws_access_key
    secret_key = var.aws_secret_key
    region     = var.backend_s3_region
  }
}

locals {
  domain_name = data.terraform_remote_state.route53.outputs.main_zone_name

  zone_id = data.terraform_remote_state.route53.outputs.main_zone_id

  uppercase_domain_name = join("" , [for v in split(".", local.domain_name): title(v)])
}