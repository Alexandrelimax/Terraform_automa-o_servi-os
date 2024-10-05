resource "google_bigquery_dataset" "dataset" {
  dataset_id  = var.dataset_id
  project     = var.project_id
  location    = var.dataset_location

  friendly_name = var.dataset_friendly_name
  description   = var.dataset_description

  default_table_expiration_ms = var.default_table_expiration_ms

  labels = var.dataset_labels
}

resource "google_bigquery_table" "table" {
  dataset_id = google_bigquery_dataset.dataset.dataset_id
  table_id   = var.table_id
  project    = var.project_id

  schema = file(var.schema_path)

  time_partitioning {
    type = var.time_partitioning_type
    field = var.time_partitioning_field
    expiration_ms = var.partition_expiration_ms
  }

  labels = var.table_labels
}

