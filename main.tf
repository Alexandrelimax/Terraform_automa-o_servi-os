
module "vpc" {
  source                        = "./modules/vpc"
  network_name                  = var.network_name
  subnets                       = var.subnets
}

module "cloud_storage" {
  source                        = "./modules/cloud_storage"
  bucket_name                   = var.bucket_name
  bucket_location               = var.bucket_location
  bucket_storage_class          = var.bucket_storage_class
  versioning_enabled            = var.versioning_enabled
  lifecycle_age                 = var.lifecycle_age
}

module "dialogflow" {
  source                        = "./modules/dialogflow"
  agent_display_name            = var.agent_display_name
  agent_location                = var.agent_location
  agent_default_language        = var.agent_default_language
  agent_supported_languages     = var.agent_supported_languages
  agent_time_zone               = var.agent_time_zone
  agent_description             = var.agent_description
  agent_avatar_uri              = var.agent_avatar_uri
  enable_stackdriver_logging    = var.enable_stackdriver_logging
  enable_spell_correction       = var.enable_spell_correction
  enable_speech_adaptation      = var.enable_speech_adaptation
  webhook_display_name          = var.webhook_display_name
  webhook_uri                   = var.webhook_uri
  webhook_timeout               = var.webhook_timeout
}


module "bigquery" {
  source                        = "./modules/bigquery"
  project_id                    = var.project_id
  dataset_id                    = var.dataset_id
  dataset_friendly_name         = var.dataset_friendly_name
  dataset_description           = var.dataset_description
  dataset_location              = var.dataset_location
  default_table_expiration_ms   = var.default_table_expiration_ms
  dataset_labels                = var.dataset_labels
  table_id                      = var.table_id
  schema_path                   = var.dialogflow_schema_path
  time_partitioning_type        = var.time_partitioning_type
  time_partitioning_field       = var.time_partitioning_field
  partition_expiration_ms       = var.partition_expiration_ms
  clustering_fields             = var.clustering_fields
  table_labels                  = var.table_labels
}


module "vertex_workbench" {
  source                        = "./modules/vertex_workbench"
  project_id                    = var.project_id
  workbench_name                = var.workbench_name
  machine_type                  = var.machine_type
  workbench_location            = var.workbench_location
  network_name                  = module.vpc.vpc_network_name
  subnetwork_name               = module.vpc.subnetwork_names[0]
  disk_size_gb                  = var.disk_size_gb
  install_gpu_driver            = var.install_gpu_driver
}

module "agent_builder" {
  source                        = "./modules/agent_builder"
  location                      = var.builder_location
  data_store_id                 = var.data_store_id
  data_store_display_name       = var.data_store_display_name
  industry_vertical             = var.industry_vertical
  content_config                = var.content_config
  solution_types                = var.solution_types
  engine_id                     = var.engine_id
  collection_id                 = var.collection_id
  search_engine_display_name    = var.search_engine_display_name
  company_name                  = var.company_name
  search_add_ons                = var.search_add_ons
  project_id                    = var.project_id
}


module "cloud_function" {
  source                        = "./modules/cloud_function"
  function_name                 = var.function_name
  location                      = var.function_location
  description                   = var.function_description
  runtime                       = var.function_runtime
  entry_point                   = var.function_entry_point
  source_bucket                 = var.function_source_bucket
  source_object                 = var.function_source_object
  memory                        = var.function_memory
  timeout                       = var.function_timeout
  min_instances                 = var.function_min_instances
  max_instances                 = var.function_max_instances
}
