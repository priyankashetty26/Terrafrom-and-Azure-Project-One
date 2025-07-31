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

#This configures the Azure RM provider to use the specified subscription.
provider "azurerm" {
  subscription_id = "xxxx-xxxx-xxx-xxx-xxx"
  features {}
}

#This fetches an existing resource group named Priyanka_RSG_test
#'data' - It will make the existing resource available to other Terraform resources.
#Eg. we can refer to its location using data.azurerm_resource_group.rsg.location
data "azurerm_resource_group" "rsg" {
    name="Priyanka_RSG_test"
}