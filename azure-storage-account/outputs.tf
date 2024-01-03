output "storage_account_id" {
  description = "ID da storage account criada na Azure"
  value       = azurerm_storage_account.azure_storage.id
}

output "sa_primary_access_key" {
  description = "Primary access key da storage account criada na Azure"
  value       = azurerm_storage_account.azure_storage.primary_access_key
  sensitive   = true
}