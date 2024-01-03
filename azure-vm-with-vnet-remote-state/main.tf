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
    key                  = "azure-vm/terraform.tfstate"
  }
}

provider "azurerm" {
  features {}
}

data "terraform_remote_state" "vnet" {
  backend = "azurerm"
  config = {
    resource_group_name  = "rg-terraform-state"
    storage_account_name = "remotestatetfmarcoqa"
    container_name       = "remote-state-container"
    key                  = "azure-vnet/terraform.tfstate"
  }
}