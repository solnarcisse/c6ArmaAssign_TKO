output "london_myApp_TGW" {
    description = "London myApp transit gateway"
    value       = aws_ec2_transit_gateway.london_myApp_TGW
}

output "TGA-london" {
    description = "TGA-LONDON-VPC-1-PROD"
    value       = aws_ec2_transit_gateway_vpc_attachment.TGA-london
}