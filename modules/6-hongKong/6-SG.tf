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

  # ingress {
  #   description = "SSH"
  #   from_port   = 22
  #   to_port     = 22
  #   protocol    = "tcp"
  #   cidr_blocks = [var.vpc_params[0].vpc_cidr]
  # }

  # ingress {
  #   description = "RDP"
  #   from_port   = 3389
  #   to_port     = 3389
  #   protocol    = "tcp"
  #   cidr_blocks = ["0.0.0.0/0"]
  # }


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