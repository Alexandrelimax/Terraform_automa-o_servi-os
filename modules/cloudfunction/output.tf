output "function_name" {
  description = "O nome da Cloud Function v2 criada."
  value       = google_cloudfunctions2_function.function.name
}

output "function_url" {
  description = "A URL da Cloud Function v2 para ser acionada."
  value       = google_cloudfunctions2_function.function.https_trigger[0].url
}

output "function_location" {
  description = "A localização/região da função criada."
  value       = google_cloudfunctions2_function.function.location
}
