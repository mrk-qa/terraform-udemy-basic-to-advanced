terraform {
  required_version = ">= 1.3.0"

  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "4.58.0"
    }
  }

  backend "azurerm" {
    resource_group_name  = "rg-terraform-state"
    storage_account_name = "remotestatetfmarcoqa"
    container_name       = "remote-state-container"
    key                  = "comandos/terraform.tfstate"
  }
}

provider "aws" {
  region = "us-east-2"

  default_tags {
    tags = {
      owner      = "marco-qa"
      managed-by = "terraform"
    }
  }
}