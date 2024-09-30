terraform {
  backend "azurerm" {
    resource_group_name  = "hihi"          # Can be passed via `-backend-config=`"resource_group_name=<resource group name>"` in the `init` command.
    storage_account_name = "tfmasterhi"                              # Can be passed via `-backend-config=`"storage_account_name=<storage account name>"` in the `init` command.
    container_name       = "tfstate"                               # Can be passed via `-backend-config=`"container_name=<container name>"` in the `init` command.
    key                  = "terraform.tfstate"                # Can be passed via `-backend-config=`"key=<blob key name>"` in the `init` command.
    use_msi              = true                                    # Can also be set via `ARM_USE_MSI` environment variable.
    client_id            = "client_id_value" 
    subscription_id      = "subsription_id_value"  
    tenant_id            = "tenant_id_value"  
    client_secret        =  "client_secret_value"
  }
}
