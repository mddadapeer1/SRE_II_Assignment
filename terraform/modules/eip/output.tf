output "public_ip" {
  description = "Elastic IP address"
  value       = aws_eip.this.public_ip
}

output "public_dns" {
  description = "Public DNS name for the EIP"
  value       = aws_eip.this.public_dns
}
