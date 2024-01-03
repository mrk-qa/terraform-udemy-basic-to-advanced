variable "location" {
  description = "Região onde os recursos serão criados na Azure"
  type        = string
  default     = "East US 2"
}

variable "account_tier" {
  description = "Tier da storage account na Azure"
  type        = string
  default     = "Standard"
}

variable "account_replication_type" {
  description = "Tipo de replicação de dados da storage account"
  type        = string
  default     = "LRS"
}

variable "resource_group_name" {
  description = "Nome para o resource group na Azure"
  type        = string
  default     = "rg-curso-terraform"
}

variable "storage_account_name" {
  description = "Nome da storage account na Azure"
  type        = string
  default     = "marcoqaterraform"
}

variable "container_name" {
  description = "Nome do container na Azure"
  type        = string
  default     = "container-terraform"
}