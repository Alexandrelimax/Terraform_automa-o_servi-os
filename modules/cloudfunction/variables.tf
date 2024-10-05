variable "function_name" {
  description = "O nome da Cloud Function."
  type        = string
}

variable "location" {
  description = "A localização/região da função."
  type        = string
  default     = "us-central1"
}

variable "description" {
  description = "A descrição da função."
  type        = string
  default     = "Cloud Function v2"
}

variable "runtime" {
  description = "O runtime da função (ex: python3.10, nodejs16)."
  type        = string
}

variable "entry_point" {
  description = "O ponto de entrada da função."
  type        = string
}

variable "source_bucket" {
  description = "Nome do bucket que contém o código-fonte da função."
  type        = string
}

variable "source_object" {
  description = "Nome do objeto (arquivo) dentro do bucket com o código-fonte da função."
  type        = string
}

variable "memory" {
  description = "A quantidade de memória disponível para a função (ex: 256M, 512M, 1G)."
  type        = string
  default     = "512M"
}

variable "cpu" {
  description = "Quantidade de CPU disponível para a função."
  type        = number
  default     = 0.333
}

variable "timeout" {
  description = "Timeout (em segundos) para a função."
  type        = number
  default     = 60
}

variable "min_instances" {
  description = "Número mínimo de instâncias da função."
  type        = number
  default     = 0
}

variable "max_instances" {
  description = "Número máximo de instâncias para escalar a função."
  type        = number
  default     = 1
}

variable "event_type" {
  description = "Número máximo de instâncias para escalar a função."
  type        = number
  default     = 1
}

variable "resource" {
  description = "Número máximo de instâncias para escalar a função."
  type        = number
  default     = 1
}