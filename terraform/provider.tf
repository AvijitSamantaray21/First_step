terraform {
  required_providers {
 
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
