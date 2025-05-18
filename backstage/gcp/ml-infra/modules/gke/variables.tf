variable "project_id" {
  type        = string
  description = "ID do projeto GCP"
}

variable "region" {
  type        = string
  description = "Região da GCP"
}

variable "cluster_name" {
  type        = string
  description = "Nome do cluster GKE"
  default     = "cluster-machine-learning"
}

variable "vpc_self_link" {
  type        = string
  description = "Self link da VPC"
}

variable "subnet_name" {
  type        = string
  description = "Nome da sub-rede"
}

variable "gke_sa_email" {
  type        = string
  description = "E-mail da Service Account usada pelo GKE"
}