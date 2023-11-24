resource "azurerm_resource_group" "hub" {
  name     = "hub-rg"
  location = "east us"

}


module "vnet" {
  count        = 3
  source       = "./modules"
  vnetname     = "vnet-${count.index+1}"
  vnetadspc    = ["10.0.${count.index+1}.0/16"]
  vnetlocation = "east us"
  vnetrg       = azurerm_resource_group.hub.name

}