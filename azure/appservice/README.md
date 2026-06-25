# Azure App Service (Linux / Node.js)

Terraform module that provisions an Azure Linux Web App with an optional new App Service Plan, or attaches to an existing plan.

## Usage

### Create a new App Service Plan and Web App

```hcl
module "app_service" {
  source  = "melvinsatheesan/terraform-techem-multicloud/azurerm"
  version = "1.0.0"

  webapp_name                 = "my-node-app"
  service_plan_name           = "asp-my-node-app"
  service_plan_resource_group = "rg-my-app"
  app_service_location        = "West Europe"
  os_type                     = "Linux"
  sku_name                    = "B1"
  node_version                = "20-lts"
}
```

### Attach to an existing App Service Plan

```hcl
module "app_service" {
  source  = "melvinsatheesan/terraform-techem-multicloud/azurerm"
  version = "1.0.0"

  webapp_name                 = "my-node-app"
  service_plan_name           = "existing-asp"
  service_plan_id             = "/subscriptions/.../resourceGroups/rg-my-app/providers/Microsoft.Web/serverfarms/existing-asp"
  service_plan_resource_group = "rg-my-app"
  os_type                     = "Linux"
  sku_name                    = "B1"
}
```

## Requirements

| Name | Version |
|------|---------|
| terraform | >= 1.0 |
| azurerm | >= 3.0 |
| random | >= 3.0 |

## Providers

| Name | Version |
|------|---------|
| azurerm | >= 3.0 |
| random | >= 3.0 |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| webapp_name | Base name for the Linux Web App (suffix added automatically) | `string` | n/a | yes |
| service_plan_resource_group | Resource group for the plan and web app | `string` | n/a | yes |
| os_type | OS type for the service plan (e.g. `Linux`) | `string` | n/a | yes |
| sku_name | App Service Plan SKU (e.g. `B1`, `P1v3`) | `string` | n/a | yes |
| service_plan_name | App Service Plan name | `string` | `null` | no |
| service_plan_id | Existing plan ID; when set, plan creation is skipped | `string` | `null` | no |
| app_service_location | Azure region | `string` | `"East US"` | no |
| minimum_tls_version | Minimum TLS version for the web app | `string` | `"1.2"` | no |
| node_version | Node.js runtime version | `string` | `"20-lts"` | no |

## Outputs

| Name | Description |
|------|-------------|
| web_app_id | ID of the Linux Web App |
| web_app_name | Name of the Linux Web App |
| web_app_default_hostname | Default hostname of the Linux Web App |
| service_plan_id | ID of the App Service Plan |
