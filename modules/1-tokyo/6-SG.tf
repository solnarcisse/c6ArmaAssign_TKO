resource "aws_security_group" "myApp-SG01-servers" {
  name   = "myApp-SG01-servers"
  vpc_id = var.vpc_id

  ingress {
    description = "MyHomePage"
    from_port   = 80
    to_port     = 80
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }
  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }

  tags = {
    Name    = "app1-sg01-servers"
    Service = "myApp"
    Owner   = "Uhuru"
    Funct   = "application SG"
  }
}

resource "aws_security_group" "myApp-sg02-LB01" {
  name        = "app1-sg02-LB01"
  description = "app1-sg02-LB01"
  vpc_id      = var.vpc_id

  ingress {
    description = "MyHomePage"
    from_port   = 80
    to_port     = 80
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }

  tags = {
    Name    = "myApp-sg02-LB01"
    Service = "myApp"
    Owner   = "Uhuru"
    Funct   = "application Load Balancer"
  }

}

resource "aws_security_group" "myApp-SG03-sysLogServers" {
  name   = "myApp-SG03-sysLogServers"
  vpc_id = var.vpc_id

  ingress {
    description = "SyslogMonitoring"
    from_port   = 514
    to_port     = 514
    protocol    = "udp"
    cidr_blocks = ["0.0.0.0/0"]
  }
  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }

  tags = {
    Name    = "myApp-SG03-sysLogServers"
    Service = "myApp"
    Owner   = "Uhuru"
    Funct   = "application SG"
  }
}