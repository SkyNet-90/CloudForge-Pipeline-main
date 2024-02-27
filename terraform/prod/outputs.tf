output "prod_vnet_id" {
  value = module.prod_vnet.vnet_id
}

output "prod_aks_kube_config" {
  value = module.prod_aks.kube_config
}

# Similar outputs for other production resources
