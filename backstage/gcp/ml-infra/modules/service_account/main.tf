resource "google_project_service" "cloudresourcemanager" {
  service             = "cloudresourcemanager.googleapis.com"
  project             = var.project_id
  disable_on_destroy  = false
}

resource "google_service_account" "ml_service_account" {
  account_id   = var.sa_name
  display_name = "Service Account for ML workload"
  project      = var.project_id
}

resource "google_project_iam_member" "storage_access" {
  project = var.project_id
  role    = "roles/storage.objectViewer"
  member  = "serviceAccount:${google_service_account.ml_service_account.email}"
}

resource "google_project_iam_member" "sql_client_access" {
  project = var.project_id
  role    = "roles/cloudsql.client"
  member  = "serviceAccount:${google_service_account.ml_service_account.email}"
}
