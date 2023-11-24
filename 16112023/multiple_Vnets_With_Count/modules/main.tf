


resource "azurerm_virtual_network" "vnet" {
    resource_group_name = var.vnetrg
    address_space = var.vnetadspc
    name = var.vnetname
    location = var.vnetlocation

  
}