variable "project_id" {
  description = "ID do projeto GCP"
  type        = string
}

variable "region" {
  description = "Região GCP para o cluster"
  type        = string
  default     = "us-central1"
}

variable "cluster_name" {
  description = "Nome do cluster GKE"
  type        = string
  default     = "cluster-estudo"
}
