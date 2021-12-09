terraform {
  required_version = "= 1.0.11"

  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "= 3.68.0"
    }
  }

  backend "s3" {
    key     = "route53/terraform.tfstate"
    encrypt = true
  }
}

provider "aws" {
  access_key = var.aws_access_key
  secret_key = var.aws_secret_key
  region     = var.region
}

resource "aws_route53_zone" "main" {
  name = var.zone_name
}
