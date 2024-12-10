resource "aws_ec2_transit_gateway" "london_myApp_TGW" {
  description                     = "London myApp transit gateway"
  default_route_table_association = "disable"
  default_route_table_propagation = "disable"

  tags = {
    Name = "london_myApp_TGW"
  }
}

resource "aws_ec2_transit_gateway_vpc_attachment" "TGA-london" {
  subnet_ids         = [aws_subnet.public-eu-west-2a, aws_subnet.public-eu-west-2c]
  transit_gateway_id = aws_ec2_transit_gateway.london_myApp_TGW.id
  vpc_id             = var.vpc_id

  tags = {
    Name = "TGA-LONDON-VPC-1-PROD"
  }
}
