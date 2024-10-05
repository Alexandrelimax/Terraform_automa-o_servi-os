output "data_store_id" {
  description = "O ID do DataStore criado."
  value       = google_discovery_engine_data_store.test-ds.data_store_id
}

output "search_engine_id" {
  description = "O ID do Search Engine criado."
  value       = google_discovery_engine_search_engine.test-engine.engine_id
}

output "search_engine_display_name" {
  description = "O nome amigável do Search Engine criado."
  value       = google_discovery_engine_search_engine.test-engine.display_name
}
