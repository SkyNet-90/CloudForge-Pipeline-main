terraform {
  backend "azurerm" {
    resource_group_name  = "CloudForge-Pipline-rg"
    storage_account_name = "cfpstorage25"
    container_name       = "cfpblob"
    key                  = "An9aTTmYiI3+6pLuqhujzXbWCoa7VmyFoPu6KBuDtu4DAXwNucmPLhbq6rHlVzAXosTuXZkN1c8M+AStAspqDg=="
  }
}
