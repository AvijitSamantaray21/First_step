resource "azurerm_resource_group" "example" {
  name     = "hihi"
  location = "centralindia"
}

resource "azurerm_storage_account" "example" {
  name                     = "tfmasterhi"
  resource_group_name      = azurerm_resource_group.example.name
  location                 = azurerm_resource_group.example.location
    account_tier             = "Standard"
  account_replication_type = "LRS"
  account_kind             = "StorageV2"
  is_hns_enabled           = "true"
  depends_on = [ azurerm_resource_group.example ]

}

resource "azurerm_storage_container" "example" {
  name                  = "tfstate"
  storage_account_name  = azurerm_storage_account.example.name
  container_access_type = "private"
  depends_on = [azurerm_storage_account.example ]
}
