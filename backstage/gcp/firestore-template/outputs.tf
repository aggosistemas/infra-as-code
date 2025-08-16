output "gcp_project_id" {
  description = "Projeto GCP onde o Firestore foi provisionado"
  value       = var.gcp_project_id
}

output "firestore_database_id" {
  description = "Nome do banco Firestore"
  value       = google_firestore_database.default.name
}

output "firestore_location" {
  description = "Localização do Firestore"
  value       = google_firestore_database.default.location_id
}

output "firestore_collection" {
  description = "Coleção padrão criada para o projeto"
  value       = var.firestore_collection
}

output "firestore_ttl_field" {
  description = "Campo de TTL que deve conter um timestamp"
  value       = var.firestore_ttl_field
}

output "firestore_ttl_days" {
  description = "Número de dias para expiração de documentos"
  value       = var.firestore_ttl_days
}
