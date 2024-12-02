#These are   for  public
resource "aws_subnet" "public-ap-east-1a" {
  vpc_id                  = var.vpc_id
  cidr_block              = var.public_subnet_params[3].subnet_cidr
  availability_zone       = var.availability_zones[3]
  map_public_ip_on_launch = true

  tags = {
    Name    = var.public_subnet_params[3].subnet_name
    Service = "application1"
    Owner   = "Uhuru"
    Funct   = "ProdPub"
  }
}


#these are for private
resource "aws_subnet" "private-ap-east-1a" {
  vpc_id            = var.vpc_id
  cidr_block        = var.private_subnet_params[4].subnet_cidr
  availability_zone = var.availability_zones[4]

  tags = {
    Name    = var.private_subnet_params[4].subnet_name
    Service = "application1"
    Owner   = "Uhuru"
    Funct   = "ProdPriv"
  }
}
