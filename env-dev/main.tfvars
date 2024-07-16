env="dev"

tags={
  Project="Roboshop"
  Domain="Ecommerce"
  Company="XYZ"
  Location="India"
  Buisness_unit="Retail"
}

default_vpc_id = "vpc-00a1d5ab4773e0d0b"
default_vpc_rt = "rtb-08beb87d23175294c"

vpc={
  main={
    cidr_block="10.10.0.0/16"
    subnets= {
      public = { cidr_block = ["10.10.1.0/24", "10.10.2.0/24"] }
      web = {  cidr_block = ["10.10.3.0/24", "10.10.4.0/24"] }
      app = {  cidr_block = ["10.10.5.0/24", "10.10.6.0/24"] }
      db = {   cidr_block = ["10.10.7.0/24", "10.10.8.0/24"] }
    }
  }
}