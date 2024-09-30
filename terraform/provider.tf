terraform {
  required_providers {
    azurerm = {
      source = "hashicorp/azurerm"
      version = "4.3.0"
    }
    github = {
      source = "integrations/github"
      version = "6.3.0"
    }
  }
}

# provider "azurerm" {
#   subscription_id = "1f9c0f59-d7b6-4f6c-ba84-47ee3cfd78a9"
#   tenant_id = "a9dbd3ec-9f98-4631-97e4-e496755c33c7"
#   client_id = "5f5d2f40-47f7-4b8c-9ed6-aca6c4eb6c67"
#   client_secret = "-YH8Q~f7KMhhlFe0dFMvoO.XnzMgUuEHH8YhBcyM"
#   features {
    
#   }
# }


provider "github" {
  token = var.github_token
}

variable "github_token" {
  description = "GitHub Personal Access Token"
  type        = string
}