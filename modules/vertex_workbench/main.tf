resource "google_vertex_ai_workbench_instance" "workbench_instance" {
  name         = var.workbench_name
  machine_type = var.machine_type
  location     = var.workbench_location
  project      = var.project_id

  vm_image {
    image_family = "common-cpu"
    project      = "deeplearning-platform-release"
  }

  disk {
    size_gb = var.disk_size_gb
  }

  install_gpu_driver = var.install_gpu_driver

  metadata = {
    enable-oslogin = "TRUE"
  }

  service_account {
    email = google_service_account.vertex_sa.email
  }

  network {
    network    = var.network_name
    subnetwork = var.subnetwork_name
  }
}

resource "google_service_account" "vertex_sa" {
  account_id   = "${var.workbench_name}-sa"
  display_name = "Vertex AI Workbench Service Account"
}



# resource "google_workbench_instance" "instance" {
#   name     = "workbench-instance"
#   location = "us-central1-a"

#   gce_setup {
#     machine_type = "e2-standard-2" // Mude conforme necessário

#     disable_public_ip = false

#     service_accounts {
#       email = "my@service-account.com"
#     }

#     boot_disk {
#       disk_size_gb  = 100
#       disk_type     = "PD_STANDARD"
#     }

#     network_interfaces {
#       network = "default"  // Referência à rede padrão
#       subnet  = "default"  // Referência à sub-rede padrão
#     }

#     metadata = {
#       terraform = "true"
#     }

#     enable_ip_forwarding = true

#     tags = ["abc", "def"]
#   }

#   instance_owners  = ["example@example.com"]

#   labels = {
#     k = "val"
#   }

#   desired_state = "ACTIVE"
# }
