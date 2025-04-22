output "instance_public_ip" {
  description = "Public IP address of the EC2 instance"
  value       = module.eip.public_ip
}

output "instance_public_dns" {
  description = "Public DNS name of the EC2 instance"
  value       = module.eip.public_dns
}

output "ssh_command" {
  description = "Command to SSH into the instance"
  value       = "ssh -i ${var.key_name}.pem ec2-user@${module.eip.public_ip}"
}
