variable "gcp_project_id" {
  description = "ID do projeto no GCP"
  type        = string
  default     = "project-ia-log-agent"
}

variable "gcp_region" {
  description = "Região default usada pelo provider"
  type        = string
  default     = "us-central1"
}

variable "firestore_location" {
  description = "Localização do Firestore (ex.: us-central)"
  type        = string
  default     = "us-central1"
}

variable "firestore_database_id" {
  description = "ID do banco Firestore. Use (default) para o banco padrão"
  type        = string
  default     = "template-backstage"
}

variable "firestore_collection" {
  description = "Nome da coleção"
  type        = string
  default     = "logs_backstage"
}

variable "firestore_ttl_field" {
  description = "Campo de TTL para expiração dos documentos"
  type        = string
  default     = "ttl_hot"
}

variable "firestore_ttl_days" {
  description = "Número de dias para o TTL"
  type        = number
  default     = 7
}
