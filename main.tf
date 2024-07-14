### Creating VPC module #####

module "vpc" {
  source = "git::https://github.com/rpkumar1220/vpc-module.git"


  for_each = var.vpc
  vpc_id = var.vpc

  cidr_block=each.value["cidr_block"]
  subnets=each.value["subnets"]

  tags=var.tags
  env= var.env
}