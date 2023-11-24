resource "azurerm_resource_group" "platform" {
  name     = "platform"
  location = "east us"
}

resource "azurerm_virtual_network" "platvnet" {
  name                = "plvnet"
  location            = "east us"
  resource_group_name = azurerm_resource_group.platform.name
  address_space       = ["10.50.0.0/16"]

}

resource "azurerm_subnet" "plsubnet1" {
  count                = 3
  virtual_network_name = azurerm_virtual_network.platvnet.name
  resource_group_name  = azurerm_resource_group.platform.name
  for_each             = var.subnet
  name                 = each.value.name
  address_prefixes     = each.value["address_prefix"]

}

variable "subnet" {
  type = map(any)
}