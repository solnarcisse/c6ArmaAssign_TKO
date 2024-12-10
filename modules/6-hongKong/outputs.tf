output "HK_myApp_TGW" {
    description = "Hong Kong myApp transit gateway"
    value       = aws_ec2_transit_gateway.HK_myApp_TGW
}

output "TGA-HK" {
    description = "TGA-HONG-KONG-VPC-1-PROD"
    value       = aws_ec2_transit_gateway_vpc_attachment.TGA-HK
}