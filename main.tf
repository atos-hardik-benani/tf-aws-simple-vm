# EC2 instance, using the subnet provided
resource "aws_instance" "this_instance" {
  ami                         = "ami-08c474c58294b7543"
  instance_type               = lower(var.instance_type)
  subnet_id                   = "subnet-0fc0136542949e3b6"
  associate_public_ip_address = false
  key_name                    = var.key_pair_name

  tags = {
    Name             = "atosdhc-servicenow"
    Created_By_Email = var.created_by_email
  }

  root_block_device {
    volume_size = var.volume_size
    volume_type = var.volume_type
  }
}


resource "time_static" "deployment_time" {
  depends_on = [aws_instance.this_instance]
}
