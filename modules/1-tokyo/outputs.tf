output "tokyo_myApp_TGW" {
    description = "Tokyo myApp transit gateway"
    value       = aws_ec2_transit_gateway.tokyo_myApp_TGW
}

output "TGA-tokyo" {
    description = "TGA-TOKYO-VPC-1-PROD"
    value       = aws_ec2_transit_gateway_vpc_attachment.TGA-tokyo
}