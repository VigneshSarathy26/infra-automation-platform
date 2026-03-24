resource "google_sql_database_instance" "main" {
  name             = var.instance_name
  database_version = "POSTGRES_14"
  region           = var.region
  settings {
    tier = "db-f1-micro"
  }
}
