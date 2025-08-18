# ID do projeto GCP
variable "gcp_project_id" {
  description = "ID do projeto GCP"
  type        = string
}

# Região usada pelos recursos (ex: us-central1 para Cloud Run)
variable "gcp_region" {
  description = "Região principal usada para recursos regionais"
  type        = string
  default     = "us-central1"
}

# Firestore sempre usa (default)
variable "firestore_database_id" {
  description = "Nome fixo do banco de dados Firestore"
  type        = string
  default     = "(default)"
}

# Localização do Firestore (precisa bater com a região do projeto)
variable "firestore_location" {
  description = "Localidade do Firestore"
  type        = string
  default     = "us-central"
}

# Nome da coleção padrão
variable "firestore_collection" {
  description = "Coleção do Firestore para logs"
  type        = string
  default     = "logs_pipeline"
}

# Campo usado para TTL
variable "firestore_ttl_field" {
  description = "Campo que controla a expiração dos documentos"
  type        = string
  default     = "ttl_hot"
}
