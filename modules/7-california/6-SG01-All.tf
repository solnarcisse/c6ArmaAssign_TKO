resource "aws_security_group" "Calif-tg01-sg01" {
  name        = "Calif-tg01-sg01"
  description = "Calif-tg01-sg01"
  vpc_id      = aws_vpc.Calif-vpc.id

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
  #   cidr_blocks = ["0.0.0.0/0"]
  # }

  # ingress {
  #   description = "MyEvilBox"
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

  # tags = {
  #   Name    = "Calif-tg01-sg01"
  #   Service = "application1"
  # #   Owner   = "Luke"
  # #   Planet  = "Musafar"
  # # }

}





resource "aws_security_group" "Calif-lb01-sg01" {
  name        = "Calif-lb01-sg01"
  description = "Calif-lb01-sg01"
  vpc_id      = aws_vpc.Calif-vpc.id

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
    Name    = "Calif-lb01-sg01"
    Service = "application1"
    # Owner   = "Luke"
    # Planet  = "Musafar"
  }

}
