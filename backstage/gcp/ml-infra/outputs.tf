# Output da VPC
output "vpc_self_link" {
  value = module.vpc.vpc_self_link
}

output "subnet_name" {
  value = module.vpc.subnet_name
}

# Output da Service Account
output "service_account_email" {
  value = module.service_account.service_account_email
}

# Output do GKE
output "cluster_name" {
  value = module.gke.cluster_name
}

output "gke_location" {
  value = module.gke.location
}

output "gke_endpoint" {
  value = module.gke.endpoint
}
