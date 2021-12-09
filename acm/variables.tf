variable "aws_access_key" {}
variable "aws_secret_key" {}
variable "region" {
  default = "ap-northeast-1"
}
variable "backend_s3_bucket" {}
variable "backend_s3_region" {
  default = "ap-northeast-1"
}