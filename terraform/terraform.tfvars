region       = "us-east-1"
instance_type = "t2.medium"
key_name     = "your-key-name"
instance_name = "sre-assignment-server"

tags = {
  Project     = "SRE Assignment"
  Environment = "Development"
  ManagedBy   = "Terraform"
}
