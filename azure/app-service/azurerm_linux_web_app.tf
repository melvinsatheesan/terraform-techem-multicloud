# Create the web app, pass in the App Service Plan ID
resource "azurerm_linux_web_app" "this" {
  name                = "${var.webapp_name}-${random_integer.this.result}"
  location            = local.location
  resource_group_name = var.service_plan_resource_group
  service_plan_id     = var.service_plan_id != null ? data.azurerm_service_plan.this[0].id : azurerm_service_plan.this[0].id
  https_only          = true
  site_config {
    always_on           = false
    minimum_tls_version = var.minimum_tls_version
    application_stack {
      node_version = var.node_version
    }
  }
}