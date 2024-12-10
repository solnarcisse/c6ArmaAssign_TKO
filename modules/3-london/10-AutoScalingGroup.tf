resource "aws_autoscaling_group" "Test-VPC01-ASG01" {
  name_prefix           = "Test-VPC01-auto-scaling-group-"
  min_size              = 2
  max_size              = 8
  desired_capacity      = 2
  vpc_zone_identifier   = [
    aws_subnet.public-eu-west-2a.id,
    # aws_subnet.public-eu-west-2b.id,
    aws_subnet.public-eu-west-2c.id
  ]
  health_check_type          = "ELB"
  health_check_grace_period  = 300
  force_delete               = true
  target_group_arns          = [aws_lb_target_group.Test-VPC01-TG01.arn]

  launch_template {
    id      = aws_launch_template.Test-VPC01-LT.id
    version = "$Latest"
  }

  enabled_metrics = ["GroupMinSize", "GroupMaxSize", "GroupDesiredCapacity", "GroupInServiceInstances", "GroupTotalInstances"]

  # Instance protection for launching
  initial_lifecycle_hook {
    name                  = "instance-protection-launch"
    lifecycle_transition  = "autoscaling:EC2_INSTANCE_LAUNCHING"
    default_result        = "CONTINUE"
    heartbeat_timeout     = 60
    notification_metadata = "{\"key\":\"value\"}"
  }

  # Instance protection for terminating
  initial_lifecycle_hook {
    name                  = "scale-in-protection"
    lifecycle_transition  = "autoscaling:EC2_INSTANCE_TERMINATING"
    default_result        = "CONTINUE"
    heartbeat_timeout     = 300
  }

  tag {
    key                 = "Name"
    value               = "Test-VPC01-instance"
    propagate_at_launch = true
  }

  tag {
    key                 = "Environment"
    value               = "Production"
    propagate_at_launch = true
  }

  lifecycle {
      create_before_destroy = true
    }  
}


# Auto Scaling Policy
resource "aws_autoscaling_policy" "Test-VPC01_scaling_policy" {
  name                   = "Test-VPC01-cpu-target"
  autoscaling_group_name = aws_autoscaling_group.Test-VPC01-ASG01.name

  policy_type = "TargetTrackingScaling"
  estimated_instance_warmup = 120

  target_tracking_configuration {
    predefined_metric_specification {
      predefined_metric_type = "ASGAverageCPUUtilization"
    }
    target_value = 75.0
  }
}

# Enabling instance scale-in protection
resource "aws_autoscaling_attachment" "Test-VPC01-ASG01_attachment" {
  autoscaling_group_name = aws_autoscaling_group.Test-VPC01-ASG01.name
  lb_target_group_arn   = aws_lb_target_group.Test-VPC01-TG01.arn
}
