provider "azurerm" {
  features {}
  subscription_id = "e146f6a5-5a63-446e-8f29-b4760484b0fa"
  tenant_id       = "34097a96-e2b9-47ed-929f-32d003075fbf"
  client_id       = "75836173-2a8e-4413-9c4e-79e3121448cf"
  client_secret   = "lqa8Q~Fk0HzoqG2nDEer.4_XUo8kh4PJZhrVqc3~"
}


resource "azurerm_virtual_network" "vneta" {
    name = var.vnet_name
    address_space = var.vnet_ap
    location = var.vnet_location
    resource_group_name = var.rg
}