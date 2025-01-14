resource "aws_network_acl" "sysLogNACL" {
  vpc_id = var.vpc_id

  egress {
    protocol   = "udp"
    rule_no    = 100
    action     = "allow"
    cidr_block = var.vpc_params[0].vpc_cidr
    from_port  = 0
    to_port    = 0
  }

  egress {
    protocol   = -1
    rule_no    = 200
    action     = "deny"
    cidr_block = "0.0.0.0/0"
    from_port  = 0
    to_port    = 0
  }

  ingress {
    protocol   = "udp"
    rule_no    = 300
    action     = "allow"
    cidr_block = "10.0.0.0/8"
    from_port  = 514
    to_port    = 514
  }

  tags = {
    Name = "main"
  }
}

resource "aws_network_acl_association" "main" {
  network_acl_id = aws_network_acl.sysLogNACL.id
  subnet_id      = aws_subnet.private-ap-northeast-1d.id
}

resource "aws_network_acl_association" "backup" {
  network_acl_id = aws_network_acl.sysLogNACL.id
  subnet_id      = aws_subnet.private-ap-northeast-1c.id
}