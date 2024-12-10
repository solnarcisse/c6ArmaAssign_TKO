resource "aws_ec2_transit_gateway" "saoPaulo_myApp_TGW" {
  description                     = "Sao Paulo myApp transit gateway"
  default_route_table_association = "disable"
  default_route_table_propagation = "disable"

  tags = {
    Name = "Sao Paulo myApp_TGW"
  }
}

resource "aws_ec2_transit_gateway_vpc_attachment" "TGA-sao-paulo" {
  subnet_ids         = [aws_subnet.public-sa-east-1a, aws_subnet.public-sa-east-1c]
  transit_gateway_id = aws_ec2_transit_gateway.saoPaulo_myApp_TGW.id
  vpc_id             = var.vpc_id

  tags = {
    Name = "TGA-SAO-PAULO-VPC-1-PROD"
  }
}
