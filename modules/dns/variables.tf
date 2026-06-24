variable "project_name" {
  type = string
}

variable "domain_name" {
  description = "Domain or subdomain to point to the ALB e.g. app.skylumanex.click"
  type        = string
  default     = "app.skylumanex.click"
}

variable "hosted_zone_id" {
  description = "Existing Route 53 hosted zone ID for skylumanex.click"
  type        = string
}

variable "alb_dns_name" {
  description = "DNS name of the ALB from the compute module"
  type        = string
}

variable "alb_zone_id" {
  description = "Zone ID of the ALB from the compute module"
  type        = string
}