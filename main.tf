### Creating VPC module #####

module "vpc" {
  source = "git::https://github.com/rpkumar1220/vpc-module.git"

  for_each = var.vpc
  cidr_block=each.value["cidr_block"]
  subnets=each.value["subnets"]
  default_vpc_id=var.default_vpc_id
  default_vpc_rt=var.default_vpc_rt

  tags=var.tags
  env= var.env
}