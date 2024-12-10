output "newYork_myApp_TGW" {
    description = "New York myApp transit gateway"
    value       = aws_ec2_transit_gateway.newYork_myApp_TGW
}

output "TGA-new-york" {
    description = "TGA-NEW-YORK-VPC-1-PROD"
    value       = aws_ec2_transit_gateway_vpc_attachment.TGA-new-york
}