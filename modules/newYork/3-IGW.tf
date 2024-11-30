resource "aws_internet_gateway" "myApp_IGW" {
  vpc_id = var.vpc_id

  tags = {
    Name    = "myapp_IGW"
    Service = "application1"
    Owner   = "Uhuru"
    Funct   = "IGW-prod"
  }
}
