resource "aws_instance" "this" {
  ami           = var.ami_id
  instance_type = var.instance_type
  key_name      = var.key_name
  vpc_security_group_ids = var.security_group_ids

  user_data = templatefile("${path.module}/user_data.sh", {
    docker_compose_version = var.docker_compose_version
  })

  tags = merge(
    var.tags,
    {
      Name = var.instance_name
    }
  )
}

data "aws_ami" "amazon_linux_2" {
  count = var.ami_id == "" ? 1 : 0

  most_recent = true
  owners      = ["amazon"]

  filter {
    name   = "name"
    values = ["amzn2-ami-hvm-*-x86_64-gp2"]
  }
}
