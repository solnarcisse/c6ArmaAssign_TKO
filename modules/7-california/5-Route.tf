resource "aws_route_table" "private" {
  vpc_id = var.vpc_id

  route = [
    {
      cidr_block                 = "0.0.0.0/0"
      nat_gateway_id             = aws_nat_gateway.nat.id
      carrier_gateway_id         = ""
      destination_prefix_list_id = ""
      egress_only_gateway_id     = ""
      gateway_id                 = ""
      instance_id                = ""
      ipv6_cidr_block            = ""
      local_gateway_id           = ""
      network_interface_id       = ""
      transit_gateway_id         = ""
      vpc_endpoint_id            = ""
      vpc_peering_connection_id  = ""
      core_network_arn           = ""
    },
    {
      cidr_block                 = var.vpc_params[6].vpc_cidr
      gateway_id                 = aws_ec2_transit_gateway.calif_myApp_TGW.id
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
    Name = "private"
  }
}

resource "aws_route_table" "public" {
  vpc_id = var.vpc_id

  route = [
    {
      cidr_block                 = "0.0.0.0/0"
      gateway_id                 = aws_internet_gateway.igw.id
      nat_gateway_id             = ""
      carrier_gateway_id         = ""
      destination_prefix_list_id = ""
      egress_only_gateway_id     = ""
      instance_id                = ""
      ipv6_cidr_block            = ""
      local_gateway_id           = ""
      network_interface_id       = ""
      transit_gateway_id         = ""
      vpc_endpoint_id            = ""
      vpc_peering_connection_id  = ""
      core_network_arn           = ""
    },
    {
      cidr_block                 = var.vpc_params[6].vpc_cidr
      gateway_id                 = aws_ec2_transit_gateway.calif_myApp_TGW.id
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

#Private Routes
# resource "aws_route_table_association" "private-us-west-1a" {
#   subnet_id      = aws_subnet.private-us-west-1a.id
#   route_table_id = aws_route_table.private.id
# }

# resource "aws_route_table_association" "private-us-west-1b" {
#   subnet_id      = aws_subnet.private-us-west-1b.id
#   route_table_id = aws_route_table.private.id
# }

resource "aws_route_table_association" "private-us-west-1c" {
  subnet_id      = aws_subnet.private-us-west-1c.id
  route_table_id = aws_route_table.private.id
}


#public

resource "aws_route_table_association" "public-us-west-1a" {
  subnet_id      = aws_subnet.public-us-west-1a.id
  route_table_id = aws_route_table.public.id
}

# resource "aws_route_table_association" "public-us-west-1b" {
#   subnet_id      = aws_subnet.public-us-west-1b.id
#   route_table_id = aws_route_table.public.id
# }

resource "aws_route_table_association" "public-us-west-1c" {
  subnet_id      = aws_subnet.public-us-west-1c.id
  route_table_id = aws_route_table.public.id
}

#TGW----------------
resource "aws_ec2_transit_gateway_route_table" "TGW-RTB-CALIFORNIA-VPC-1-PROD" {
  transit_gateway_id = aws_ec2_transit_gateway.calif_myApp_TGW.id

  tags = {
    "name" = "TGW-RTB-CALIFORNIA-VPC-1-PROD"
  }
}

resource "aws_ec2_transit_gateway_route" "TGW-RTB-CALIFORNIA-VPC-1-A-Route1" {
  destination_cidr_block         = "10.0.0.0/16"
  transit_gateway_attachment_id  = aws_ec2_transit_gateway_vpc_attachment.TGA-california.id
  transit_gateway_route_table_id = aws_ec2_transit_gateway_route_table.TGW-RTB-CALIFORNIA-VPC-1-PROD.id
}

resource "aws_ec2_transit_gateway_route_table_association" "TGW_RTB_VPC_TOKYO_Association_1" {
  transit_gateway_attachment_id  = aws_ec2_transit_gateway_vpc_attachment.TGA-california.id
  transit_gateway_route_table_id = aws_ec2_transit_gateway_route_table.TGW-RTB-CALIFORNIA-VPC-1-PROD.id
}