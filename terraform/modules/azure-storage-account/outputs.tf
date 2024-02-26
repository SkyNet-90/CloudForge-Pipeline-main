output "storage_account_name" {
  description = "The name of the storage account."
  value       = azurerm_storage_account.storage_account.name
}

output "storage_account_primary_access_key" {
  description = "The primary access key for the storage account."
  value       = azurerm_storage_account.storage_account.primary_access_key
}

output "storage_account_primary_blob_endpoint" {
  description = "The endpoint URL for blob storage in the storage account."
  value       = azurerm_storage_account.storage_account.primary_blob_endpoint
}
