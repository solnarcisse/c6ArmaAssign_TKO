resource "aws_internet_gateway" "igw" {
  vpc_id = var.vpc_id

  tags = {
    Name    = "app1_IG"
    Service = "application1"
    Owner   = "Luke"
    Planet  = "Musafar"
  }
}
