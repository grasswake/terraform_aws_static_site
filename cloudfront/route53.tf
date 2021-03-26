resource "aws_route53_record" "www" {
  zone_id = data.terraform_remote_state.route53.outputs.main_zone_id
  name    = data.terraform_remote_state.route53.outputs.main_zone_name
  type    = "A"

  alias {
    name                   = aws_cloudfront_distribution.cfd.domain_name
    zone_id                = aws_cloudfront_distribution.cfd.hosted_zone_id
    evaluate_target_health = false
  }
}
