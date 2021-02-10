terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = ">= 2.26"
    }
  }
  backend "azurerm" {
    resource_group_name  = "Lite3D"
    storage_account_name = "litecloudvolumes"
    container_name       = "tfstate"
    key                  = "codelab.microsoft.tfstate"
  }
}

provider "azurerm" {
  features {}
}
