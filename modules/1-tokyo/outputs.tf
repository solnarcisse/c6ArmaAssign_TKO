output "tokyo_myApp_TGW" {
    description = "Tokyo myApp transit gateway"
    value       = aws_ec2_transit_gateway.tokyo_myApp_TGW
}

output "TGA-tokyo" {
    description = "TGA-TOKYO-VPC-1-PROD"
    value       = aws_ec2_transit_gateway_vpc_attachment.TGA-tokyo
}

output "egress_rules" {
  value = aws_network_acl.sysLogNACL.egress
  description = "List of egress rules for the NACL."
}

output "ingress_rules" {
  value = aws_network_acl.sysLogNACL.ingress
  description = "List of ingress rules for the NACL."
}
