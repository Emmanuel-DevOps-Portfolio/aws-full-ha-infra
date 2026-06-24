variable "project_name" {
  type = string
}

variable "vpc_id" {
  description = "VPC ID from the networking module"
  type        = string
}

variable "public_subnet_ids" {
  description = "Public subnet IDs for the ALB"
  type        = list(string)
}

variable "private_app_subnet_ids" {
  description = "Private app subnet IDs for the ASG"
  type        = list(string)
}

variable "instance_type" {
  type    = string
  default = "t3.micro"
}

variable "key_pair_name" {
  type = string
}

variable "asg_min_size" {
  type    = number
  default = 2
}

variable "asg_max_size" {
  type    = number
  default = 6
}

variable "asg_desired_capacity" {
  type    = number
  default = 3
}

variable "cpu_high_threshold" {
  type    = number
  default = 60
}

variable "cpu_low_threshold" {
  type    = number
  default = 20
}