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
  
  client_id            = var.clientid
  subscription_id      = var.subscriptionid
  tenant_id            = var_tenantid
  storage_use_azuread = true
  features {}
}
provider "github" {
  token = var.github_token
}

variable "github_token" {
  description = "GitHub Personal Access Token"
  type        = string
}

variable "clientid"{}

variable "subscription_id {}

variable "tenant_id "{}
