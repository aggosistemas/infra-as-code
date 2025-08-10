# Índices compostos necessários para as consultas do agente

# logs_pipeline: where analisado=false and status='FAILED' orderBy created_at desc
resource "google_firestore_index" "logs_pipeline_idx_main" {
  project    = var.gcp_project_id
  database   = google_firestore_database.default.name
  collection = "logs_pipeline"

  fields {
    field_path = "analisado"
    order      = "ASCENDING"
  }
  fields {
    field_path = "status"
    order      = "ASCENDING"
  }
  fields {
    field_path = "created_at"
    order      = "DESCENDING"
  }

  depends_on = [google_firestore_database.default]
}

# logs_app: where analisado=false and level='ERROR' orderBy created_at desc
resource "google_firestore_index" "logs_app_idx_main" {
  project    = var.gcp_project_id
  database   = google_firestore_database.default.name
  collection = "logs_app"

  fields {
    field_path = "analisado"
    order      = "ASCENDING"
  }
  fields {
    field_path = "level"
    order      = "ASCENDING"
  }
  fields {
    field_path = "created_at"
    order      = "DESCENDING"
  }

  depends_on = [google_firestore_database.default]
}
