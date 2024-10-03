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
  

  subscription_id      = var.subscriptionid

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

variable "subscriptionid" {}

variable "tenantid"{}
