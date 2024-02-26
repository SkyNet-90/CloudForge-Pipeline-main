resource "azurerm_sql_server" "sql_server" {
  name                         = var.sql_server_name
  resource_group_name          = var.resource_group_name
  location                     = var.location
  version                      = var.sql_server_version
  administrator_login          = var.administrator_login
  administrator_login_password = var.administrator_login_password

  tags = var.tags
}

resource "azurerm_sql_database" "sql_database" {
  name                = var.sql_database_name
  resource_group_name = azurerm_sql_server.sql_server.resource_group_name
  location            = azurerm_sql_server.sql_server.location
  server_name         = azurerm_sql_server.sql_server.name
  edition             = var.edition
  collation           = var.collation
  max_size_bytes      = var.max_size_bytes
  requested_service_objective_name = var.requested_service_objective_name

  tags = var.tags
}
