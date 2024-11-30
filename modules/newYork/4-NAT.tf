resource "aws_eip" "myApp_nat" {
  domain = "vpc"

  tags = {
    Name = "myApp_nat"
  }
}

resource "aws_nat_gateway" "myApp_nat" {
  allocation_id = aws_eip.myApp_nat.id
  subnet_id     = aws_subnet.public-us-east-2a.id

  tags = {
    Name = "myApp_nat"
  }

  depends_on = [aws_internet_gateway.myApp_IGW]
}