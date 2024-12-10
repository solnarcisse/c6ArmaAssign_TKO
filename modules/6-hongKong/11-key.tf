# resource "tls_private_key" "MyAppLinuxBox" {
#   algorithm = "RSA"
#   rsa_bits  = 2048
# }

# data "tls_public_key" "MyAppLinuxBox" {
#   private_key_pem = tls_private_key.MyAppLinuxBox.private_key_pem
# }

# output "private_key" {
#   value     = tls_private_key.MyAppLinuxBox.private_key_pem
#   sensitive = true
# }

# output "public_key" {
#   value = data.tls_public_key.MyAppLinuxBox.public_key_openssh
# }