resource "aws_lb_target_group" "Calif_tg" {
  name     = "Calif-target-group"
  port     = 80
  protocol = "HTTP"
  vpc_id   = var.vpc_id
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
    Name    = "CalifTargetGroup"
    Service = "Calif"
    Owner   = "User"
    Project = "Web Service"
  }
}
