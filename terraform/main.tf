terraform {
  required_providers {
    azurerm = {
      source = "hashicorp/azurerm"
      version = "3.35.0"
    }
  }
}

provider "azurerm" {
  # Configuration options
  features {}
}

resource "azurerm_resource_group" "resource_group" {
  name = "${var.environment}-${var.resource_group_name}"
  location = var.resource_group_location
}

resource "azurerm_container_group" "container_group" {
  name = "${var.environment}-API"
  resource_group_name = azurerm_resource_group.resource_group.name
  location = azurerm_resource_group.resource_group.location

  ip_address_type = "Public"
  dns_name_label = "ysebri"
  os_type = "Linux"

  container {
    name = "devops-terraform"
    image = "ysebri/devops-terraform:${var.image_tag}"
    cpu = "1"
    memory = "1"
    
    ports {
      port = 80
      protocol = "TCP"
    }
  }
}
