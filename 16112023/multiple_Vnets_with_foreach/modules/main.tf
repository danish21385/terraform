



resource "azurerm_virtual_network" "vnet888" {
    name = var.vnetname
    location = var.location
    address_space = var.addspc
    resource_group_name = var.rg
  
}