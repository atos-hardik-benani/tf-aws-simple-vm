output "instance_id" {
  value = aws_instance.this_instance.id
}

output "private_fqdn" {
  value = aws_instance.this_instance.private_dns
}
output "private_ip" {
  value = aws_instance.this_instance.private_ip
}

output "instance_type" {
  value = aws_instance.this_instance.instance_type
}

output "subnet_id" {
  value = aws_instance.this_instance.subnet_id
}

output "volume_size" {
  value = aws_instance.this_instance.root_block_device.0.volume_size
}

output "volume_type" {
  value = aws_instance.this_instance.root_block_device.0.volume_type
}

output "created_by_email" {
  value = aws_instance.this_instance.tags.Created_By_Email
}
