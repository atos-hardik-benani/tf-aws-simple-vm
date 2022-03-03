# EC2 instance, using the subnet provided
resource "aws_instance" "this_instance" {
  ami                         = data.aws_ami.app_ami.id
  instance_type               = lower(var.instance_type)
  subnet_id                   = data.aws_subnet.this_subnet.id
  associate_public_ip_address = false
  key_name                    = var.ssh_public_key != "" ? aws_key_pair.pub_key[0].id : var.key_pair_name

  tags = {
    Name             = "instance_workspace_${substr("${terraform.workspace}", 4, -1)}"
    RequestIT        = var.request_it,
    Cost_Center      = var.cost_center,
    Created_By_Email = var.created_by_email
  }

  root_block_device {
    volume_size = var.volume_size
    volume_type = var.volume_type
  }
}

resource "aws_key_pair" "pub_key" {
  count      = var.ssh_public_key != "" ? 1 : 0
  key_name   = "${var.key_pair_name}-${substr("${terraform.workspace}", 4, -1)}"
  public_key = var.ssh_public_key
}


resource "time_static" "deployment_time" {
  depends_on = [aws_instance.this_instance]
}
