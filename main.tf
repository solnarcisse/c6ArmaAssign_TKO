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

resource "aws_vpc" "new-york" {
  cidr_block = var.vpc_params[1].vpc_cidr

  instance_tenancy = "default"

  tags = {
    Name    = var.vpc_params[1].vpc_name
    Service = "application1"
    Owner   = "Uhuru"
    Funct   = "Prod"
  }
}

resource "aws_vpc" "london" {
  cidr_block = var.vpc_params[2].vpc_cidr

  instance_tenancy = "default"

  tags = {
    Name    = var.vpc_params[2].vpc_name
    Service = "application1"
    Owner   = "Uhuru"
    Funct   = "Prod"
  }
}

resource "aws_vpc" "sao-paulo" {
  cidr_block = var.vpc_params[3].vpc_cidr

  instance_tenancy = "default"

  tags = {
    Name    = var.vpc_params[3].vpc_name
    Service = "application1"
    Owner   = "Uhuru"
    Funct   = "Prod"
  }
}

resource "aws_vpc" "australia" {
  cidr_block = var.vpc_params[4].vpc_cidr

  instance_tenancy = "default"

  tags = {
    Name    = var.vpc_params[4].vpc_name
    Service = "application1"
    Owner   = "Uhuru"
    Funct   = "Prod"
  }
}
resource "aws_vpc" "hong-kong" {
  cidr_block = var.vpc_params[5].vpc_cidr

  instance_tenancy = "default"

  tags = {
    Name    = var.vpc_params[5].vpc_name
    Service = "application1"
    Owner   = "Uhuru"
    Funct   = "Dev"
  }
}

resource "aws_vpc" "california" {
  cidr_block = var.vpc_params[6].vpc_cidr

  instance_tenancy = "default"

  tags = {
    Name    = var.vpc_params[6].vpc_name
    Service = "application1"
    Owner   = "Uhuru"
    Funct   = "Dev"
  }
}

module "tokyo" {
  source                = "./modules/1-tokyo"
  vpc_id                = aws_vpc.tokyo.id
  vpc_params            = var.vpc_params
  public_subnet_params  = var.public_subnet_params
  private_subnet_params = var.private_subnet_params
  availability_zones    = var.availability_zones
}

module "newYork" {
  source                = "./modules/2-newYork"
  vpc_id                = aws_vpc.new-york.id
  vpc_params            = var.vpc_params
  public_subnet_params  = var.public_subnet_params
  private_subnet_params = var.private_subnet_params
  availability_zones    = var.availability_zones
}

module "london" {
  source                = "./modules/3-london"
  vpc_id                = aws_vpc.london.id
  vpc_params            = var.vpc_params
  public_subnet_params  = var.public_subnet_params
  private_subnet_params = var.private_subnet_params
  availability_zones    = var.availability_zones
}

module "saoPaulo" {
  source                = "./modules/4-saoPaulo"
  vpc_id                = aws_vpc.sao-paulo.id
  vpc_params            = var.vpc_params
  public_subnet_params  = var.public_subnet_params
  private_subnet_params = var.private_subnet_params
  availability_zones    = var.availability_zones
}

module "australia" {
  source                = "./modules/5-australia"
  vpc_id                = aws_vpc.australia.id
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

module "california" {
  source                = "./modules/7-california"
  vpc_id                = aws_vpc.california.id
  vpc_params            = var.vpc_params
  public_subnet_params  = var.public_subnet_params
  private_subnet_params = var.private_subnet_params
  availability_zones    = var.availability_zones
}