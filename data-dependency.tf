# Search by subnet Name
data "aws_subnet" "this_subnet" {
  filter {
    name   = "tag:Name"
    values = [var.subnet_name]
  }
}

# Data source to obtain dynamically the ami id
# If the user wants to use another OS selecting a different one from servicenow...
# ...we should add more variables for that. But it's going to be a challenge to filter the ami using only the name of the OS
data "aws_ami" "app_ami" {
  most_recent = true
  owners      = ["amazon"]

  filter {
    name   = "name"
    values = ["amzn2-ami-hvm*"]
  }
}

data "aws_ec2_instance_type" "instance_type" {
  instance_type = var.instance_type
}
data "aws_caller_identity" "this" {}

data "aws_region" "current" {}
