output "storage_account_id_italia" {
  description = "ID da storage account criada na Azure"
  value       = azurerm_storage_account.azure_storage["italia"].id
}

output "storage_account_id_europa" {
  description = "ID da storage account criada na Azure"
  value       = azurerm_storage_account.azure_storage["europa"].id
}

output "storage_account_id_canada" {
  description = "ID da storage account criada na Azure"
  value       = azurerm_storage_account.azure_storage["canada"].id
}

output "storage_account_id_brasil" {
  description = "ID da storage account criada na Azure"
  value       = azurerm_storage_account.azure_storage["brasil"].id
}

output "sa_primary_access_key_italia" {
  description = "Primary access key da storage account criada na Azure"
  value       = azurerm_storage_account.azure_storage["italia"].primary_access_key
  sensitive   = true
}

output "sa_primary_access_key_europa" {
  description = "Primary access key da storage account criada na Azure"
  value       = azurerm_storage_account.azure_storage["europa"].primary_access_key
  sensitive   = true
}

output "sa_primary_access_key_canada" {
  description = "Primary access key da storage account criada na Azure"
  value       = azurerm_storage_account.azure_storage["canada"].primary_access_key
  sensitive   = true
}

output "sa_primary_access_key_brasil" {
  description = "Primary access key da storage account criada na Azure"
  value       = azurerm_storage_account.azure_storage["brasil"].primary_access_key
  sensitive   = true
}