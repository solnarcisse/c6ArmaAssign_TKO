#These are   for  public
resource "aws_subnet" "public-ap-northeast-1a" {
  # provider = "ap-northeast-1"
  vpc_id                  = var.vpc_id
  cidr_block              = var.public_subnet_params[0].subnet_cidr
  availability_zone       = var.availability_zones[0].zone
  map_public_ip_on_launch = true

  tags = {
    Name    = var.public_subnet_params[0].subnet_name
    Service = "application1"
    Owner   = "Uhuru"
    Funct   = "ProdPub"
  }
}

# resource "aws_subnet" "public-ap-northeast-1b" {
#   # provider = "ap-northeast-1"
#   vpc_id                  = var.vpc_id
#   cidr_block              = var.public_subnet_params[1].subnet_cidr
#   availability_zone       = var.availability_zones[1].zone
#   map_public_ip_on_launch = true

#   tags = {
#     Name    = var.public_subnet_params[1].subnet_name
#     Service = "application1"
#     Owner   = "Uhuru"
#     Funct   = "ProdPub"
#   }
# }

resource "aws_subnet" "public-ap-northeast-1c" {
  # provider = "ap-northeast-1"
  vpc_id                  = var.vpc_id
  cidr_block              = var.public_subnet_params[1].subnet_cidr
  availability_zone       = var.availability_zones[1].zone
  map_public_ip_on_launch = true

  tags = {
    Name    = var.public_subnet_params[1].subnet_name
    Service = "application1"
    Owner   = "Uhuru"
    Funct   = "ProdPub"
  }
}

# resource "aws_subnet" "public-ap-northeast-1d" {
#   # provider = "ap-northeast-1"
#   vpc_id                  = var.vpc_id
#   cidr_block              = var.public_subnet_params[2].subnet_cidr
#   availability_zone       = var.availability_zones[2].zone
#   map_public_ip_on_launch = true

#   tags = {
#     Name    = var.public_subnet_params[2].subnet_name
#     Service = "application1"
#     Owner   = "Uhuru"
#     Funct   = "ProdPub"
#   }
# }

#these are for private
# resource "aws_subnet" "private-ap-northeast-1a" {
#   vpc_id            = var.vpc_id
#   cidr_block        = var.private_subnet_params[0].subnet_cidr
#   availability_zone = var.availability_zones[0].zone

#   tags = {
#     Name    = var.private_subnet_params[0].subnet_name
#     Service = "application1"
#     Owner   = "Uhuru"
#     Funct   = "ProdPriv"
#   }
# }

# resource "aws_subnet" "private-ap-northeast-1c" {
#   vpc_id            = var.vpc_id
#   cidr_block        = var.private_subnet_params[1].subnet_cidr
#   availability_zone = var.availability_zones[1].zone

#   tags = {
#     Name    = var.private_subnet_params[1].subnet_name
#     Service = "application1"
#     Owner   = "Uhuru"
#     Funct   = "ProdPriv"
#   }
# }

resource "aws_subnet" "private-ap-northeast-1d" {
  vpc_id            = var.vpc_id
  cidr_block        = var.private_subnet_params[2].subnet_cidr
  availability_zone = var.availability_zones[2].zone

  tags = {
    Name    = var.private_subnet_params[2].subnet_name
    Service = "application1"
    Owner   = "Uhuru"
    Funct   = "ProdPriv"
  }
}
