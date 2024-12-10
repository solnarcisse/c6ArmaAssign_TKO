resource "aws_lb" "NY_alb" {
  name               = "NY-load-balancer"
  internal           = false
  load_balancer_type = "application"
  security_groups    = [aws_security_group.NY-lb01-sg01.id]
  subnets            = [
    aws_subnet.public-us-east-1a.id,
    # aws_subnet.public-us-east-1b.id,
    aws_subnet.public-us-east-1c.id
  ]
  enable_deletion_protection = false
#Lots of death and suffering here, make sure it's false

  tags = {
    Name    = "NYLoadBalancer"
    Service = "NY"
    Owner   = "User"
    Project = "Web Service"
  }
}

resource "aws_lb_listener" "http" {
  load_balancer_arn = aws_lb.NY_alb.arn
  port              = 80
  protocol          = "HTTP"

  default_action {
    type             = "forward"
    target_group_arn = aws_lb_target_group.NY_tg.arn
  }
}

output "lb_dns_name_ny" {
  value       = aws_lb.NY_alb.dns_name
  description = "The DNS name of the NY Load Balancer."
}
