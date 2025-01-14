resource "aws_instance" "sysLog_Transfer_London" {
  ami               = data.aws_ami.latest_linux_image.id
  instance_type     = "t2.micro"
  tenancy           = "default"
  availability_zone = var.availability_zones[7].zone
 
  subnet_id         = aws_subnet.private-eu-west-2b.id
  security_groups   = [aws_security_group.myApp-SG03-sysLogServers.id]

  tags = {
    "name" = "sysLog_Transfer_London"
  }
}

data "aws_ami" "latest_linux_image" {
  most_recent = true
  owners      = ["amazon"]

  filter {
    name   = "name"
    values = ["amzn2-ami-hvm-*-x86_64-gp2"]
  }

  filter {
    name   = "virtualization-type"
    values = ["hvm"]
  }
}