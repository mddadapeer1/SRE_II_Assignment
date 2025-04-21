variable "instance_id" {
  description = "Instance ID to associate with EIP"
  type        = string
}

variable "name" {
  description = "Name tag for the EIP"
  type        = string
  default     = "sre-assignment-eip"
}

variable "tags" {
  description = "Additional tags to apply to resources"
  type        = map(string)
  default     = {}
}
