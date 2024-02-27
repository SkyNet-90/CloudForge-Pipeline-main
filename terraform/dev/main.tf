module "dev_vnet" {
  source              = "../modules/vnet"
  vnet_name           = "dev-vnet"
  address_space       = ["10.0.0.0/16"]
  location            = var.location
  resource_group_name = var.resource_group_name
  subnets             = var.subnets_dev
}

module "dev_aks" {
  source              = "../modules/aks"
  cluster_name        = "dev-aks"
  location            = var.location
  resource_group_name = var.resource_group_name
  node_count          = 1
}


