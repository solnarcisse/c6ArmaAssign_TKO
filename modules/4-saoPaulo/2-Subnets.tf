#These are   for  public

resource "aws_subnet" "public-sa-east-1a" {
  vpc_id                  = var.vpc_id
  cidr_block              = var.public_subnet_params[9].subnet_cidr
  availability_zone       = var.availability_zones[9].zone
  map_public_ip_on_launch = true

  tags = {
    Name    = var.public_subnet_params[9].subnet_name
    Service = "application1"
  }
}

# resource "aws_subnet" "public-sa-east-1b" {
#   vpc_id                  = var.vpc_id
#   cidr_block              = var.public_subnet_params[10].subnet_cidr
#   availability_zone       = var.availability_zones[10].zone
#   map_public_ip_on_launch = true

#   tags = {
#     Name    = var.public_subnet_params[10].subnet_name
#     Service = "application1"
#   }
# }


resource "aws_subnet" "public-sa-east-1c" {
  vpc_id                  = var.vpc_id
  cidr_block              = var.public_subnet_params[11].subnet_cidr
  availability_zone       = var.availability_zones[11].zone
  map_public_ip_on_launch = true

  tags = {
    Name    = var.public_subnet_params[11].subnet_name
    Service = "application1"
  }
}

#these are for private
# resource "aws_subnet" "private-sa-east-1a" {
#   vpc_id                  = var.vpc_id
#   cidr_block              = var.private_subnet_params[9].subnet_cidr
#   availability_zone       = var.availability_zones[9].zone
#   tags = {
#     Name    = var.private_subnet_params[9].subnet_name
#     Service = "application1"
#   }
# }

# resource "aws_subnet" "private-sa-east-1b" {
#   vpc_id                  = var.vpc_id
#   cidr_block              = var.private_subnet_params[10].subnet_cidr
#   availability_zone       = var.availability_zones[10].zone
#   tags = {
#     Name    = var.private_subnet_params[10].subnet_name
#     Service = "application1"
#   }
# }
#


resource "aws_subnet" "private-sa-east-1c" {
  vpc_id                  = var.vpc_id
  cidr_block              = var.private_subnet_params[11].subnet_cidr
  availability_zone       = var.availability_zones[11].zone
  tags = {
    Name    = var.private_subnet_params[11].subnet_name
    Service = "application1"
  }
}
