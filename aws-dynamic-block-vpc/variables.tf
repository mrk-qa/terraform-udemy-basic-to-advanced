variable "ports" {
  description = "Portas que serão abertas no security group"
  type = map(object({
    description = string
    cidr_block  = list(string)
  }))

  default = {
    22 = {
      description = "Porta 22 para VPN"
      cidr_block  = ["20.15.101.158/32"]
    }
    80 = {
      description = "Porta 80 para HTTP"
      cidr_block  = ["0.0.0.0/0"]
    }
    443 = {
      description = "Porta 443 para HTTPS"
      cidr_block  = ["0.0.0.0/0"]
    }
  }
} 