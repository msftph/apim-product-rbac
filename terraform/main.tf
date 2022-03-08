terraform {
  required_providers {
    azurerm = {
      source = "hashicorp/azurerm"
      version = "2.98.0"
    }
  }
}

provider "azurerm" {  
  features {}
}

resource "azurerm_resource_group" "default"{
    name     = "api-management"
    location = "East US"
}