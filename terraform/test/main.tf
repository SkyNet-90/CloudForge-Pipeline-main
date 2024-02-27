module "test_vnet" {
  source              = "../modules/vnet"
  vnet_name           = "test-vnet"
  address_space       = ["10.2.0.0/16"]
  location            = var.location
  resource_group_name = var.resource_group_name
  subnets             = var.subnets_test
}

module "test_aks" {
  source              = "../modules/aks"
  cluster_name        = "test-aks"
  location            = var.location
  resource_group_name = var.resource_group_name
  node_count          = 2
}

