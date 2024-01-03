output "subnet_id_azure_full" {
  description = "ID da subnet na Azure"
  value       = azurerm_subnet.subnet.id
}

output "security_group_id_azure_full" {
  description = "ID da security group na Azure"
  value       = azurerm_network_security_group.sg.id
}