resource "google_cloudfunctions2_function" "function" {
  name        = var.function_name
  location    = var.location
  description = var.description

  build_config {
    runtime     = var.runtime
    entry_point = var.entry_point

    source {
      storage_source {
        bucket = var.source_bucket
        object = var.source_object
      }
    }
  }

  service_config {
    available_memory   = var.memory
    timeout_seconds    = var.timeout
    min_instance_count = var.min_instances
    max_instance_count = var.max_instances
  }

}

# IAM entry for a single user to invoke the function
resource "google_cloudfunctions_function_iam_member" "invoker" {
  project        = google_cloudfunctions_function.function.project
  region         = google_cloudfunctions_function.function.region
  cloud_function = google_cloudfunctions_function.function.name

  role   = "roles/cloudfunctions.invoker"
  member = "user:myFunctionInvoker@example.com"
}