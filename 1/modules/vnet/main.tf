
resource "azurerm_virtual_network" "vneta" {
    name = var.vnet_name
    address_space = var.vnet_ap
    location = var.vnet_location
    resource_group_name = var.rg
}