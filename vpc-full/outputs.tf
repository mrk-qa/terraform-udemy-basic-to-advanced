output "subnet_id_aws_full" {
  description = "ID da subnet na AWS"
  value       = aws_subnet.subnet.id
}

output "security_group_id_aws_full" {
  description = "ID da security group na AWS"
  value       = aws_security_group.sg.id
}