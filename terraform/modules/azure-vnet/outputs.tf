output "vnet_id" {
  description = "The ID of the virtual network."
  value       = azurerm_virtual_network.vnet.id
}

output "vnet_name" {
  description = "The name of the virtual network."
  value       = azurerm_virtual_network.vnet.name
}

output "subnet_ids" {
  description = "A map of subnet names to subnet IDs."
  value       = { for subnet in azurerm_subnet.subnet : subnet.name => subnet.id }
}
