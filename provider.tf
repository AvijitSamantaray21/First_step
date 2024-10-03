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




provider "azurerm" {
  storage_use_azuread = true
  client_id            = var.client_id
  subscription_id      = var.subscription_id
  tenant_id            = var_tenant_id
  features {}
}
provider "github" {
  token = var.github_token
}

variable "github_token" {
  description = "GitHub Personal Access Token"
  type        = string
}

variable "client_id"{
  type        = string
}

variable "subscription_id {
v
}

variable " tenant_id "{
  type        =  string
}
