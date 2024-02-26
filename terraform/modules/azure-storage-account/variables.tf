variable "storage_account_name" {
  description = "Specifies the name of the storage account. Must be unique across all of Azure."
  type        = string
}

variable "resource_group_name" {
  description = "The name of the resource group in which to create the storage account."
  type        = string
}

variable "location" {
  description = "Specifies the supported Azure location where the resource exists."
  type        = string
}

variable "account_tier" {
  description = "Defines the Tier to use for this storage account. (Standard/ Premium)"
  type        = string
}

variable "account_replication_type" {
  description = "Defines the type of replication to use for this storage account. (LRS/GRS/RAGRS/ZRS/GRZ)"
  type        = string
}

variable "account_kind" {
  description = "The kind of the storage account. (StorageV2/ BlobStorage/ BlockBlobStorage/ FileStorage/ Storage)"
  type        = string
}

variable "tags" {
  description = "A mapping of tags to assign to the resource."
  type        = map(string)
  default     = {}
}
