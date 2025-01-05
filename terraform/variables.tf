variable "region" {
  description = "Região padrão para os recursos AWS"
  type        = string
  default     = "ca-central-1" # Substitua pela região desejada
}

variable "environment" {
  description = "Ambiente de implantação (e.g., dev, prod)"
  type        = string
  default     = "dev"
}
