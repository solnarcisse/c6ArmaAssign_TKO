#These are   for  public

resource "aws_subnet" "public-us-east-1a" {
  vpc_id                  = var.vpc_id
  cidr_block              = var.public_subnet_params[3].subnet_cidr
  availability_zone       = var.availability_zones[3].zone
  map_public_ip_on_launch = true

  tags = {
    Name    = var.public_subnet_params[3].subnet_name
    Service = "application1"
  }
}

# resource "aws_subnet" "public-us-east-1b" {
#   vpc_id                  = var.vpc_id
#   cidr_block              = var.public_subnet_params[4].subnet_cidr
#   availability_zone       = var.availability_zones[4].zone
#   map_public_ip_on_launch = true

#   tags = {
#     Name    = var.public_subnet_params[4].subnet_name
#     Service = "application1"
#   }
# }


resource "aws_subnet" "public-us-east-1c" {
  vpc_id                  = var.vpc_id
  cidr_block              = var.public_subnet_params[5].subnet_cidr
  availability_zone       = var.availability_zones[5].zone
  map_public_ip_on_launch = true

  tags = {
    Name    = var.public_subnet_params[5].subnet_name
    Service = "application1"
  }
}

#these are for private
# resource "aws_subnet" "private-us-east-1a" {
#   vpc_id            = var.vpc_id
#   cidr_block        = var.private_subnet_params[3].subnet_cidr
#   availability_zone = var.availability_zones[3].zone

#   tags = {
#     Name    = var.private_subnet_params[3].subnet_name
#     Service = "application1"
#   }
# }

resource "aws_subnet" "private-us-east-1b" {
  vpc_id            = var.vpc_id
  cidr_block        = var.private_subnet_params[4].subnet_cidr
  availability_zone = var.availability_zones[4].zone

  tags = {
    Name    = var.private_subnet_params[4].subnet_name
    Service = "application1"
  }
}


# resource "aws_subnet" "private-us-east-1c" {
#   vpc_id            = var.vpc_id
  # cidr_block        = var.private_subnet_params[5].subnet_cidr
  # availability_zone = var.availability_zones[5].zone

  # tags = {
  #   Name    = var.private_subnet_params[5].subnet_name
  #   Service = "application1"
  # }
# }
