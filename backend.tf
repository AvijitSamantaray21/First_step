data "azurerm_client_config" "current" {
}


terraform {
  backend "azurerm" {
    resource_group_name  = "hihi"          
    storage_account_name = "tfmasterhi"                              
    container_name       = "tfstate"                              
    key                  = "terraform.tfstate"               
    use_oidc             = true                                  
    client_id            = data.azurerm_client_config.current.client_id
    subscription_id      = data.azurerm_client_config.current.subscription_id 
    tenant_id            = data.azurerm_client_config.current.tenant_id 
    
   
   
   
   
  }
}
