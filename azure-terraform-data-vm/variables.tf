variable "location" {
  description = "Região onde os recursos serão criados"
  type        = string
  default     = "East US 2"
}

variable "infra_version" {
  description = "Versão da infraestrutura"
  type        = string
  default     = "2.0.0"
}