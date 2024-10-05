provider "google" {
  project = "seu-projeto-id"
  region = "us-central1" # ou a região de sua escolha
}

resource "google_storage_bucket" "function_bucket" {
  name = "nome-do-seu-bucket-funcoes"
  location = "US"
}

resource "google_storage_bucket_object" "function_source" {
  name = "cloud_function_source.zip"
  bucket = google_storage_bucket.function_bucket.name
  source = "${path.module}/cloud_function.zip"
}

data "archive_file" "function_archive" {
  type = "zip"
  source_dir = "${path.module}/cloud_function"
  output_path = "${path.module}/cloud_function.zip"
}

resource "google_cloudfunctions_function" "function" {
  name = "hello_world_function"
  runtime = "python310" # ou a versão que você deseja
  entry_point = "hello_world"
  region = "us-central1"

  source_archive_bucket = google_storage_bucket.function_bucket.name
  source_archive_object = google_storage_bucket_object.function_source.name

  trigger_http = true

  available_memory_mb = 128
}
