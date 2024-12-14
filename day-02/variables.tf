variable "region" {
  type    = string
  default = "ap-south-1"
}

variable "env" {
  type        = string
  description = "This is require for tagging the resource"
  default     = "dev"
}

variable "cidr" {
  type        = string
  description = "Define your own CIDR block"
  default     = "10.0.0.0/16"
}

variable "availability_zones" {
  description = "List of Availability Zones to use for subnets"
  type        = list(string)
  default     = ["us-west-1a", "us-west-1b", "us-west-1c"] # Replace with your region's AZs
}

variable "public_subnets" {
  description = "List of CIDR blocks for public subnets"
  type        = list(string)
  default     = ["10.0.1.0/24", "10.0.2.0/24", "10.0.3.0/24"] # Example CIDR blocks
}

variable "private_subnets" {
  description = "List of CIDR blocks for private subnets"
  type        = list(string)
  default     = ["10.0.4.0/24", "10.0.5.0/24", "10.0.6.0/24"] # Example CIDR blocks
}
