variable "location" {
  description = "Azure location for production resources."
  default     = "East US"
}

variable "resource_group_name" {
  description = "Resource group for production resources."
  default     = "prod-resources"
}

variable "subnets_prod" {
  description = "Subnet configurations for the production environment."
  type = list(object({
    name              = string
    address_prefixes  = list(string)
  }))
  default = [
    {
      name              = "prod-subnet-apps"
      address_prefixes  = ["10.3.1.0/24"]
    },
    {
      name              = "prod-subnet-dbs"
      address_prefixes  = ["10.3.2.0/24"]
    },
    # Additional subnets for separating different types of traffic or services.
  ]
}

# Additional variables for production-specific configurations, such as SKU sizes, replication settings, etc.
