variable "cidr_block" {
  type        = string
  default     = "10.0.0.0/16"
  description = "The ip range assign to your VPC"
}

variable "enable_dns_support" {
  type        = bool
  default     = true
  description = "Whether or not to activate support for DNS in the VPC."
}

variable "enable_dns_hostnames" {
  type        = bool
  default     = false
  description = "Whether or not to activate support for DNS hostnames in the VPC."
}

variable "assign_generated_ipv6_cidr_block" {
  type        = bool
  default     = true
  description = "Whether or not to assign a ipv6 cidr block to the VPC."
}

variable "vpc_name" {
  type        = string
  default     = "MyTerraformVPC"
  description = "A name tag for the new created VPC."
}

variable "public_subnets" {
  type = list(object({
    cidr_block        = string
    availability_zone = string
    name              = string
  }))
  description = "A list of public subnets."
}

variable "private_subnets" {
  type = list(object({
    cidr_block        = string
    availability_zone = string
    name              = string
  }))
  description = "A list of private subnets."
}