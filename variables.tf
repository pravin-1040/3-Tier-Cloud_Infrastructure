# VPC
variable "vpc_cidr" {
  description = "CIDR block for the VPC"
  default     = "10.0.0.0/16"
}

# Public Subnets
variable "public_subnet_cidrs" {
  description = "CIDR blocks for public subnets"
  type        = list(string)
  default     = ["10.0.1.0/24", "10.0.2.0/24"]
}

# Private App Subnets
variable "private_app_subnet_cidrs" {
  description = "CIDR blocks for private application subnets"
  type        = list(string)
  default     = ["10.0.11.0/24", "10.0.12.0/24"]
}

# Private DB Subnets
variable "private_db_subnet_cidrs" {
  description = "CIDR blocks for private database subnets"
  type        = list(string)
  default     = ["10.0.21.0/24", "10.0.22.0/24"]
}

# Instance Types
variable "app_instance_type" {
  description = "EC2 instance type for app servers"
  default     = "t3.micro"
}

# RDS Configuration
variable "db_instance_type" {
  description = "RDS instance type"
  default     = "db.t3.micro"
}

variable "db_name" {
  description = "Database name"
  default     = "hrdb"
}

variable "db_username" {
  description = "Database master username"
  default     = "admin"
}

variable "db_password" {
  description = "Database master password"
  default     = "Password123!"  # For learning only; never use plain password in production
  sensitive   = true
}

# Region
variable "region" {
  description = "AWS region"
  default     = "ap-south-1"
}
