resource "google_container_cluster" "primary" {
  name     = var.cluster_name
  location = var.region
  project  = var.project_id
  deletion_protection = false

  remove_default_node_pool = true
  initial_node_count       = 1

  network    = var.vpc_self_link
  subnetwork = var.subnet_name

  ip_allocation_policy {}

  workload_identity_config {
    workload_pool = "${var.project_id}.svc.id.goog"
  }
}

resource "google_container_node_pool" "primary_nodes" {
  name       = "default-pool"
  cluster    = google_container_cluster.primary.name
  location   = var.region
  project    = var.project_id

  node_config {
    preemptible     = true
    machine_type    = "e2-micro"
    service_account = var.gke_sa_email

    oauth_scopes = [
      "https://www.googleapis.com/auth/cloud-platform",
    ]
  }

  initial_node_count = 1
}

# Concede ao usuário aggosistemas@gmail.com permissões de visualização e gerenciamento no GKE
resource "google_project_iam_member" "aggosistemas_gke_access" {
  project = var.project_id
  role    = "roles/container.developer"
  member  = "user:aggosistemas@gmail.com"
}
