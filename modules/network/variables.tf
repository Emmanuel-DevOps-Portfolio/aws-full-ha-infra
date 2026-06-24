# Project Name
variable "project_name" {
  type = string
}

# VPC CIDR Block
variable "vpc_cidr_block" {
  type = string
}

# PUBLIC SUBNETS CIDR BLOCKS
variable "public_subnet_cidr_blocks" {
  type = list(string)
}

# PRIVATE SUBNETS CIDR BLOCKS
variable "private_app_subnet_cidr_blocks" {
  type = list(string)
}

# PRIVATE SUBNETS CIDR BLOCKS
variable "private_db_subnet_cidr_blocks" {
  type = list(string)
}

variable "single_nat_gateway" {
  type    = bool
  default = false
}




