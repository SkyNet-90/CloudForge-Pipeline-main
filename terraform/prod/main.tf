module "prod_vnet" {
  source              = "../modules/vnet"
  vnet_name           = "prod-vnet"
  address_space       = ["10.3.0.0/16"]
  location            = var.location
  resource_group_name = var.resource_group_name
  subnets             = var.subnets_prod
}

module "prod_aks" {
  source              = "../modules/aks"
  cluster_name        = "prod-aks"
  location            = var.location
  resource_group_name = var.resource_group_name
  node_count          = 5
  enable_auto_scaling = true
  min_count           = 3
  max_count           = 10
}

# Add similar blocks for App Service, SQL Database, and Storage Account with prod-specific configurations
