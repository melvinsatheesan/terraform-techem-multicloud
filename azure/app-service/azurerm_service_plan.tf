# Create the Linux App Service Plan
resource "azurerm_service_plan" "this" {
  count = var.service_plan_id != null ? 0 : 1
  name                = var.service_plan_name
  location            = local.location
  resource_group_name = var.service_plan_resource_group
  os_type             = var.os_type
  sku_name            = var.sku_name
}