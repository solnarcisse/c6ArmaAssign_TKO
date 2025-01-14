resource "aws_instance" "myApp_Instance" {
  ami               = data.aws_ami.latest_linux_image.id
  instance_type     = "t2.micro"
  tenancy           = "default"
  availability_zone = var.availability_zones[0].zone
 
  subnet_id         = aws_subnet.public-ap-northeast-1a.id
  security_groups   = [aws_security_group.myApp-SG01-servers.id]

  tags = {
    "name" = "sysLog_Transfer_NY"
  }
}