terraform {
  backend "azurerm" {
  resource_group_name  = "hihi"          
  storage_account_name = "tfmasterhi"                              
  container_name       = "tfstate"                              
  key                  = "terraform.tfstate"               
  use_msi              = true
  client_id            = "5f5d2f40-47f7-4b8c-9ed6-aca6c4eb6c67" 
  subscription_id      = "1f9c0f59-d7b6-4f6c-ba84-47ee3cfd78a9"  
  tenant_id            = "a9dbd3ec-9f98-4631-97e4-e496755c33c7" 
    }
    }



