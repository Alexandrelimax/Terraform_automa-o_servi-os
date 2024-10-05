output "dialogflow_agent_id" {
  description = "ID do agente Dialogflow CX criado."
  value       = google_dialogflow_cx_agent.agent.id
}

output "dialogflow_agent_display_name" {
  description = "Nome do agente Dialogflow CX."
  value       = google_dialogflow_cx_agent.agent.display_name
}

output "dialogflow_agent_location" {
  description = "Localização do agente Dialogflow CX."
  value       = google_dialogflow_cx_agent.agent.location
}

output "dialogflow_webhook_id" {
  description = "ID do webhook Dialogflow CX."
  value       = google_dialogflow_cx_webhook.basic_webhook.id
}

output "dialogflow_webhook_uri" {
  description = "URI do webhook associado ao agente."
  value       = google_dialogflow_cx_webhook.basic_webhook.generic_web_service.uri
}
