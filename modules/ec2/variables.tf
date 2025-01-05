variable "instance_type" {
  description = "Tipo da instância EC2"
  type        = string
  default = "t2.micro"
}

variable "ami" {
  description = "ID da AMI para inicializar a instância"
  type        = string
  default = "ami-0a590ca28046d073e"
}

variable "key_name" {
  description = "Nome da chave SSH para instâncias EC2"
  type        = string
  default     = "my-generated-key"
}

variable "subnet_id" {
  description = "ID da sub-rede (opcional)"
  type        = string
  default     = null
}

variable "security_group_ids" {
  description = "Lista de IDs de Security Groups"
  type        = list(string)
  default     = []
}

variable "tags" {
  description = "Tags para identificar a instância"
  type        = map(string)
  default     = {}
}

variable "environment" {
  description = "Nome do ambiente (e.g., dev, prod)"
  type        = string
  default     = "dev"
}
