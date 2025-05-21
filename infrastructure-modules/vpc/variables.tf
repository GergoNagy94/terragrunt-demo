variable "env" {
  description = "Environment name"
  type        = string
}

variable "cidr_block" {
  description = "CIDR block for the VPC"
  type        = string
  default     = "10.0.0.0/16"
}

variable "azs" {
  description = "List of availability zones"
  type        = list(string)
}

variable "private_subnets" {
  description = "List of private subnet CIDR blocks"
  type        = list(string)
}

variable "public_subnets" {
  description = "List of public subnet CIDR blocks"
  type        = list(string)
}

variable "private_subnet_tags" {
  description = "Tags for private subnets"
  type        = map(any)
}

variable "public_subnet_tags" {
  description = "Tags for public subnets"
  type        = map(any)
}