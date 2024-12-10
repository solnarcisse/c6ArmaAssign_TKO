resource "aws_internet_gateway" "igw" {
  vpc_id = var.vpc_id

  tags = {
    Name    = "NY_IG"
    Service = "application1"
  }
}
