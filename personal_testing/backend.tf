terraform {
  backend "azurerm" {
  resource_group_name  = "hihi"          
  storage_account_name = "tfmasterhi"                              
  container_name       = "tfstate"                              
  key                  = "terraformtest.tfstate"               
  use_oidc             = true 
  
    }
    }



