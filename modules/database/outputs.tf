output "db_endpoint" {
  description = "Connection endpoint for the RDS instance"
  value       = aws_db_instance.this.endpoint
}

output "db_security_group_id" {
  description = "Security group ID of the database tier"
  value       = aws_security_group.db.id
}

output "db_secret_arn" {
  description = "ARN of the Secrets Manager secret containing the DB password"
  value       = aws_db_instance.this.master_user_secret[0].secret_arn
}