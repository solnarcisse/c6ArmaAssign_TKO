resource "aws_lb_target_group" "Test-VPC01-TG01" {
  name     = "Test-VPC01-target-group"
  port     = 80
  protocol = "HTTP"
  vpc_id   = aws_vpc.Test-VPC01.id
  target_type = "instance"

  health_check {
    enabled             = true
    interval            = 30
    path                = "/"
    protocol            = "HTTP"
    healthy_threshold   = 5
    unhealthy_threshold = 2
    timeout             = 5
    matcher             = "200"
  }

  tags = {
    Name    = "Test-VPC01TargetGroup"
    Service = "Test-VPC01"
    Owner   = "User"
    Project = "Web Service"
  }
}
