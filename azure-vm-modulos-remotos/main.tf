terraform {
  required_version = ">= 1.0.0"

  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "3.48.0"
    }
  }

  backend "azurerm" {
    resource_group_name  = "rg-terraform-state"
    storage_account_name = "remotestatetfmarcoqa"
    container_name       = "remote-state-container"
    key                  = "azure-vm-modulos-remotos/terraform.tfstate"
  }
}

provider "azurerm" {
  features {}
}

module "network" {
  source  = "Azure/network/azurerm"
  version = "5.2.0"

  vnet_name = "vnet-${var.environment}"

  resource_group_name = azurerm_resource_group.resource_group.name
  resource_group_location = var.location
  use_for_each        = true

  subnet_names = ["subnet-${var.environment}"]
  tags         = local.common_tags
}