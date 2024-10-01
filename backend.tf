terraform {
  backend "azurerm" {
    resource_group_name  = "hihi"          
    storage_account_name = "tfmasterhi"                              
    container_name       = "tfstate"                              
    key                  = "terraform.tfstate"               
    use_oidc             = true                                  
    client_id            = "?" 
    subscription_id      = "?"  
    tenant_id            = "?"
    
   
   
   
   
  }
}
