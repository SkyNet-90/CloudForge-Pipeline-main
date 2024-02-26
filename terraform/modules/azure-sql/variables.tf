variable "sql_server_name" {
  description = "The name of the SQL server."
  type        = string
}

variable "resource_group_name" {
  description = "The name of the resource group."
  type        = string
}

variable "location" {
  description = "The Azure location where the resources will be created."
  type        = string
}

variable "sql_server_version" {
  description = "The version of the SQL server."
  type        = string
  default     = "12.0" # Represents SQL Server 2016
}

variable "administrator_login" {
  description = "The administrator login name for the SQL server."
  type        = string
}

variable "administrator_login_password" {
  description = "The administrator login password for the SQL server."
  type        = string
}

variable "sql_database_name" {
  description = "The name of the SQL database."
  type        = string
}

variable "edition" {
  description = "The edition of the SQL database."
  type        = string
}

variable "collation" {
  description = "The collation of the SQL database."
  type        = string
  default     = "SQL_Latin1_General_CP1_CI_AS"
}

variable "max_size_bytes" {
  description = "The max size of the SQL database in bytes."
  type        = string
}

variable "requested_service_objective_name" {
  description = "The performance level for the SQL database."
  type        = string
}

variable "tags" {
  description = "A map of tags to add to all resources."
  type        = map(string)
  default     = {}
}
