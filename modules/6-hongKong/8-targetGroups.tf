resource "aws_lb_target_group" "myApp_tg" {
  name        = "app1-target-group"
  port        = 80
  protocol    = "HTTP"
  vpc_id      = var.vpc_id
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
    Name    = "myAppTargetGroup"
    Service = "myApp"
    Owner   = "Uhuru"
    Funct   = "Web Service"
  }
}