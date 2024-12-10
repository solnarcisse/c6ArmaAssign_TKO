output "saoPaulo_myApp_TGW" {
    description = "Sao Paulo myApp transit gateway"
    value       = aws_ec2_transit_gateway.saoPaulo_myApp_TGW
}

output "TGA-sao-paulo" {
    description = "TGA-SAO-PAULO-VPC-1-PROD"
    value       = aws_ec2_transit_gateway_vpc_attachment.TGA-sao-paulo
}