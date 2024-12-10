resource "aws_internet_gateway" "igw" {
  vpc_id = aws_vpc.Calif-vpc.id

  tags = {
    Name    = "Calif_IG"
    Service = "application1"
    # Owner   = "Luke"
    # Planet  = "Musafar"
  }
}
