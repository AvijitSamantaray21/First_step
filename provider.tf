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
     client_id           = var.client_id  # Can also be set via `ARM_CLIENT_ID` environment variable.
    subscription_id      = var.subscription_id  # Can also be set via `ARM_SUBSCRIPTION_ID` environment variable.
    tenant_id            = var.tenant_id  # Can also be set via `ARM_TENANT_ID` environment variable.
    client_secret        =  var.client_secret
 
}



provider "github" {
  token = var.github_token
}

variable "github_token" {
  description = "GitHub Personal Access Token"
  type        = string
}
variable "client_id" {
  type = string
}
variable "client_secret" {
  type = string
  
}
variable "subscription_id" {
  
    type = string
    

}
variable "tenant_id" {
  type = string
  
}
