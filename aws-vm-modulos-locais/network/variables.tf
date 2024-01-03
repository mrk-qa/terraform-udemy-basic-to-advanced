variable "cidr_vpc" {
  description = "CIDR para a VPC criada na AWS"
  type        = string
}

variable "cidr_subnet" {
  description = "CIDR para a subnet criada na AWS"
  type        = string
}

variable "environment" {
  description = "Ambiente a que pertence os recursos criados na AWS"
  type        = string
}