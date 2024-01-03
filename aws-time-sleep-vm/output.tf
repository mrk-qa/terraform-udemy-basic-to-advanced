output "vm_ip_1" {
  description = "IP da VM criada na AWS"
  value       = aws_instance.vm_1.public_ip
}

output "vm_ip_2" {
  description = "IP da VM criada na AWS"
  value       = aws_instance.vm_2.public_ip
}