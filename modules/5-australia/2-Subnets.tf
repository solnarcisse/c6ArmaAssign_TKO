#These are   for  public

resource "aws_subnet" "public-ap-southeast-2a" {
  vpc_id                  = aws_vpc.app1.id
  cidr_block              = "10.104.1.0/24"
  availability_zone       = "ap-southeast-2a"
  map_public_ip_on_launch = true

  tags = {
    Name    = "public-ap-southeast-2a"
    Service = "application1"
    Owner   = "Luke"
    Planet  = "Musafar"
  }
}

resource "aws_subnet" "public-ap-southeast-2b" {
  vpc_id                  = aws_vpc.app1.id
  cidr_block              = "10.104.2.0/24"
  availability_zone       = "ap-southeast-2b"
  map_public_ip_on_launch = true

  tags = {
    Name    = "public-ap-southeast-2b"
    Service = "application1"
    Owner   = "Luke"
    Planet  = "Musafar"
  }
}



/*resource "aws_subnet" "public-ap-southeast-2c" {
  vpc_id                  = aws_vpc.app1.id
  cidr_block              = "10.103.3.0/24"
  availability_zone       = "ap-southeast-2c"
  map_public_ip_on_launch = true

  tags = {
    Name    = "public-ap-southeast-2c"
    Service = "application1"
    Owner   = "Luke"
    Planet  = "Musafar"
  }
}
*/
#these are for private
resource "aws_subnet" "private-ap-southeast-2a" {
  vpc_id            = aws_vpc.app1.id
  cidr_block        = "10.104.11.0/24"
  availability_zone = "ap-southeast-2a"

  tags = {
    Name    = "private-ap-southeast-2a"
    Service = "application1"
    Owner   = "Luke"
    Planet  = "Musafar"
  }
}

resource "aws_subnet" "private-ap-southeast-2b" {
  vpc_id            = aws_vpc.app1.id
  cidr_block        = "10.104.12.0/24"
  availability_zone = "ap-southeast-2b"

  tags = {
    Name    = "private-ap-southeast-2b"
    Service = "application1"
    Owner   = "Luke"
    Planet  = "Musafar"
  }
}



/*resource "aws_subnet" "private-ap-southeast-2c" {
  vpc_id            = aws_vpc.app1.id
  cidr_block        = "10.103.13.0/24"
  availability_zone = "ap-southeast-2c"

  tags = {
    Name    = "private-ap-southeast-2c"
    Service = "application1"
    Owner   = "Luke"
    Planet  = "Musafar"
  }
}
*/