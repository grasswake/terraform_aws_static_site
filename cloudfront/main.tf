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
    key     = "cloudfront/terraform.tfstate"
    region  = "ap-northeast-1"
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
    bucket     = "terraform-tfstate-1234567899"
    key        = "route53/terraform.tfstate"
    access_key = var.aws_access_key
    secret_key = var.aws_secret_key
    region     = "ap-northeast-1"
  }
}

data "terraform_remote_state" "acm" {
  backend = "s3"
  config = {
    bucket     = "terraform-tfstate-1234567899"
    key        = "acm/terraform.tfstate"
    access_key = var.aws_access_key
    secret_key = var.aws_secret_key
    region     = "ap-northeast-1"
  }
}
