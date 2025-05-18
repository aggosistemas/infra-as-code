output "vpc_self_link" {
  value = google_compute_network.vpc_ml_privada.self_link
}

output "subnet_name" {
  value = google_compute_subnetwork.subnet_ml.name
}