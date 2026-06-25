output "web_app_id" {
  description = "ID of the Linux Web App."
  value       = azurerm_linux_web_app.this.id
}

output "web_app_name" {
  description = "Name of the Linux Web App."
  value       = azurerm_linux_web_app.this.name
}

output "web_app_default_hostname" {
  description = "Default hostname of the Linux Web App."
  value       = azurerm_linux_web_app.this.default_hostname
}

output "service_plan_id" {
  description = "ID of the App Service Plan."
  value       = var.service_plan_id != null ? data.azurerm_service_plan.this[0].id : azurerm_service_plan.this[0].id
}
