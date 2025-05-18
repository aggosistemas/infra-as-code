variable "vpc_name" {
  type        = string
  description = "Nome da VPC"
}

variable "subnet_name" {
  type        = string
  description = "Nome da sub-rede"
}

variable "subnet_cidr" {
  type        = string
  description = "CIDR da sub-rede"
}

variable "region" {
  type        = string
  description = "Região da GCP"
}
variable "project_id" {
  type = string
}
