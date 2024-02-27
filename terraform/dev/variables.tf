variable "location" {
  description = "Azure location for dev resources."
  default     = "East US"
}

variable "resource_group_name" {
  description = "Resource group for dev resources."
  default     = "dev-resources"
}

variable "subnets_dev" {
  description = "Subnet configurations for the dev environment."
  type = list(object({
    name              = string
    address_prefixes  = list(string)
  }))
  default = [
    {
      name              = "dev-subnet"
      address_prefixes  = ["10.0.1.0/24"]
    }
  ]
}

