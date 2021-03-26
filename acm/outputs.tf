output "acm_main_cert_arn" {
  description = "The ARN of the main certificate"
  value       = aws_acm_certificate.main_cert.arn
}
