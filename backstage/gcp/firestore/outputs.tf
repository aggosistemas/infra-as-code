output "firestore_database_name" {
  value       = google_firestore_database.default.name
  description = "Nome do database Firestore (default)."
}

output "firestore_location_id" {
  value       = google_firestore_database.default.location_id
  description = "Location do Firestore."
}

output "logs_pipeline_index_id" {
  value       = google_firestore_index.logs_pipeline_idx_main.id
  description = "ID do índice composto em logs_pipeline."
}

output "logs_app_index_id" {
  value       = google_firestore_index.logs_app_idx_main.id
  description = "ID do índice composto em logs_app."
}
