output "alb_dns_name" {
  description = "DNS name of the Application Load Balancer"
  value       = module.compute.alb_dns_name
}

output "app_url" {
  description = "URL to access the application"
  value       = module.dns.app_url
}

output "db_endpoint" {
  description = "RDS database connection endpoint"
  value       = module.database.db_endpoint
}

output "vpc_id" {
  description = "ID of the VPC"
  value       = module.networking.vpc_id
}

output "nat_gateway_ids" {
  description = "IDs of the NAT Gateways"
  value       = module.networking.nat_gateway_ids
}