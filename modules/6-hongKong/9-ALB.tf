resource "aws_lb" "myApp_alb" {
  name               = "myApp-load-balancer"
  internal           = false
  load_balancer_type = "application"
  security_groups    = [aws_security_group.myApp-sg02-LB01.id]
  subnets = [
    aws_subnet.public-ap-east-1a.id
  ]
  enable_deletion_protection = false
  #Lots of death and suffering here, make sure it's false

  tags = {
    Name    = "myAppLoadBalancer"
    Service = "myApp"
    Owner   = "Uhuru"
    Project = "Web Service"
  }
}

resource "aws_lb_listener" "http" {
  load_balancer_arn = aws_lb.myApp_alb.arn
  port              = 80
  protocol          = "HTTP"

  default_action {
    type             = "forward"
    target_group_arn = aws_lb_target_group.myApp_tg.arn
  }
}
