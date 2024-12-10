resource "aws_ec2_transit_gateway" "tokyo_myApp_TGW" {
  description                     = "Tokyo myApp transit gateway"
  default_route_table_association = "disable"
  default_route_table_propagation = "disable"

  tags = {
    Name = "Tokyo_myApp_TGW"
  }
}

resource "aws_ec2_transit_gateway_vpc_attachment" "TGA-tokyo" {
  subnet_ids         = [aws_subnet.public-ap-northeast-1a.id]
  transit_gateway_id = aws_ec2_transit_gateway.tokyo_myApp_TGW.id
  vpc_id             = var.vpc_id

  tags = {
    Name = "TGA-TOKYO-VPC-1-PROD"
  }
}

resource "aws_ec2_transit_gateway_peering_attachment" "TGW-Peer-2-tokyo-newYork" {
  peer_transit_gateway_id = var.newYork_myApp_TGW.id
  transit_gateway_id      = aws_ec2_transit_gateway.tokyo_myApp_TGW.id
  peer_account_id         = data.aws_caller_identity.current.account_id
  peer_region             = var.regions[1].alias

  depends_on = [var.newYork_myApp_TGW]

  tags = {
    Name = "tokyo to new york TGW Peering"
  }
}

resource "aws_ec2_transit_gateway_peering_attachment" "TGW-Peer-3-tokyo-london" {
  peer_transit_gateway_id = var.london_myApp_TGW.id
  transit_gateway_id      = aws_ec2_transit_gateway.tokyo_myApp_TGW.id
  peer_account_id         = data.aws_caller_identity.current.account_id
  peer_region             = var.regions[2].alias

  depends_on = [var.london_myApp_TGW]

  tags = {
    Name = "tokyo to london TGW Peering"
  }
}

resource "aws_ec2_transit_gateway_peering_attachment" "TGW-Peer-4-tokyo-saoPaulo" {
  peer_transit_gateway_id = var.saoPaulo_myApp_TGW.id
  transit_gateway_id      = aws_ec2_transit_gateway.tokyo_myApp_TGW.id
  peer_account_id         = data.aws_caller_identity.current.account_id
  peer_region             = var.regions[3].alias

  depends_on = [var.newYork_myApp_TGW]

  tags = {
    Name = "tokyo to sao paulo TGW Peering"
  }
}

resource "aws_ec2_transit_gateway_peering_attachment" "TGW-Peer-5-tokyo-australia" {
  peer_transit_gateway_id = var.australia_myApp_TGW.id
  transit_gateway_id      = aws_ec2_transit_gateway.tokyo_myApp_TGW.id
  peer_account_id         = data.aws_caller_identity.current.account_id
  peer_region             = var.regions[4].alias

  depends_on = [var.australia_myApp_TGW]

  tags = {
    Name = "tokyo to australia TGW Peering"
  }
}

resource "aws_ec2_transit_gateway_peering_attachment" "TGW-Peer-6-tokyo-hongKong" {
  peer_transit_gateway_id = var.HK_myApp_TGW.id
  transit_gateway_id      = aws_ec2_transit_gateway.tokyo_myApp_TGW.id
  peer_account_id         = data.aws_caller_identity.current.account_id
  peer_region             = var.regions[5].alias

  depends_on = [var.HK_myApp_TGW]

  tags = {
    Name = "tokyo to Hong Kong TGW Peering"
  }
}

resource "aws_ec2_transit_gateway_peering_attachment" "TGW-Peer-7-tokyo-california" {
  provider                = aws
  peer_transit_gateway_id = var.calif_myApp_TGW.id
  transit_gateway_id      = aws_ec2_transit_gateway.tokyo_myApp_TGW.id
  peer_account_id         = data.aws_caller_identity.current.account_id
  peer_region             = var.regions[6].alias

  depends_on = [var.calif_myApp_TGW]

  tags = {
    Name = "tokyo to california TGW Peering"
  }
}