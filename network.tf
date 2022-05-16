provider "azurerm" {
  features {}
}

resource "azurerm_resource_group" "example" {
  name     = "my-resources"
  location = "West Europe"
}

module "network" {
  source  = "app.terraform.io/aeckrava/network/azurerm"
  version = "3.5.0"
  resource_group_name = azurerm_resource_group.example.name
}
