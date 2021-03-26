terraform {
  required_version = "= 0.14.7"
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "= 3.32.0"
    }
  }
  backend "s3" {
    bucket  = "terraform-tfstate-1234567899"
    key     = "route53/terraform.tfstate"
    region  = "ap-northeast-1"
    encrypt = true
  }
}

provider "aws" {
  access_key = var.aws_access_key
  secret_key = var.aws_secret_key
  region     = var.region
}

locals {
  zone_name = "dev2.7890987.xyz"
}

resource "aws_route53_zone" "main" {
  name = local.zone_name
}
