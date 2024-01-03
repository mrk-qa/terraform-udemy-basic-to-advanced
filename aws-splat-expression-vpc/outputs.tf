output "subnet_id" {
  description = "ID da subnet na AWS"
  value       = aws_subnet.subnet[*].id
}