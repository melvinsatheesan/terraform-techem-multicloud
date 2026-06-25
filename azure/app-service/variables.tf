variable "service_plan_name" {
  description = "Service plan Name"
  type        = string
  default     = null
}
variable "service_plan_id" {
  description = "Service plan ID"
  type        = string
  default     = null
}
variable "service_plan_resource_group" {
  description = "Service plan Group"
  type        = string
}
variable "app_service_location" {
  description = "Service plan Group"
  type        = string
  default     = "East US"
}

variable "os_type" {
  description = "Service plan OS Type"
  type        = string
}
variable "sku_name" {
  description = "Service plan SKU Name"
  type        = string
}
variable "webapp_name" {
  description = "Service plan Webapp Name"
  type        = string
}
variable "minimum_tls_version" {
  description = "Service plan Webapp Name"
  type        = string
  default     = "1.2"
}
variable "node_version" {
  description = "Service plan Node Version"
  type        = string
  default     = "20-lts"
}
