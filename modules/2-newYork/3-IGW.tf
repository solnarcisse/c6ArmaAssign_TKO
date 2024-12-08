resource "aws_internet_gateway" "igw" {
  vpc_id = aws_vpc.NY-vpc.id

  tags = {
    Name    = "NY_IG"
    Service = "application1"
    # Owner   = "Luke"
    # Planet  = "Musafar"
  }
}
