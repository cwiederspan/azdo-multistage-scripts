terraform {
  required_version = ">= 0.12"
  
  backend "azurerm" {
    environment = "public"
  }
}

provider "azurerm" {
  version = "=1.41.0"
}

variable "resource_group_name" {
  type        = string
  description = "The name of the resource group that will be created."
}

variable "location" {
  type        = string
  description = "The location region where the resource group will be created."
  default     = "westus2"
}

resource "azurerm_resource_group" "group" {
  name     = var.resource_group_name
  location = var.location
}