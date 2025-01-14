resource "aws_instance" "sysLog_Transfer_australia" {
  ami               = data.aws_ami.latest_linux_image.id
  instance_type     = "t2.micro"
  tenancy           = "default"
  availability_zone = var.availability_zones[13].zone
 
  subnet_id         = aws_subnet.private-ap-southeast-2b.id
  security_groups   = [aws_security_group.myApp-SG03-sysLogServers.id]

  tags = {
    "name" = "sysLog_Transfer_saoPaulo"
  }
}

