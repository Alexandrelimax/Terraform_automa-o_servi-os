# Saídas do Vertex Workbench
output "vertex_workbench_name" {
  description = "Nome do Vertex Workbench"
  value       = module.vertex_workbench.workbench_name
}

output "vertex_workbench_machine_type" {
  description = "Tipo de máquina usada no Vertex Workbench"
  value       = module.vertex_workbench.machine_type
}

output "vertex_workbench_disk_size" {
  description = "Tamanho do disco do Vertex Workbench em GB"
  value       = module.vertex_workbench.disk_size_gb
}