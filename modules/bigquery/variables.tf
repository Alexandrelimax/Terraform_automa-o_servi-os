variable "project_id" {
  description = "O ID do projeto onde o BigQuery está localizado."
  type        = string
}

variable "dataset_id" {
  description = "O ID do dataset do BigQuery."
  type        = string
}

variable "dataset_friendly_name" {
  description = "Nome amigável para o dataset."
  type        = string
}

variable "dataset_description" {
  description = "Descrição do dataset."
  type        = string
}

variable "dataset_location" {
  description = "A localização (região) do dataset do BigQuery."
  type        = string
  default     = "US"
}

variable "default_table_expiration_ms" {
  description = "Expiração padrão (em milissegundos) para tabelas no dataset."
  type        = number
  default     = null
}

variable "dataset_labels" {
  description = "Labels para o dataset."
  type        = map(string)
  default     = {}
}

variable "table_id" {
  description = "O ID da tabela no BigQuery."
  type        = string
}

variable "schema_path" {
  description = "Caminho para o arquivo de schema da tabela Dialogflow no BigQuery (formato JSON)."
  type        = string
  default     = "./dialogflow_bigquery_data_schema.json"
}


variable "time_partitioning_type" {
  description = "O tipo de particionamento de tempo para a tabela (ex: DAY)."
  type        = string
  default     = "DAY"
}

variable "time_partitioning_field" {
  description = "O campo usado para o particionamento de tempo."
  type        = string
  default     = null
}

variable "partition_expiration_ms" {
  description = "O tempo de expiração (em milissegundos) para as partições de tempo."
  type        = number
  default     = null
}

variable "clustering_fields" {
  description = "Campos para clustering na tabela do BigQuery."
  type        = list(string)
  default     = []
}

variable "table_labels" {
  description = "Labels para a tabela do BigQuery."
  type        = map(string)
  default     = {}
}
