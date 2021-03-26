resource "aws_acm_certificate" "main_cert" {
  provider                  = aws.us_east
  domain_name               = data.terraform_remote_state.route53.outputs.main_zone_name
  subject_alternative_names = ["www.${data.terraform_remote_state.route53.outputs.main_zone_name}"]
  validation_method         = "DNS"
}

resource "aws_route53_record" "main_cnames" {
  for_each = {
    for dvo in aws_acm_certificate.main_cert.domain_validation_options : dvo.domain_name => {
      name   = dvo.resource_record_name
      record = dvo.resource_record_value
      type   = dvo.resource_record_type
    }
  }
  zone_id = data.terraform_remote_state.route53.outputs.main_zone_id
  name    = each.value.name
  records = [each.value.record]
  type    = each.value.type
  ttl     = 60
}

resource "aws_acm_certificate_validation" "main_cert_validation" {
  provider                = aws.us_east
  certificate_arn         = aws_acm_certificate.main_cert.arn
  validation_record_fqdns = [for record in aws_route53_record.main_cnames : record.fqdn]
}
