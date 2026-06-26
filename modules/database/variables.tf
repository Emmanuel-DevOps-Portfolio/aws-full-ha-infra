variable "project_name" {
  description = "The name of the project"
  type        = string
}

variable "vpc_id" {
  description = "The ID of the VPC"
  type        = string
}

variable "private_db_subnet_ids" {
  description = "List of private subnet IDs for the database"
  type        = list(string)
}

variable "app_security_group_id" {
  description = "The ID of the security group for the application"
  type        = string
}

variable "db_engine" {
  description = "The database engine to use (e.g., mysql, postgres)"
  type        = string
}

variable "db_engine_version" {
  description = "The version of the database engine"
  type        = string
}

variable "db_instance_class" {
  description = "The instance class for the database"
  type        = string
}

variable "db_allocated_storage" {
  description = "The allocated storage size for the database in GB"
  type        = number
}

variable "db_name" {
  description = "The name of the database"
  type        = string
}

variable "db_username" {
  description = "The username for the database"
  type        = string
}


variable "multi_az" {
  description = "Whether to create a Multi-AZ database instance"
  type        = bool
  default     = true
}