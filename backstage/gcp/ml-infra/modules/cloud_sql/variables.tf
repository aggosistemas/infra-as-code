
variable "instance_name" {
  description = "Nome da instância Cloud SQL"
  type        = string
  default     = "ml-postgres"
}

variable "database_name" {
  description = "Nome do banco de dados padrão"
  type        = string
  default     = "ml_db"
}

variable "db_user" {
  description = "Nome do usuário do banco"
  type        = string
  default     = "ml_user"
}

variable "db_password" {
  description = "Senha do banco"
  type        = string
  sensitive   = true
}

variable "region" {
  description = "Região da GCP"
  type        = string
  default     = "us-central1"
}

variable "private_network" {
  description = "Self-link da VPC para IP privado"
  type        = string
}
