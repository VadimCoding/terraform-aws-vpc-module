output "arn" {
  value = aws_vpc.my_vpc.arn
  description = "The ARN of the newly created VPC."
}

output "id" {
  value = aws_vpc.my_vpc.id
  description = "The ID of the newly created VPC."
}

output "enable_dns_support" {
  value = aws_vpc.my_vpc.enable_dns_support
  description = "If the DNS support is activated for the VPC."
}

output "enable_dns_hostnames" {
  value = aws_vpc.my_vpc.enable_dns_hostnames
  description = "If the DNS hostnames support is activated for the VPC."
}

output "main_route_table_id" {
  value = aws_vpc.my_vpc.main_route_table_id
  description = "The ID of the main route table associated to the VPC."
}

output "default_network_acl_id" {
  value = aws_vpc.my_vpc.default_network_acl_id
  description = "The ID of the defautl network ACL associated to the VPC."
}

output "default_security_group_id " {
  value = aws_vpc.my_vpc.default_security_group_id
  description = "The ID of the security group associated to the VPC."
}

output "default_route_table_id" {
    value = aws_vpc.my_vpc.default_route_table_id
    description = "The ID of the default route table associated to the VPC."
}

output "tags" {
    value = aws_vpc.my_vpc.tags_all
    description = "Tags associated to the VPC resource."
}