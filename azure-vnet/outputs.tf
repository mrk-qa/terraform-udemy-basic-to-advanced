output "subnet_id" {
  description = "ID da subnet na Azure"
  value       = azurerm_subnet.subnet.id
}

output "security_group_id" {
  description = "ID da security group na Azure"
  value       = azurerm_network_security_group.sg.id
}