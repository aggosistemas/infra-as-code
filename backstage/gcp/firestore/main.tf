provider "google" {
  project = var.gcp_project_id
  region  = var.gcp_region
}

resource "google_project_service" "firestore" {
  service = "firestore.googleapis.com"
}

resource "google_firestore_database" "default" {
  name     = "agent-ia-active"
  project  = var.gcp_project_id
  location_id = var.gcp_region
  type     = "FIRESTORE_NATIVE"
}

resource "google_firestore_field" "logs_pipeline_ttl" {
  project    = var.gcp_project_id
  database   = "agent-ia-active"
  collection = "logs_pipeline"
  field      = "ttl_hot"

  ttl_config {}
}
