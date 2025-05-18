
resource "google_sql_database_instance" "postgres_instance" {
  name             = var.instance_name
  database_version = "POSTGRES_14"
  region           = var.region

  settings {
    tier = "db-f1-micro"

    ip_configuration {
      ipv4_enabled    = false
      private_network = var.private_network
    }

    backup_configuration {
      enabled = true
    }
  }

  deletion_protection = false
}

resource "google_sql_database" "default_db" {
  name     = var.database_name
  instance = google_sql_database_instance.postgres_instance.name
}

resource "google_sql_user" "default_user" {
  name     = var.db_user
  password = var.db_password
  instance = google_sql_database_instance.postgres_instance.name
}
