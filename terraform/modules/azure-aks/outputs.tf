output "cluster_id" {
  description = "The ID of the Kubernetes cluster."
  value       = azurerm_kubernetes_cluster.aks.id
}

output "kube_config" {
  description = "The kubeconfig for connecting to the Kubernetes cluster."
  value       = azurerm_kubernetes_cluster.aks.kube_config_raw
  sensitive   = true
}

output "node_resource_group" {
  description = "The auto-generated resource group which contains the resources for this AKS Cluster."
  value       = azurerm_kubernetes_cluster.aks.node_resource_group
}
