variable "agent_display_name" {
  description = "O nome exibido do agente."
  type        = string
}

variable "agent_location" {
  description = "A localização do agente."
  type        = string
}

variable "agent_default_language" {
  description = "Código do idioma padrão do agente."
  type        = string
}

variable "agent_supported_languages" {
  description = "Lista de códigos de idiomas suportados pelo agente."
  type        = list(string)
}

variable "agent_time_zone" {
  description = "Fuso horário do agente."
  type        = string
}

variable "agent_description" {
  description = "Descrição do agente."
  type        = string
}

variable "agent_avatar_uri" {
  description = "URI do avatar do agente."
  type        = string
}

variable "enable_stackdriver_logging" {
  description = "Habilitar o Stackdriver Logging."
  type        = bool
}

variable "enable_spell_correction" {
  description = "Habilitar correção ortográfica."
  type        = bool
}

variable "enable_speech_adaptation" {
  description = "Habilitar adaptação de fala."
  type        = bool
}

variable "webhook_display_name" {
  description = "Nome exibido do webhook."
  type        = string
}

variable "webhook_uri" {
  description = "URI do webhook."
  type        = string
}

variable "webhook_timeout" {
  description = "Timeout do webhook em segundos."
  type        = number
}
