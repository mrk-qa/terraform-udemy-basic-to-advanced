output "rg_id" {
  description = "ID do resource group criado na Azure"
  value       = azurerm_resource_group.resource_group.id
}