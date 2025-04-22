module "security_group" {
  source = "./modules/security-group"

  name        = "sre-assignment-sg"
  description = "Security group for SRE assignment"
  vpc_id      = var.vpc_id

  ingress_rules = [
    {
      from_port   = 22
      to_port     = 22
      protocol    = "tcp"
      cidr_blocks = ["0.0.0.0/0"]
      description = "SSH access"
    },
    {
      from_port   = 80
      to_port     = 80
      protocol    = "tcp"
      cidr_blocks = ["0.0.0.0/0"]
      description = "HTTP access"
    },
    {
      from_port   = 443
      to_port     = 443
      protocol    = "tcp"
      cidr_blocks = ["0.0.0.0/0"]
      description = "HTTPS access"
    }
  ]

  tags = var.tags
}

module "ec2_instance" {
  source = "./modules/ec2-instance"

  ami_id             = var.ami_id
  instance_type      = var.instance_type
  key_name           = var.key_name
  security_group_ids = [module.security_group.security_group_id]
  instance_name      = var.instance_name
  tags               = var.tags
}

module "eip" {
  source = "./modules/eip"

  instance_id = module.ec2_instance.instance_id
  name        = "${var.instance_name}-eip"
  tags        = var.tags
}
