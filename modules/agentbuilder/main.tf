# Create Test DataStore
resource "google_discovery_engine_data_store" "test-ds" {
  location        = var.location
  data_store_id   = var.data_store_id
  display_name    = var.data_store_display_name
  industry_vertical = var.industry_vertical
  content_config  = var.content_config
  solution_types  = var.solution_types
  create_advanced_site_search = false
  project         = var.project_id
}

# Create Test Search Engine
resource "google_discovery_engine_search_engine" "test-engine" {
  engine_id      = var.engine_id
  collection_id  = var.collection_id
  location       = google_discovery_engine_data_store.test-ds.location
  display_name   = var.search_engine_display_name
  industry_vertical = var.industry_vertical
  data_store_ids = [google_discovery_engine_data_store.test-ds.data_store_id]

  common_config {
    company_name = var.company_name
  }

  search_engine_config {
    search_add_ons = var.search_add_ons
  }

  project = var.project_id
}


