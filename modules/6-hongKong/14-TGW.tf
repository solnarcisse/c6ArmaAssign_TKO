resource "aws_ec2_transit_gateway" "HK_myApp_TGW" {
  description                     = "myApp transit gateway"
  default_route_table_association = "disable"
  default_route_table_propagation = "disable"

  tags = {
    Name = "myApp_TGW"
  }
}

resource "aws_ec2_transit_gateway_vpc_attachment" "TGA-HK" {
  subnet_ids         = [aws_subnet.public-ap-east-1a.id, aws_subnet.public-ap-east-1c]
  transit_gateway_id = aws_ec2_transit_gateway.HK_myApp_TGW.id
  vpc_id             = var.vpc_id

  tags = {
    Name = "TGA-HongKong-VPC-1-PROD"
  }
}
