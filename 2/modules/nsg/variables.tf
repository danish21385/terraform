variable "nsg_name" {
  description = "Name of the Network Security Group."
  type        = string
}

variable "location" {
  description = "Azure region where the NSG will be created."
  type        = string
}

variable "resource_group_name" {
  description = "Name of the Azure Resource Group."
  type        = string
}
