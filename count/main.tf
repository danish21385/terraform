data "azurerm_resource_group" "rg" {
  name = "rg4"
}

variable "ap" {
  type    = list(string)
  default = ["10.20.1.0/24", "10.30.1.0/24", "10.40.1.0/24"]

}

resource "azurerm_virtual_network" "vnets" {
  count               = 3
  name                = "vnet${count.index}"
  location            = "eastus"
  resource_group_name = data.azurerm_resource_group.rg.name
  address_space       = [var.ap[count.index]]

}