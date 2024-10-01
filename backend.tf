terraform {
  backend "azurerm" {
    resource_group_name  = "hihi"          
    storage_account_name = "tfmasterhi"                              
    container_name       = "tfstate"                              
    key                  = "terraform.tfstate"               
    use_msi              = true                                    
    client_id            = "client_id_value" 
    subscription_id      = "subsription_id_value"  
    tenant_id            = "tenant_id_value"
    use_azuread_auth     = true
   
   
   
  }
}
