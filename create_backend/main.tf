

resource "azurerm_storage_account" "example" {
  name                     = "storage420123"
  resource_group_name      = "hihi"
  location                 = "centralindia"
  account_tier             = "Standard"
  account_replication_type = "LRS"
  account_kind             = "StorageV2"
  is_hns_enabled           = "true"
  

}

resource "azurerm_storage_container" "example" {
  name                  = "tfstate420"
  storage_account_name  = azurerm_storage_account.example.name
  container_access_type = "private"
  depends_on = [azurerm_storage_account.example ]
}
