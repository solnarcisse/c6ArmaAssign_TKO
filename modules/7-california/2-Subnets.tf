#These are   for  public

resource "aws_subnet" "public-us-west-1a" {
  vpc_id                  = var.vpc_id
  cidr_block              = var.public_subnet_params[18].subnet_cidr
  availability_zone       = var.availability_zones[18].zone
  map_public_ip_on_launch = true

  tags = {
    Name    = var.public_subnet_params[18].subnet_name
    Service = "application1"
  }
}

# resource "aws_subnet" "public-us-west-1b" {
#   vpc_id                  = var.vpc_id
#   cidr_block              = var.public_subnet_params[19].subnet_cidr
#   availability_zone       = var.availability_zones[19].zone
#   map_public_ip_on_launch = true

#   tags = {
#     Name    = var.public_subnet_params[19].subnet_name
#     Service = "application1"
#   }
# }


resource "aws_subnet" "public-us-west-1c" {
  vpc_id                  = var.vpc_id
  cidr_block              = var.public_subnet_params[20].subnet_cidr
  availability_zone       = var.availability_zones[20].zone
  map_public_ip_on_launch = true

  tags = {
    Name    = var.public_subnet_params[20].subnet_name
    Service = "application1"
  }
}

#these are for private
# resource "aws_subnet" "private-us-west-1a" {
#     vpc_id                  = var.vpc_id
#     cidr_block              = var.private_subnet_params[18].subnet_cidr
#     availability_zone       = var.availability_zones[18].zone
#     tags = {
#       Name    = var.private_subnet_params[18].subnet_name
#       Service = "application1"
#     }
# }

# resource "aws_subnet" "private-us-west-1b" {
#     vpc_id                  = var.vpc_id
#     cidr_block              = var.private_subnet_params[19].subnet_cidr
#     availability_zone       = var.availability_zones[19].zone
#     tags = {
#       Name    = var.private_subnet_params[19].subnet_name
#       Service = "application1"
#     }
# }


resource "aws_subnet" "private-us-west-1c" {
    vpc_id                  = var.vpc_id
    cidr_block              = var.private_subnet_params[20].subnet_cidr
    availability_zone       = var.availability_zones[20].zone
    tags = {
      Name    = var.private_subnet_params[20].subnet_name
      Service = "application1"
    }
}
