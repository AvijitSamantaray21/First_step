terraform {
  backend "azurerm" {
   resource_group_name  = "hihi"
    storage_account_name = "tfmasterhi"
    container_name       = "tfstate"
    key                  = "terraform.tfstate"
    client_id            = "" 
    subscription_id      = ""  
    tenant_id            = "" 
    client_secret        =""
   
   
  }
}
