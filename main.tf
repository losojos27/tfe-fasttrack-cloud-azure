terraform {
  # cloud {
  #   organization = "<your_tfc_org>"

  #   workspaces {
  #     name = "<your_workspace>"
  #   }
  # }

  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "~> 3.0.2"
    }
  }

  required_version = ">= 1.1.0"
}

provider "azurerm" {
  features {}
}

resource "azurerm_resource_group" "rg" {
  name     = var.resource_group_name
  location = "westus2"
}

# # Create a virtual network
# resource "azurerm_virtual_network" "vnet" {
#   name                = "myTFVnet"
#   address_space       = ["10.0.0.0/16"]
#   location            = "westus2"
#   resource_group_name = azurerm_resource_group.rg.name
# }

