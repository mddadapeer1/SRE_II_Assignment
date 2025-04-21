variable "ami_id" {
  description = "AMI ID for the instance. If empty, will use latest Amazon Linux 2 AMI"
  type        = string
  default     = ""
}

variable "instance_type" {
  description = "EC2 instance type"
  type        = string
  default     = "t2.medium"
}

variable "key_name" {
  description = "SSH key pair name"
  type        = string
}

variable "security_group_ids" {
  description = "List of security group IDs to attach"
  type        = list(string)
}

variable "instance_name" {
  description = "Name tag for the instance"
  type        = string
  default     = "sre-assignment-server"
}

variable "tags" {
  description = "Additional tags to apply to resources"
  type        = map(string)
  default     = {}
}

variable "docker_compose_version" {
  description = "Docker Compose version to install"
  type        = string
  default     = "1.29.2"
}
