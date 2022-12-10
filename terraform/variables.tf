variable "environment" {
  description = "Environment variable used as a prefix"
  default = "dev"
}

variable "resource_group_name" {
  description = "Resource Group Name"
  default = "rg"
}

variable "resource_group_location" {
  description = "Region in which Azure Resources are to be created"
  default = "eastus"
}