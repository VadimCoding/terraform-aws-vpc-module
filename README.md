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
| [aws_subnet.private](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/subnet) | resource |
| [aws_subnet.public](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/subnet) | resource |
| [aws_vpc.vpc](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/vpc) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_assign_generated_ipv6_cidr_block"></a> [assign\_generated\_ipv6\_cidr\_block](#input\_assign\_generated\_ipv6\_cidr\_block) | Whether or not to assign a ipv6 cidr block to the VPC. | `bool` | `true` | no |
| <a name="input_cidr_block"></a> [cidr\_block](#input\_cidr\_block) | The ip range assign to your VPC | `string` | `"10.0.0.0/16"` | no |
| <a name="input_enable_dns_hostnames"></a> [enable\_dns\_hostnames](#input\_enable\_dns\_hostnames) | Whether or not to activate support for DNS hostnames in the VPC. | `bool` | `false` | no |
| <a name="input_enable_dns_support"></a> [enable\_dns\_support](#input\_enable\_dns\_support) | Whether or not to activate support for DNS in the VPC. | `bool` | `true` | no |
| <a name="input_private_subnet"></a> [private\_subnet](#input\_private\_subnet) | The configuraiton of the private subnet. | `map` | <pre>{<br>  "availability_zone": "eu-west-3b",<br>  "cidr_block": "10.0.101.0/24",<br>  "name": "private-subnet"<br>}</pre> | no |
| <a name="input_public_subnet"></a> [public\_subnet](#input\_public\_subnet) | The configuraiton of the public subnet. | `map` | <pre>{<br>  "availability_zone": "eu-west-3a",<br>  "cidr_block": "10.0.1.0/24",<br>  "name": "public-subnet"<br>}</pre> | no |
| <a name="input_vpc_name"></a> [vpc\_name](#input\_vpc\_name) | A name tag for the new created VPC. | `string` | `"MyTerraformVPC"` | no |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_PRIV_SUB_arn"></a> [PRIV\_SUB\_arn](#output\_PRIV\_SUB\_arn) | ARN of the private subnet. |
| <a name="output_PRIV_SUB_id"></a> [PRIV\_SUB\_id](#output\_PRIV\_SUB\_id) | ID of the private subnet. |
| <a name="output_PUB_SUB_arn"></a> [PUB\_SUB\_arn](#output\_PUB\_SUB\_arn) | ARN of the public subnet. |
| <a name="output_PUB_SUB_id"></a> [PUB\_SUB\_id](#output\_PUB\_SUB\_id) | ID of the public subnet. |
| <a name="output_VPC_arn"></a> [VPC\_arn](#output\_VPC\_arn) | The ARN of the newly created VPC. |
| <a name="output_VPC_default_network_acl_id"></a> [VPC\_default\_network\_acl\_id](#output\_VPC\_default\_network\_acl\_id) | The ID of the defautl network ACL associated to the VPC. |
| <a name="output_VPC_default_route_table_id"></a> [VPC\_default\_route\_table\_id](#output\_VPC\_default\_route\_table\_id) | The ID of the default route table associated to the VPC. |
| <a name="output_VPC_default_security_group_id"></a> [VPC\_default\_security\_group\_id](#output\_VPC\_default\_security\_group\_id) | The ID of the security group associated to the VPC. |
| <a name="output_VPC_enable_dns_hostnames"></a> [VPC\_enable\_dns\_hostnames](#output\_VPC\_enable\_dns\_hostnames) | If the DNS hostnames support is activated for the VPC. |
| <a name="output_VPC_enable_dns_support"></a> [VPC\_enable\_dns\_support](#output\_VPC\_enable\_dns\_support) | If the DNS support is activated for the VPC. |
| <a name="output_VPC_id"></a> [VPC\_id](#output\_VPC\_id) | The ID of the newly created VPC. |
| <a name="output_VPC_main_route_table_id"></a> [VPC\_main\_route\_table\_id](#output\_VPC\_main\_route\_table\_id) | The ID of the main route table associated to the VPC. |
| <a name="output_VPC_tags"></a> [VPC\_tags](#output\_VPC\_tags) | Tags associated to the VPC resource. |
<!-- END_TF_DOCS -->
