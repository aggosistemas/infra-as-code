module "vpc" {
  source       = "./modules/vpc"
  vpc_name     = var.vpc_name
  subnet_name  = var.subnet_name
  subnet_cidr  = var.subnet_cidr
  region       = var.region
  project_id   = var.project_id
}

module "service_account" {
  source    = "./modules/service_account"
  sa_name   = var.sa_name
  project_id = var.project_id
}

module "gke" {
  source         = "./modules/gke"
  project_id     = var.project_id
  region         = var.region
  cluster_name   = var.cluster_name
  vpc_self_link  = module.vpc.vpc_self_link
  subnet_name    = module.vpc.subnet_name
  gke_sa_email   = module.service_account.service_account_email
}