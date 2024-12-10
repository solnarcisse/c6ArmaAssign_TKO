resource "aws_lb" "Calif_alb" {
  name               = "Calif-load-balancer"
  internal           = false
  load_balancer_type = "application"
  security_groups    = [aws_security_group.Calif-lb01-sg01.id]
  subnets            = [
    aws_subnet.public-us-west-1a.id,
    # aws_subnet.public-us-west-1b.id,
    aws_subnet.public-us-west-1c.id
  ]
  enable_deletion_protection = false
#Lots of death and suffering here, make sure it's false

  tags = {
    Name    = "CalifLoadBalancer"
    Service = "Calif"
    Owner   = "User"
    Project = "Web Service"
  }
}

resource "aws_lb_listener" "http" {
  load_balancer_arn = aws_lb.Calif_alb.arn
  port              = 80
  protocol          = "HTTP"

  default_action {
    type             = "forward"
    target_group_arn = aws_lb_target_group.Calif_tg.arn
  }
}
output "lb_dns_name" {
  value       = aws_lb.Calif_alb.dns_name
  description = "The DNS name of the Calif Load Balancer."
}
