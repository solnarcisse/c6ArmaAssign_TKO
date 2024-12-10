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

resource "aws_launch_template" "myApp_LT" {
  name_prefix   = "myApp_LT"
  image_id      = data.aws_ami.latest_linux_image.id
  instance_type = "t2.micro"

  # key_name = "MyAppLinuxBox"

  vpc_security_group_ids = [aws_security_group.myApp-SG01-servers.id]

  user_data = filebase64("./startUpScript.sh")

  tag_specifications {
    resource_type = "instance"
    tags = {
      Name    = "myApp_LT"
      Service = "myApp"
      Owner   = "Uhuru"
      Funct   = "EC2 server"
    }
  }

  lifecycle {
    create_before_destroy = true
  }
}