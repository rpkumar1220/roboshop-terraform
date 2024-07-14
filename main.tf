### Creating VPC module #####

module "vpc" {
  source = "git::https://github.com/rpkumar1220/vpc-module.git"
  for_each = var.vpc
  env= var.env
  cidr_block=var.cidr_block
  subnets=each.value["subnets"]
}