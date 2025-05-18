variable "vpc_name" {
  default = "vpc-ml-privada"
}

variable "subnet_name" {
  default = "subnet-ml"
}

variable "subnet_cidr" {
  default = "10.20.0.0/24"
}

variable "region" {
  default = "us-central1"
}

variable "project_id" {
  default = "vm-projeto-tf"
}

variable "sa_name" {
  default = "ml-service-account"
}

variable "cluster_name" {
  default = "cluster-machine-learning"
}
