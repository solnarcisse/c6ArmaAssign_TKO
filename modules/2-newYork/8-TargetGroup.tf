resource "aws_lb_target_group" "NY_tg" {
  name     = "NY-target-group"
  port     = 80
  protocol = "HTTP"
  vpc_id   = aws_vpc.NY-vpc.id
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
    Name    = "NYTargetGroup"
    Service = "NY"
    Owner   = "User"
    Project = "Web Service"
  }
}
