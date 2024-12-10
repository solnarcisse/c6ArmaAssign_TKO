#These are   for  public
resource "aws_subnet" "public-ap-east-1a" {
  vpc_id                  = var.vpc_id
  cidr_block              = var.public_subnet_params[15].subnet_cidr
  availability_zone       = var.availability_zones[15].zone
  map_public_ip_on_launch = true

  tags = {
    Name    = var.public_subnet_params[15].subnet_name
    Service = "application1"
    Owner   = "Uhuru"
    Funct   = "ProdPub"
  }
}

# resource "aws_subnet" "public-ap-east-1b" {
#   vpc_id                  = var.vpc_id
#   cidr_block              = var.public_subnet_params[16].subnet_cidr
#   availability_zone       = var.availability_zones[16].zone
#   map_public_ip_on_launch = true

#   tags = {
#     Name    = var.public_subnet_params[16].subnet_name
#     Service = "application1"
#     Owner   = "Uhuru"
#     Funct   = "ProdPub"
#   }
# }

resource "aws_subnet" "public-ap-east-1c" {
  vpc_id                  = var.vpc_id
  cidr_block              = var.public_subnet_params[17].subnet_cidr
  availability_zone       = var.availability_zones[17].zone
  map_public_ip_on_launch = true

  tags = {
    Name    = var.public_subnet_params[17].subnet_name
    Service = "application1"
    Owner   = "Uhuru"
    Funct   = "ProdPub"
  }
}


#these are for private
# resource "aws_subnet" "private-ap-east-1a" {
#   vpc_id            = var.vpc_id
#   cidr_block        = var.private_subnet_params[15].subnet_cidr
#   availability_zone = var.availability_zones[15].zone

#   tags = {
#     Name    = var.private_subnet_params[15].subnet_name
#     Service = "application1"
#     Owner   = "Uhuru"
#     Funct   = "ProdPriv"
#   }
# }

resource "aws_subnet" "private-ap-east-1b" {
  vpc_id            = var.vpc_id
  cidr_block        = var.private_subnet_params[16].subnet_cidr
  availability_zone = var.availability_zones[16].zone

  tags = {
    Name    = var.private_subnet_params[16].subnet_name
    Service = "application1"
    Owner   = "Uhuru"
    Funct   = "ProdPriv"
  }
}
# resource "aws_subnet" "private-ap-east-1c" {
#   vpc_id            = var.vpc_id
#   cidr_block        = var.private_subnet_params[17].subnet_cidr
#   availability_zone = var.availability_zones[17].zone

#   tags = {
#     Name    = var.private_subnet_params[17].subnet_name
#     Service = "application1"
#     Owner   = "Uhuru"
#     Funct   = "ProdPriv"
#   }
# }