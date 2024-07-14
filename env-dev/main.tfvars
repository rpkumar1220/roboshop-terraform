env="dev"

tags={
  Project="Roboshop"
  Domain="Ecommerce"
  Company="XYZ"
  Location="India"
  Buisness_unit="Retail"
}

vpc={
  main={
    subnets= {
      cidr_block="10.10.1.0/16"
      public = { cidr_block = ["10.10.1.0/24", "10.10.2.0/24"] }
      web = {  cidr_block = ["10.10.3.0/24", "10.100.4.0/24"] }
      app = {  cidr_block = ["10.10.5.0/24", "10.10.6.0/24"] }
      db = {   cidr_block = ["10.10.7.0/24", "10.10.8.0/24"] }
    }
  }
}