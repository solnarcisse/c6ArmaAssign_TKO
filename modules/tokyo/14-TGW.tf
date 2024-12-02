resource "aws_ec2_transit_gateway" "myApp_TGW" {
  description                     = "myApp transit gateway"
  default_route_table_association = "disable"
  default_route_table_propagation = "disable"

  tags = {
    Name = "myApp_TGW"
  }
}

resource "aws_ec2_transit_gateway_vpc_attachment" "TGA-tokyo" {
  subnet_ids         = [aws_subnet.public-ap-northeast-1a.id]
  transit_gateway_id = aws_ec2_transit_gateway.myApp_TGW.id
  vpc_id             = var.vpc_id

  tags = {
    Name = "TGA-TOKYO-VPC-1-PROD"
  }
}
