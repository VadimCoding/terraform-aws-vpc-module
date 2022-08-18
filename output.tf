output "VPC_arn" {
  value       = aws_vpc.vpc.arn
  description = "The ARN of the newly created VPC."
}

output "VPC_id" {
  value       = aws_vpc.vpc.id
  description = "The ID of the newly created VPC."
}

output "VPC_enable_dns_support" {
  value       = aws_vpc.vpc.enable_dns_support
  description = "If the DNS support is activated for the VPC."
}

output "VPC_enable_dns_hostnames" {
  value       = aws_vpc.vpc.enable_dns_hostnames
  description = "If the DNS hostnames support is activated for the VPC."
}

output "VPC_main_route_table_id" {
  value       = aws_vpc.vpc.main_route_table_id
  description = "The ID of the main route table associated to the VPC."
}

output "VPC_default_network_acl_id" {
  value       = aws_vpc.vpc.default_network_acl_id
  description = "The ID of the defautl network ACL associated to the VPC."
}

output "VPC_default_security_group_id" {
  value       = aws_vpc.vpc.default_security_group_id
  description = "The ID of the security group associated to the VPC."
}

output "VPC_default_route_table_id" {
  value       = aws_vpc.vpc.default_route_table_id
  description = "The ID of the default route table associated to the VPC."
}

output "VPC_tags" {
  value       = aws_vpc.vpc.tags_all
  description = "Tags associated to the VPC resource."
}

output "PUB_SUB_arns" {
  value       = aws_subnet.public.*.arn
  description = "ARN of the public subnet."
}

output "PUB_SUB_ids" {
  value       = aws_subnet.public.*.id
  description = "ID of the public subnet."
}

output "PRIV_SUB_arnss" {
  value       = aws_subnet.private.*.arn
  description = "ARN of the private subnet."
}

output "PRIV_SUB_ids" {
  value       = aws_subnet.private.*.id
  description = "ID of the private subnet."
}