terraform {
  required_version = "= 1.0.11"

  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "= 3.68.0"
    }
  }

  backend "s3" {
    key     = "acm/terraform.tfstate"
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
