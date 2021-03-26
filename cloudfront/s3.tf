
resource "aws_s3_bucket" "origin_bucket" {
  bucket = data.terraform_remote_state.route53.outputs.main_zone_name
  acl    = "private"
}

resource "aws_s3_bucket_public_access_block" "origin_bucket" {
  bucket                  = aws_s3_bucket.origin_bucket.id
  block_public_acls       = true
  block_public_policy     = true
  ignore_public_acls      = true
  restrict_public_buckets = true
}

resource "aws_s3_bucket" "logging_bucket" {
  bucket = "cloudfront-logs.${data.terraform_remote_state.route53.outputs.main_zone_name}"
  acl    = "log-delivery-write"

  lifecycle_rule {
    id      = "s3-cloudfront-logs-transitions"
    enabled = true

    transition {
      days          = "93"
      storage_class = "STANDARD_IA"
    }

    transition {
      days          = "365"
      storage_class = "GLACIER"
    }
  }
}

resource "aws_s3_bucket_public_access_block" "logging_bucket" {
  bucket                  = aws_s3_bucket.logging_bucket.id
  block_public_acls       = true
  block_public_policy     = true
  ignore_public_acls      = true
  restrict_public_buckets = true
}
