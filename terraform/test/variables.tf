variable "location" {
  description = "Azure location for test resources."
  default     = "East US 2"
}

variable "resource_group_name" {
  description = "Resource group for test resources."
  default     = "test-resources"
}

variable "subnets_test" {
  description = "Subnet configurations for the test environment."
  type = list(object({
    name              = string
    address_prefixes  = list(string)
  }))
  default = [
    {
      name              = "test-subnet"
      address_prefixes  = ["10.2.1.0/24"]
    },
    # You can add more subnets if required for testing different network configurations or services.
  ]
}

