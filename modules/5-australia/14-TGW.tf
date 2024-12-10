resource "aws_ec2_transit_gateway" "australia_myApp_TGW" {
  description                     = "myApp transit gateway"
  default_route_table_association = "disable"
  default_route_table_propagation = "disable"

  tags = {
    Name = "myApp_TGW"
  }
}

resource "aws_ec2_transit_gateway_vpc_attachment" "TGA-australia" {
  subnet_ids         = [aws_subnet.public-ap-southeast-2a, aws_subnet.public-ap-southeast-2c]
  transit_gateway_id = aws_ec2_transit_gateway.australia_myApp_TGW.id
  vpc_id             = var.vpc_id

  tags = {
    Name = "TGA-AUSTRALIA-VPC-1-PROD"
  }
}
