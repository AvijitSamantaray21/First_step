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
