resource "aws_ec2_transit_gateway" "calif_myApp_TGW" {
  description                     = "California myApp transit gateway"
  default_route_table_association = "disable"
  default_route_table_propagation = "disable"

  tags = {
    Name = "California myApp_TGW"
  }
}

resource "aws_ec2_transit_gateway_vpc_attachment" "TGA-california" {
  subnet_ids         = [aws_subnet.public-us-west-1a, aws_subnet.public-us-west-1c]
  transit_gateway_id = aws_ec2_transit_gateway.calif_myApp_TGW.id
  vpc_id             = var.vpc_id

  tags = {
    Name = "TGA-CALIFORNIA-VPC-1-PROD"
  }
}
