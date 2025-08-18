# Ativa a API do Firestore
resource "google_project_service" "firestore" {
  service            = "firestore.googleapis.com"
  disable_on_destroy = true
}

# Cria o banco Firestore (obrigatório)
resource "google_firestore_database" "default" {
  name            = "(default)"
  project         = var.gcp_project_id
  location_id     = var.firestore_location   # "us-central"
  type            = "FIRESTORE_NATIVE"
  deletion_policy = "DELETE"
}

# Configura o campo TTL para a coleção
resource "google_firestore_field" "logs_pipeline_ttl" {
  project    = var.gcp_project_id
  database   = "(default)"
  collection = var.firestore_collection
  field      = var.firestore_ttl_field
}

