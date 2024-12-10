resource "aws_route_table" "private" {
  vpc_id = var.vpc_id

  route = [
    {
      cidr_block                 = "0.0.0.0/0"
      nat_gateway_id             = aws_nat_gateway.myApp_nat.id
      carrier_gateway_id         = ""
      destination_prefix_list_id = ""
      egress_only_gateway_id     = ""
      gateway_id                 = ""
      instance_id                = ""
      ipv6_cidr_block            = null
      local_gateway_id           = ""
      network_interface_id       = ""
      transit_gateway_id         = ""
      vpc_endpoint_id            = ""
      vpc_peering_connection_id  = ""
      core_network_arn           = ""
    }
  ]

  tags = {
    Name = "private"
  }
}

resource "aws_route_table" "public" {
  vpc_id = var.vpc_id

  route = [
    {
      cidr_block                 = "0.0.0.0/0"
      gateway_id                 = aws_internet_gateway.myApp_IGW.id
      nat_gateway_id             = ""
      carrier_gateway_id         = null
      destination_prefix_list_id = ""
      egress_only_gateway_id     = null
      instance_id                = ""
      ipv6_cidr_block            = null
      local_gateway_id           = ""
      network_interface_id       = ""
      transit_gateway_id         = ""
      vpc_endpoint_id            = ""
      vpc_peering_connection_id  = ""
      core_network_arn           = null
    },

    {
      cidr_block = var.vpc_params[0].vpc_cidr
      gateway_id                 = aws_ec2_transit_gateway.myApp_TGW.id
      nat_gateway_id             = ""
      carrier_gateway_id         = ""
      destination_prefix_list_id = ""
      egress_only_gateway_id     = ""
      instance_id                = ""
      ipv6_cidr_block            = null
      local_gateway_id           = ""
      network_interface_id       = ""
      transit_gateway_id         = ""
      vpc_endpoint_id            = ""
      vpc_peering_connection_id  = ""
      core_network_arn           = ""
    }
  ]
  tags = {
    Name = "public"
  }
}

#These are   for  public
resource "aws_route_table_association" "public-ap-northeast-1a" {
  subnet_id      = aws_subnet.public-ap-northeast-1a.id
  route_table_id = aws_route_table.public.id
}

resource "aws_route_table_association" "public-ap-northeast-1c" {
  subnet_id      = aws_subnet.public-ap-northeast-1c.id
  route_table_id = aws_route_table.public.id
}

# resource "aws_route_table_association" "public-ap-northeast-1d" {
#   subnet_id      = aws_subnet.public-ap-northeast-1d.id
#   route_table_id = aws_route_table.public.id
# }

#these are for private
# resource "aws_route_table_association" "private-ap-northeast-1a" {
#   subnet_id      = aws_subnet.private-ap-northeast-1a.id
#   route_table_id = aws_route_table.private.id
# }

# resource "aws_route_table_association" "private-ap-northeast-1c" {
#   subnet_id      = aws_subnet.private-ap-northeast-1c.id
#   route_table_id = aws_route_table.private.id
# }

resource "aws_route_table_association" "private-ap-northeast-1d" {
  subnet_id      = aws_subnet.private-ap-northeast-1d.id
  route_table_id = aws_route_table.private.id
}

#TGW----------------
# resource "aws_ec2_transit_gateway_route_table" "TGW-RTB-OHIO-VPC-1-PROD" {
#   transit_gateway_id = aws_ec2_transit_gateway.myApp_TGW.id

#   tags = {
#     "name" = "TGW-RTB-OHIO-VPC-1-PROD"
#   }
# }

# resource "aws_ec2_transit_gateway_route" "TGW-RTB-OHIO-VPC-1-A-Route1" {
#   destination_cidr_block         = "10.0.0.0/16"
#   transit_gateway_attachment_id  = aws_ec2_transit_gateway_vpc_attachment.TGA-.id
#   transit_gateway_route_table_id = aws_ec2_transit_gateway_route_table.TGW-RTB-OHIO-VPC-1-PROD.id
# }

# resource "aws_ec2_transit_gateway_route_table_association" "TGW_RTB_VPC_A_Association_1" {
#   transit_gateway_attachment_id  = aws_ec2_transit_gateway_vpc_attachment.TGA-OHIO-VPC-1-PROD.id
#   transit_gateway_route_table_id = aws_ec2_transit_gateway_route_table.TGW-RTB-OHIO-VPC-1-PROD.id
# }