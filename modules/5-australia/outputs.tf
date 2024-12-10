output "australia_myApp_TGW" {
    description = "Australia myApp transit gateway"
    value       = aws_ec2_transit_gateway.australia_myApp_TGW
}

output "TGA-australia" {
    description = "TGA-AUSTRALIA-VPC-1-PROD"
    value       = aws_ec2_transit_gateway_vpc_attachment.TGA-australia
}