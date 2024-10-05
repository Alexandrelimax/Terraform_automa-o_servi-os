# variaveis do Bigquery
project_id                    = "your_project_id"
dataset_id                    = "your_dataset_name"
table_id                      = "dialogflow_bigquery_export_data"
dialogflow_schema_path        = "./dialogflow_bigquery_export_data_schema.json"

# variaveis da cloud function
function_name                 = "my-python-function"
location                      = "us-central1"
description                   = "Minha função Cloud Function"
runtime                       = "python310"
entry_point                   = "entrypoint"
source_bucket                 = "my-cloud-function-bucket"
source_object                 = "cloud_function_code.zip"
memory                        = "512M"
timeout                       = 60
min_instances                 = 0
max_instances                 = 1


# variaveis do cloud storage
bucket_name                   = "my-cloud-storage-bucket"
bucket_location               = "US"
bucket_storage_class          = "STANDARD"
versioning_enabled            = true
lifecycle_age                 = 30

# variaveis da VPC
network_name                  = "my-vpc-network"  # Nome da rede VPC
subnets = [
  {
    name                      = "my-subnet"
    cidr                      = "10.0.0.0/24"
    region                    = "us-central1"
    private_ip_google_access  = true
  }
]

# Variáveis do Dialogflow
agent_display_name           = "meu-agente"
agent_location               = "global"
agent_default_language       = "en"
agent_supported_languages    = ["it", "de", "es"]
agent_time_zone              = "America/New_York"
agent_description            = "Descrição do agente"
agent_avatar_uri             = "https://link-para-o-avatar"
enable_stackdriver_logging   = true
enable_spell_correction      = true
enable_speech_adaptation     = true
webhook_display_name         = "Meu Webhook"
webhook_uri                  = "https://meu-webhook-uri"
webhook_timeout              = 30  # Timeout em segundos



# variaveis do AgentBuilder

builder_location             = "global"
data_store_id                = "test-data-store-id"
data_store_display_name      = "test-unstructured-datastore"
industry_vertical            = "GENERIC"
content_config               = "CONTENT_REQUIRED"
solution_types               = ["SOLUTION_TYPE_SEARCH"]
engine_id                    = "test_engine_id"
collection_id                = "default_collection"
search_engine_display_name   = "test-engine"
company_name                 = "Test Company"
search_add_ons               = {
    "SEARCH_ADD_ON_LLM" = "enabled"
  }





# variaveis do Workbench

workbench_name               = "my-vertex-workbench"
machine_type                 = "n1-standard-4"
workbench_location           = "us-central1"
disk_size_gb                 = 100
install_gpu_driver           = false

