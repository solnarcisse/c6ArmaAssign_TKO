resource "aws_instance" "sysLog_Transfer_saoPaulo" {
  ami               = data.aws_ami.latest_linux_image.id
  instance_type     = "t2.micro"
  tenancy           = "default"
  availability_zone = var.availability_zones[11].zone
 
  subnet_id         = aws_subnet.private-sa-east-1c.id
  security_groups   = [aws_security_group.myApp-SG03-sysLogServers.id]

  tags = {
    "name" = "sysLog_Transfer_saoPaulo"
  }
}
