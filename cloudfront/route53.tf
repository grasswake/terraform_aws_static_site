resource "aws_route53_record" "www" {
  zone_id = local.zone_id
  name    = local.domain_name
  type    = "A"

  alias {
    name                   = aws_cloudfront_distribution.cfd.domain_name
    zone_id                = aws_cloudfront_distribution.cfd.hosted_zone_id
    evaluate_target_health = false
  }
}
