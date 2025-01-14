#Providers

#VPCs

# output "vpc_id" {
#   value       = module.vpc_ha_prod.vpc_id
#   description = "VPC ID"
# }

# #Load Balancers
# output "lb_dns_name" {
#   value       = aws_lb.myApp_alb.dns_name
#   description = "The DNS name of the myApp Load Balancer."
# }

output "module_egress_rules" {
  value       = module.tokyo.egress_rules
  description = "Egress rules from the NACL module."
}

output "module_ingress_rules" {
  value       = module.tokyo.ingress_rules
  description = "Ingress rules from the NACL module."
}
