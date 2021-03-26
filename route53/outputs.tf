output "main_zone_id" {
  value       = aws_route53_zone.main.zone_id
  description = "The Main Hosted Zone ID"
}

output "main_name_servers" {
  value       = aws_route53_zone.main.name_servers
  description = "A list of main name servers in associated (or default) delegation set."
}

output "main_zone_name" {
  value       = aws_route53_zone.main.name
  description = "The Main Hosted Zone Name"
}