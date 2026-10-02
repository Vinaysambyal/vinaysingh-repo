terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "5.6.0"
    }
  }
  backend "azurerm" {
    resource_group_name = "azure-infra"
    storage_account_name = "azureinfrasa123"
    container_name = "azurecontainer"
    key = "devi.tfstate"
  }
}

# Configure the Microsoft Azure Provider
provider "azurerm" {
  features {}
}