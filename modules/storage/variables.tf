variable "bucket_name" {
  description = "Nome do bucket do Cloud Storage."
  type        = string
}

variable "bucket_location" {
  description = "Localização do bucket (ex: US, EU)."
  type        = string
}

variable "bucket_storage_class" {
  description = "Classe de armazenamento do bucket (ex: STANDARD, NEARLINE)."
  type        = string
}

variable "versioning_enabled" {
  description = "Habilitar versionamento no bucket."
  type        = bool
}

variable "lifecycle_age" {
  description = "Idade em dias para a regra de ciclo de vida (para deletar objetos)."
  type        = number
}

variable "function_source_dir" {
  description = "Diretório contendo o código da função a ser empacotado."
  type        = string
}

variable "function_zip_name" {
  description = "Nome do arquivo .zip gerado com o código da função."
  type        = string
}
