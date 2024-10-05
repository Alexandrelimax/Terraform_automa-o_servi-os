resource "google_dialogflow_cx_agent" "agent" {
  display_name            = var.agent_display_name
  location                = var.agent_location
  default_language_code   = var.agent_default_language
  supported_language_codes = var.agent_supported_languages
  time_zone               = var.agent_time_zone
  description             = var.agent_description
  avatar_uri              = var.agent_avatar_uri
  enable_stackdriver_logging = var.enable_stackdriver_logging
  enable_spell_correction    = var.enable_spell_correction

  speech_to_text_settings {
    enable_speech_adaptation = var.enable_speech_adaptation
  }
}


resource "google_dialogflow_cx_webhook" "basic_webhook" {
  parent       = google_dialogflow_cx_agent.agent.id
  display_name = var.webhook_display_name
  timeout      = var.webhook_timeout

  generic_web_service {
    uri = var.webhook_uri
  }
}
