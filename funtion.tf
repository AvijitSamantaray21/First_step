
# # Replace with your actual values
# data "github_token" "my_token" {
#   owner = "AvijitSamantaray21"
# }

# data "github_secret" "resource_name" {
#   owner        = ":AvijitSamantaray21"
#   repository   = "First_step"
#   name         = "resource_name"
#   token= data.github_token.my_token.value
# }



# resource "azurerm_resource_group" "example" {
#   name     = data.github_secret.example.value
#   location = "Centralindia"
# }
resource "github_repository" "example" {
  name        = "exampledsdsds"
  description = "My awesome codebase"

  visibility = "public"

 
}
