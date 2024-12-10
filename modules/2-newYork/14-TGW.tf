resource "aws_ec2_transit_gateway" "newYork_myApp_TGW" {
  description                     = "New York myApp transit gateway"
  default_route_table_association = "disable"
  default_route_table_propagation = "disable"

  tags = {
    Name = "newYork_myApp_TGW"
  }
}

resource "aws_ec2_transit_gateway_vpc_attachment" "TGA-new-york" {
  subnet_ids         = [aws_subnet.public-us-east-1a, aws_subnet.public-us-east-1c]
  transit_gateway_id = aws_ec2_transit_gateway.newYork_myApp_TGW.id
  vpc_id             = var.vpc_id

  tags = {
    Name = "TGA-NEW-YORK-VPC-1-PROD"
  }
}
