# Variáveis do Agent Builder

variable "project_id" {
  description = "ID do projeto no Google Cloud"
  type        = string
}

variable "location" {
  description = "Localização do Discovery Engine Data Store"
  type        = string
}

variable "data_store_id" {
  description = "ID do Data Store para o Discovery Engine"
  type        = string
}

variable "data_store_display_name" {
  description = "Nome de exibição do Data Store"
  type        = string
}

variable "industry_vertical" {
  description = "Vertical de indústria para o Data Store"
  type        = string
}

variable "content_config" {
  description = "Configuração de conteúdo para o Data Store"
  type        = string
}

variable "solution_types" {
  description = "Tipos de solução para o Discovery Engine"
  type        = list(string)
}

variable "engine_id" {
  description = "ID do Search Engine"
  type        = string
}

variable "collection_id" {
  description = "ID da coleção associada ao Search Engine"
  type        = string
}

variable "search_engine_display_name" {
  description = "Nome de exibição do Search Engine"
  type        = string
}

variable "company_name" {
  description = "Nome da empresa utilizado na configuração do Search Engine"
  type        = string
}

variable "search_add_ons" {
  description = "Configuração de add-ons de pesquisa"
  type        = list(string)
}

