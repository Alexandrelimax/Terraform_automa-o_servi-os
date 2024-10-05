variable "workbench_name" {
  type        = string
  description = "Nome do Vertex Workbench"
}

variable "machine_type" {
  type        = string
  description = "Tipo de máquina para o Workbench"
  default     = "n1-standard-4"
}

variable "workbench_location" {
  type        = string
  description = "Região do Vertex Workbench"
}

variable "disk_size_gb" {
  type        = number
  description = "Tamanho do disco para o Workbench em GB"
  default     = 100
}

variable "install_gpu_driver" {
  type        = bool
  description = "Instalar drivers de GPU no Workbench?"
  default     = false
}

variable "project_id" {
  type        = string
  description = "O ID do projeto no GCP."
}

variable "network_name" {
  type        = string
  description = "O nome da rede VPC."
}

variable "subnetwork_name" {
  type        = string
  description = "O nome da sub-rede."
}
