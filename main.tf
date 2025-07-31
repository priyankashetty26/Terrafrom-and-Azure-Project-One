#Configure Azure Provider
terraform {
    required_providers {
      azurerm = {
        source = "hashicorp/azurerm"
        version = ">=3.59.0"
      }
    }
    required_version = ">= 0.14.9"
}

provider "azurerm" {
  subscription_id = "xxxx-xxxx-xxx-xxx-xxx"
  features {}
}

data "azurerm_resource_group" "rsg" {
    name="Priyanka_RSG_test"
}