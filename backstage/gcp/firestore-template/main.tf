provider "google" {
  project = var.gcp_project_id
  region  = var.gcp_region
}

# Ativa a API do Firestore
resource "google_project_service" "firestore" {
  service             = "firestore.googleapis.com"
  disable_on_destroy  = false
}

# Cria o banco Firestore (sempre (default))
resource "google_firestore_database" "default" {
  name        = "(default)"                # precisa ser exatamente (default)
  project     = var.gcp_project_id
  location_id = var.firestore_location     # us-central
  type        = "FIRESTORE_NATIVE"
}

# Configura o campo TTL para a coleção
resource "google_firestore_field" "logs_pipeline_ttl" {
  project    = var.gcp_project_id
  database   = "(default)"                 # fixo
  collection = var.firestore_collection
  field      = var.firestore_ttl_field
  depends_on = [google_firestore_database.default]
}
