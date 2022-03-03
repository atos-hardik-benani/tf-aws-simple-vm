variable "instance_type" {
  description = "The instance type to use for the instance"
  type        = string
  default     = "t2.micro"
}

variable "subnet_name" {
  description = "VPC Subnet Name to launch in."
  type        = string
  default     = ""
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

variable "created_by_email" {
  description = "Email address of the resourse owner/creator"
  type        = string
  default     = "test_email@test.com"
}

variable "key_pair_name" {
  description = "Key name of the Key Pair to use for the instance."
  default     = ""
}

variable "region" {
  description = "region"
}

variable "access_key" {
  description = "access_key"
}

variable "secret_key" {
  description = "secret_key"
}
