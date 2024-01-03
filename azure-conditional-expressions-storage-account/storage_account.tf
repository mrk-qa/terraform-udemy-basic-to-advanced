resource "azurerm_resource_group" "resource_group" {
  name     = "rg-${var.environment}"
  location = var.location

  tags = local.common_tags
}

resource "azurerm_storage_account" "azure_storage" {
  # export TF_VAR_environment=test ou dev ou prod
  count = var.environment == "dev" ? 0 : 1

  name                     = "marcoqa${var.environment}"
  resource_group_name      = azurerm_resource_group.resource_group.name
  location                 = var.location
  account_tier             = var.environment == "prod" ? "Premium" : "Standard"
  account_replication_type = var.environment == "prod" ? "RAGZRS" : "LRS"

  tags = local.common_tags
}