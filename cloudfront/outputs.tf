output "cloudfront_id" {
  description = " The identifier for the distribution. For example: EDFDVBD632BHDS5."
  value       = aws_cloudfront_distribution.cfd.id
}

output "cloudfront_arn" {
  description = "The ARN (Amazon Resource Name) for the distribution. For example: arn:aws:cloudfront::123456789012:distribution/EDFDVBD632BHDS5, where 123456789012 is your AWS account ID."
  value       = aws_cloudfront_distribution.cfd.arn
}

output "cloudfront_domain_name" {
  description = "The Cloudfront domain name"
  value       = aws_cloudfront_distribution.cfd.domain_name
}

output "origin_bucket_arn" {
  description = "The ARN of the bucket. Will be of format arn:aws:s3:::bucketname."
  value       = aws_s3_bucket.origin_bucket.arn
}