variable "location" {
  description = "Região onde os recursos serão criados"
  type        = string
  default     = "East US 2"
}

variable "environment" {
  description = "Ambiente a que pertence os recursos criados na AWS"
  type        = string
  default     = "desenvolvimento"
}