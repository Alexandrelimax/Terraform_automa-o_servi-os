output "bucket_name" {
  description = "O nome do bucket criado."
  value       = google_storage_bucket.bucket.name
}

output "bucket_url" {
  description = "A URL do bucket criado."
  value       = google_storage_bucket.bucket.url
}

output "function_source_path" {
  description = "Caminho do código da função dentro do bucket no GCS."
  value       = google_storage_bucket_object.function_source.self_link
}
