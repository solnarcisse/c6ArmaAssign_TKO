output "calif_myApp_TGW" {
    description = "California myApp transit gateway"
    value       = aws_ec2_transit_gateway.calif_myApp_TGW
}

output "TGA-california" {
    description = "TGA-CALIFORNIA-VPC-1-PROD"
    value       = aws_ec2_transit_gateway_vpc_attachment.TGA-california
}