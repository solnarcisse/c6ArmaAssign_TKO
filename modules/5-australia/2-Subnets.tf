#These are   for  public

resource "aws_subnet" "public-ap-southeast-2a" {
    vpc_id                  = var.vpc_id
    cidr_block              = var.public_subnet_params[12].subnet_cidr
    availability_zone       = var.availability_zones[12].zone
    map_public_ip_on_launch = true

    tags = {
      Name    = var.public_subnet_params[12].subnet_name
      Service = "application1"
    }
}

# resource "aws_subnet" "public-ap-southeast-2b" {
#    vpc_id                  = var.vpc_id
#     cidr_block              = var.public_subnet_params[13].subnet_cidr
#     availability_zone       = var.availability_zones[13].zone
#     map_public_ip_on_launch = true

#     tags = {
#       Name    = var.public_subnet_params[13].subnet_name
#       Service = "application1"
#     }
# }

resource "aws_subnet" "public-ap-southeast-2c" {
   vpc_id                  = var.vpc_id
    cidr_block              = var.public_subnet_params[14].subnet_cidr
    availability_zone       = var.availability_zones[14].zone
    map_public_ip_on_launch = true

    tags = {
      Name    = var.public_subnet_params[14].subnet_name
      Service = "application1"
    }
}

#these are for private
# resource "aws_subnet" "private-ap-southeast-2a" {
#     vpc_id                  = var.vpc_id
#     cidr_block              = var.private_subnet_params[12].subnet_cidr
#     availability_zone       = var.availability_zones[12].zone

#     tags = {
#       Name    = var.private_subnet_params[12].subnet_name
#       Service = "application1"
#     }
# }

resource "aws_subnet" "private-ap-southeast-2b" {
  vpc_id                  = var.vpc_id
    cidr_block              = var.private_subnet_params[13].subnet_cidr
    availability_zone       = var.availability_zones[13].zone

    tags = {
      Name    = var.private_subnet_params[13].subnet_name
      Service = "application1"
    }
}

# resource "aws_subnet" "private-ap-southeast-2c" {
#     vpc_id                  = var.vpc_id
#     cidr_block              = var.private_subnet_params[14].subnet_cidr
#     availability_zone       = var.availability_zones[14].zone

#     tags = {
#       Name    = var.private_subnet_params[14].subnet_name
#       Service = "application1"
#     }
# }
