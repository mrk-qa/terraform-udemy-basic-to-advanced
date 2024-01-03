output "storage_account_id" {
  description = "ID das storage accounts criadas na Azure"
  value       = [for sa in azurerm_storage_account.azure_storage : sa.id]
}

output "sa_primary_access_key" {
  description = "Primary access keys das storage accounts criadas na Azure"
  # value = [for pk in azurerm_storage_account.azure_storage : pk.primary_access_key]
  value     = { for key, sa in azurerm_storage_account.azure_storage : key => sa.primary_access_key }
  sensitive = true
}