resource "aws_vpc" "vpc" {
  cidr_block                       = var.cidr_block
  enable_dns_support               = var.enable_dns_support
  enable_dns_hostnames             = var.enable_dns_hostnames
  assign_generated_ipv6_cidr_block = var.assign_generated_ipv6_cidr_block
  tags = {
    Name = var.vpc_name
  }
}

resource "aws_subnet" "public" {
  vpc_id                  = aws_vpc.vpc.id
  cidr_block              = var.public_subnet["cidr_block"]
  availability_zone       = var.public_subnet["availability_zone"]
  map_public_ip_on_launch = true

  tags = {
    Name = var.public_subnet["name"]
  }
}

resource "aws_subnet" "private" {
  vpc_id                  = aws_vpc.vpc.id
  cidr_block              = var.private_subnet["cidr_block"]
  availability_zone       = var.private_subnet["availability_zone"]
  map_public_ip_on_launch = false

  tags = {
    Name = var.private_subnet["name"]
  }
}