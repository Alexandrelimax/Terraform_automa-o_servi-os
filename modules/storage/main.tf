resource "google_storage_bucket" "bucket" {
  name          = var.bucket_name
  location      = var.bucket_location
  storage_class = var.bucket_storage_class

  versioning {
    enabled = var.versioning_enabled
  }

  lifecycle_rule {
    action {
      type = "Delete"
    }
    condition {
      age = var.lifecycle_age
    }
  }
}


# Empacotar o código Python da função em um arquivo .zip
data "archive_file" "function_archive" {
  type        = "zip"
  source_dir  = var.function_source_dir  # Diretório da função
  output_path = "${path.module}/${var.function_zip_name}"  # Nome do arquivo .zip gerado
}

# Enviar o arquivo .zip para o bucket do GCS
resource "google_storage_bucket_object" "function_source" {
  name   = var.function_zip_name
  bucket = google_storage_bucket.bucket.name
  source = data.archive_file.function_archive.output_path
}

