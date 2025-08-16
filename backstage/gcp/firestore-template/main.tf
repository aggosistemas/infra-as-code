provider "google" {
  project = var.gcp_project_id
  region  = var.gcp_region
}

# Ativa a API do Firestore
resource "google_project_service" "firestore" {
  service             = "firestore.googleapis.com"
  disable_on_destroy  = false
}

# Cria o banco Firestore
resource "google_firestore_database" "default" {
  name        = var.firestore_database_id   # (default) ou customizado
  project     = var.gcp_project_id
  location_id = var.firestore_location
  type        = "FIRESTORE_NATIVE"
}

# Configura o campo TTL para a coleção
resource "google_firestore_field" "logs_pipeline_ttl" {
  project    = var.gcp_project_id
  database   = google_firestore_database.default.name
  collection = var.firestore_collection
  field      = var.firestore_ttl_field

 
}
