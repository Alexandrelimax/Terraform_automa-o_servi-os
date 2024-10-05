#####################################
#### VARIÁVEIS COMUNS DO PROJETO ####
#####################################
variable "project_id" {
  description = "ID do projeto no Google Cloud"
  type        = string
}

variable "region" {
  description = "Região do Google Cloud onde os recursos serão criados"
  type        = string
}

variable "zone" {
  description = "Zona do Google Cloud onde os recursos serão criados"
  type        = string
}



#####################################
#### VARIÁVEIS PARA O MODULO VPC ####
#####################################
variable "network_name" {
  description = "Nome da rede VPC"
  type        = string
}

variable "subnets" {
  description = "Configurações das sub-redes para a VPC"
  type        = list(object({
    name                     = string
    cidr                     = string
    region                   = string
    private_ip_google_access = bool
  }))
}






########################################
#### VARIÁVEIS PARA O AGENT BUILDER ####
########################################
variable "builder_location" {
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






########################################
#### VARIÁVEIS PARA O CLOUD STORAGE ####
########################################
variable "bucket_name" {
  description = "Nome do bucket no Cloud Storage"
  type        = string
}

variable "bucket_location" {
  description = "Localização do bucket"
  type        = string
}

variable "bucket_storage_class" {
  description = "Classe de armazenamento do bucket"
  type        = string
}

variable "versioning_enabled" {
  description = "Se o versionamento está habilitado no bucket"
  type        = bool
}

variable "lifecycle_age" {
  description = "Idade dos objetos antes de serem deletados pelo ciclo de vida"
  type        = number
}





########################################
##### VARIÁVEIS PARA O DIALOGFLOW ######
########################################
variable "agent_display_name" {
  description = "Nome do agente Dialogflow"
  type        = string
}

variable "agent_location" {
  description = "Localização do agente Dialogflow"
  type        = string
}

variable "agent_default_language" {
  description = "Língua padrão do agente"
  type        = string
}

variable "agent_supported_languages" {
  description = "Lista de idiomas suportados pelo agente"
  type        = list(string)
}

variable "agent_time_zone" {
  description = "Fuso horário do agente"
  type        = string
}

variable "agent_description" {
  description = "Descrição do agente"
  type        = string
}

variable "agent_avatar_uri" {
  description = "URI para o avatar do agente"
  type        = string
}

variable "enable_stackdriver_logging" {
  description = "Ativar logging do Stackdriver"
  type        = bool
}

variable "enable_spell_correction" {
  description = "Ativar correção ortográfica"
  type        = bool
}

variable "enable_speech_adaptation" {
  description = "Ativar adaptação de fala"
  type        = bool
}

variable "webhook_display_name" {
  description = "Nome do webhook"
  type        = string
}

variable "webhook_uri" {
  description = "URI do webhook"
  type        = string
}

variable "webhook_timeout" {
  description = "Tempo de timeout do webhook em segundos"
  type        = number
}





########################################
###### VARIÁVEIS PARA O BIGQUERY #######
########################################
variable "project_id" {
  description = "ID do projeto no Google Cloud"
  type        = string
}

variable "dataset_id" {
  description = "ID do dataset BigQuery"
  type        = string
}

variable "dataset_friendly_name" {
  description = "Nome amigável do dataset"
  type        = string
}

variable "dataset_description" {
  description = "Descrição do dataset"
  type        = string
}

variable "dataset_location" {
  description = "Localização do dataset BigQuery"
  type        = string
}

variable "default_table_expiration_ms" {
  description = "Tempo de expiração das tabelas em milissegundos"
  type        = number
}

variable "dataset_labels" {
  description = "Labels do dataset"
  type        = map(string)
}

variable "table_id" {
  description = "ID da tabela BigQuery"
  type        = string
}

variable "dialogflow_schema_path" {
  description = "Caminho para o schema do Dialogflow"
  type        = string
}

variable "time_partitioning_type" {
  description = "Tipo de particionamento de tempo"
  type        = string
}

variable "time_partitioning_field" {
  description = "Campo de particionamento de tempo"
  type        = string
}

variable "partition_expiration_ms" {
  description = "Tempo de expiração da partição em milissegundos"
  type        = number
}

variable "clustering_fields" {
  description = "Campos de clusterização"
  type        = list(string)
}

variable "table_labels" {
  description = "Labels da tabela"
  type        = map(string)
}





################################################
###### VARIÁVEIS PARA O VERTEX WORKBENCH #######
################################################
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

variable "network_name" {
  type        = string
  description = "O nome da rede VPC."
}

variable "subnetwork_name" {
  type        = string
  description = "O nome da sub-rede."
}





##############################################
###### VARIÁVEIS PARA A CLOUD FUNCTION #######
##############################################
variable "function_name" {
  description = "Nome da função Cloud Function"
  type        = string
}

variable "location" {
  description = "Localização da Cloud Function"
  type        = string
}

variable "description" {
  description = "Descrição da função Cloud Function"
  type        = string
}

variable "runtime" {
  description = "Runtime da Cloud Function"
  type        = string
}

variable "entry_point" {
  description = "Ponto de entrada da função (nome da função handler)"
  type        = string
}

variable "source_bucket" {
  description = "Bucket do Cloud Storage onde o código fonte está armazenado"
  type        = string
}

variable "source_object" {
  description = "Objeto dentro do bucket (arquivo zip do código fonte)"
  type        = string
}

variable "memory" {
  description = "Quantidade de memória alocada para a função"
  type        = string
}

variable "timeout" {
  description = "Tempo limite para a execução da função, em segundos"
  type        = number
}

variable "min_instances" {
  description = "Número mínimo de instâncias"
  type        = number
}

variable "max_instances" {
  description = "Número máximo de instâncias"
  type        = number
}


