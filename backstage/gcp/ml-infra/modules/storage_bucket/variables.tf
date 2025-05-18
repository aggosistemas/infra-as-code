
variable "bucket_name" {
  description = "Nome do bucket"
  type        = string
  default     = "ml-modelos-dev"
}

variable "region" {
  description = "Região da GCP"
  type        = string
  default     = "us-central1"
}

variable "project_id" {
  type = string
}
