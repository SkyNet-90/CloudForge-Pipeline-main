variable "app_service_plan_name" {
  description = "The name of the App Service Plan."
  type        = string
}

variable "app_name" {
  description = "The name of the App Service."
  type        = string
}

variable "location" {
  description = "The Azure region where the App Service should be created."
  type        = string
}

variable "resource_group_name" {
  description = "The name of the resource group in which to create the App Service."
  type        = string
}

variable "sku_tier" {
  description = "Specifies the plan's pricing tier."
  type        = string
}

variable "sku_size" {
  description = "Specifies the plan's instance size."
  type        = string
}
