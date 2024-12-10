#These are   for  public

resource "aws_subnet" "public-eu-west-2a" {
  vpc_id                  = var.vpc_id
  cidr_block              = var.public_subnet_params[6].subnet_cidr
  availability_zone       = var.availability_zones[6].zone
  map_public_ip_on_launch = true

  tags = {
    Name    = var.public_subnet_params[6].subnet_name
    Service = "application1"
  }
}

# resource "aws_subnet" "public-eu-west-2b" {
#   vpc_id                  = var.vpc_id
#   cidr_block              = var.public_subnet_params[7].subnet_cidr
#   availability_zone       = var.availability_zones[7].zone
#   map_public_ip_on_launch = true

#   tags = {
#     Name    = var.public_subnet_params[7].subnet_name
#     Service = "application1"
#   }
# }

resource "aws_subnet" "public-eu-west-2c" {
  vpc_id                  = var.vpc_id
  cidr_block              = var.public_subnet_params[8].subnet_cidr
  availability_zone       = var.availability_zones[8].zone
  map_public_ip_on_launch = true

  tags = {
    Name    = var.public_subnet_params[8].subnet_name
    Service = "application1"
  }
}

#these are for private
# resource "aws_subnet" "private-eu-west-2a" {
#  vpc_id                  = var.vpc_id
#   cidr_block              = var.private_subnet_params[6].subnet_cidr
#   availability_zone       = var.availability_zones[6].zone
#   tags = {
#     Name    = var.private_subnet_params[6].subnet_name
#     Service = "application1"
#   }
# }

resource "aws_subnet" "private-eu-west-2b" {
  vpc_id                  = var.vpc_id
  cidr_block              = var.private_subnet_params[7].subnet_cidr
  availability_zone       = var.availability_zones[7].zone
  tags = {
    Name    = var.private_subnet_params[7].subnet_name
    Service = "application1"
  }
}

# resource "aws_subnet" "private-eu-west-2c" {
#   vpc_id                  = var.vpc_id
    # cidr_block              = var.private_subnet_params[8].subnet_cidr
    # availability_zone       = var.availability_zones[8].zone
    # tags = {
    #   Name    = var.private_subnet_params[8].subnet_name
    #   Service = "application1"
    # }
# }
