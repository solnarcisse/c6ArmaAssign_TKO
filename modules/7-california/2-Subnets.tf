#These are   for  public

resource "aws_subnet" "public-us-west-1a" {
  vpc_id                  = aws_vpc.Calif-vpc.id
  cidr_block              = "10.106.1.0/24"
  availability_zone       = "us-west-1a"
  map_public_ip_on_launch = true

  tags = {
    Name    = "public-us-west-1a"
    Service = "application1"
    # Owner   = "Luke"
    # Planet  = "Musafar"
  }
}

resource "aws_subnet" "public-us-west-1b" {
  vpc_id                  = aws_vpc.Calif-vpc.id
  cidr_block              = "10.106.2.0/24"
  availability_zone       = "us-west-1b"
  map_public_ip_on_launch = true

  tags = {
    Name    = "public-us-west-1b"
    Service = "application1"
    # Owner   = "Luke"
    # Planet  = "Musafar"
  }
}


# resource "aws_subnet" "public-us-west-1c" {
#   vpc_id                  = aws_vpc" "Calif-vpc.id
#   cidr_block              = "10.106.3.0/24"
#   availability_zone       = "us-west-1c"
#   map_public_ip_on_launch = true

#   tags = {
#     Name    = "public-us-west-1c"
#     Service = "application1"
#     Owner   = "Luke"
#     Planet  = "Musafar"
#   }
# }

#these are for private
resource "aws_subnet" "private-us-west-1a" {
  vpc_id            = aws_vpc.Calif-vpc.id
  cidr_block        = "10.106.11.0/24"
  availability_zone = "us-west-1a"

  tags = {
    Name    = "private-us-west-1a"
    Service = "application1"
    # Owner   = "Luke"
    # Planet  = "Musafar"
  }
}

resource "aws_subnet" "private-us-west-1b" {
  vpc_id            = aws_vpc.Calif-vpc.id
  cidr_block        = "10.106.12.0/24"
  availability_zone = "us-west-1b"

  tags = {
    Name    = "private-us-west-1b"
    Service = "application1"
    # Owner   = "Luke"
    # Planet  = "Musafar"
  }
}


# resource "aws_subnet" "private-us-west-1c" {
#   vpc_id            = aws_vpc" "Calif-vpc.id
#   cidr_block        = "10.106.13.0/24"
#   availability_zone = "us-west-1c"

#   tags = {
#     Name    = "private-us-west-1c"
#     Service = "application1"
#     Owner   = "Luke"
#     Planet  = "Musafar"
#   }
# }
