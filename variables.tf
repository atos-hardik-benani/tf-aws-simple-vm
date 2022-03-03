variable "instance_type" {
  description = "The instance type to use for the instance"
  type        = string
  default     = "t2.micro"
}

variable "subnet_name" {
  description = "VPC Subnet Name to launch in."
  type        = string
  default     = "SUB-USWST2-RPS-RPS1"
}

variable "volume_size" {
  description = "Size of the volume in gibibytes (GiB)"
  type        = number
  default     = 15
}

variable "volume_type" {
  description = "Type of volume"
  type        = string
  default     = "gp2"
}

# Tags for the EC2 instance
variable "request_it" {
  description = "Internal request_it number"
  type        = string
  default     = "I0026089"
}

variable "cost_center" {
  description = "Internal cost center id used for billing purposes"
  type        = string
  default     = "842"
}

variable "created_by_email" {
  description = "Email address of the resourse owner/creator"
  type        = string
  default     = "test_email@test.com"
}


variable "key_pair_name" {
  description = "Key name of the Key Pair to use for the instance."
  default     = ""
}

variable "ssh_public_key" {
  description = "Key pair's public key will be registered with AWS to allow logging-in to EC2 instances."
  default     = ""
}
