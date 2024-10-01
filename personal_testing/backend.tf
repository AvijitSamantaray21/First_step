terraform {
  backend "azurerm" {
    container_name = "tfstate"
    key = "terraform_testing.tfstate"
    storage_account_name = "tfmasterhi"
    }
    }



