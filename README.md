# AWS VPC Terraform module
Terraform module which deploy a VPC.

<img src="https://img.shields.io/badge/aws-4.26.0-orange"> <img src="https://img.shields.io/badge/terraform-0.13-blueviolet">


## Usage
```tf
module "vpc" {
  source = "github.com/VadimCoding/terraform-aws-vpc-module"

  cidr_block = "10.0.0.0/16"
  enable_dns_support = true
  enable_dns_hostnames = true
  assign_generated_ipv6_cidr_block = true
  name = "my-vpc-from-module"
}
```

<!-- BEGIN_TF_DOCS -->
## Requirements

No requirements.

## Providers

| Name | Version |
|------|---------|
| <a name="provider_aws"></a> [aws](#provider\_aws) | n/a |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [aws_vpc.vpc](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/vpc) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_assign_generated_ipv6_cidr_block"></a> [assign\_generated\_ipv6\_cidr\_block](#input\_assign\_generated\_ipv6\_cidr\_block) | Whether or not to assign a ipv6 cidr block to the VPC. | `bool` | `true` | no |
| <a name="input_cidr_block"></a> [cidr\_block](#input\_cidr\_block) | The ip range assign to your VPC | `string` | `"10.0.0.0/16"` | no |
| <a name="input_enable_dns_hostnames"></a> [enable\_dns\_hostnames](#input\_enable\_dns\_hostnames) | Whether or not to activate support for DNS hostnames in the VPC. | `bool` | `false` | no |
| <a name="input_enable_dns_support"></a> [enable\_dns\_support](#input\_enable\_dns\_support) | Whether or not to activate support for DNS in the VPC. | `bool` | `true` | no |
| <a name="input_name"></a> [name](#input\_name) | A name tag for the new created VPC. | `string` | `"MyTerraformVPC"` | no |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_arn"></a> [arn](#output\_arn) | The ARN of the newly created VPC. |
| <a name="output_default_network_acl_id"></a> [default\_network\_acl\_id](#output\_default\_network\_acl\_id) | The ID of the defautl network ACL associated to the VPC. |
| <a name="output_default_route_table_id"></a> [default\_route\_table\_id](#output\_default\_route\_table\_id) | The ID of the default route table associated to the VPC. |
| <a name="output_default_security_group_id"></a> [default\_security\_group\_id](#output\_default\_security\_group\_id) | The ID of the security group associated to the VPC. |
| <a name="output_enable_dns_hostnames"></a> [enable\_dns\_hostnames](#output\_enable\_dns\_hostnames) | If the DNS hostnames support is activated for the VPC. |
| <a name="output_enable_dns_support"></a> [enable\_dns\_support](#output\_enable\_dns\_support) | If the DNS support is activated for the VPC. |
| <a name="output_id"></a> [id](#output\_id) | The ID of the newly created VPC. |
| <a name="output_main_route_table_id"></a> [main\_route\_table\_id](#output\_main\_route\_table\_id) | The ID of the main route table associated to the VPC. |
| <a name="output_tags"></a> [tags](#output\_tags) | Tags associated to the VPC resource. |
<!-- END_TF_DOCS -->
