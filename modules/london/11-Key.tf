resource "tls_private_key" "Linux02Key" {
  algorithm = "RSA"
  rsa_bits  = 2048
}

data "tls_public_key" "Linux02Key" {
  private_key_pem = tls_private_key.Linux02Key.private_key_pem
}

output "private_key" {
  value     = tls_private_key.Linux02Key.private_key_pem
  sensitive = true
}

output "public_key" {
  value = data.tls_public_key.Linux02Key.public_key_openssh
}
