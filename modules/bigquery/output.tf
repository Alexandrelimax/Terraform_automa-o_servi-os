output "dataset_id" {
  description = "O ID do dataset do BigQuery criado."
  value       = google_bigquery_dataset.dataset.dataset_id
}

output "table_id" {
  description = "O ID da tabela do BigQuery criada."
  value       = google_bigquery_table.table.table_id
}

output "table_self_link" {
  description = "O link da tabela do BigQuery."
  value       = google_bigquery_table.table.self_link
}
