resource "aws_vpc" "tokyo" {
  cidr_block = var.vpc_params[0].vpc_cidr

  instance_tenancy = "default"

  tags = {
    Name    = var.vpc_params[0].vpc_name
    Service = "application1"
    Owner   = "Uhuru"
    Funct   = "Prod"
  }
}

resource "aws_vpc" "hong-kong" {
  cidr_block = var.vpc_params[1].vpc_cidr

  instance_tenancy = "default"

  tags = {
    Name    = var.vpc_params[1].vpc_name
    Service = "application1"
    Owner   = "Uhuru"
    Funct   = "Dev"
  }
}

# resource "aws_vpc" "new-york" {
#   cidr_block = var.vpc_params[1].vpc_cidr

#   instance_tenancy = "default"

#   tags = {
#     Name    = var.vpc_params[1].vpc_name
#     Service = "application1"
#     Owner   = "Uhuru"
#     Funct   = "Dev"
#   }
# }

module "tokyo" {
  source                = "./modules/1-tokyo"
  vpc_id                = aws_vpc.tokyo.id
  vpc_params            = var.vpc_params
  public_subnet_params  = var.public_subnet_params
  private_subnet_params = var.private_subnet_params
  availability_zones    = var.availability_zones
}

module "hongKong" {
  source                = "./modules/6-hongKong"
  vpc_id                = aws_vpc.hong-kong.id
  vpc_params            = var.vpc_params
  public_subnet_params  = var.public_subnet_params
  private_subnet_params = var.private_subnet_params
  availability_zones    = var.availability_zones
}

# module "newYork" {
#   source                = "./modules/newYork"
#   vpc_id                = aws_vpc.new-york.id
#   vpc_params            = var.vpc_params
#   public_subnet_params  = var.public_subnet_params
#   private_subnet_params = var.private_subnet_params
#   availability_zones    = var.availability_zones
# }