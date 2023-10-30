data "azurerm_resource_group" "hubrg" {
  name = "hubrg"
}


variable "nsg" {
  type = map(object({
    name     = string
    location = string
  }))
  default = {
    "nsg1" = {
      name     = "nsg1"
      location = "eastus"
    }
    "nsg2" = {
      name     = "nsg1"
      location = "eastus"
    }
  }

}

resource "azurerm_network_security_group" "hub" {
  for_each            = var.nsg
  name                = each.key
  location            = each.value.location
  resource_group_name = data.azurerm_resource_group.hubrg.name


}


variable "vnets" {
  type = map(object({
    name     = string
    ap       = list(string)
    location = string
  }))

  default = {
    "vnetspk" = {
      name     = "vnetspk"
      ap       = ["10.2.1.0/24"]
      location = "eastus"


    }
    "vnetspk2" = {
      name     = "vnetspk2"
      ap       = ["10.3.1.0/24"]
      location = "eastus"


    }
  }

}

resource "azurerm_virtual_network" "vnet1" {
  for_each            = var.vnets
  name                = each.value.name
  address_space       = each.value.ap
  resource_group_name = data.azurerm_resource_group.hubrg.name
  location            = each.value.location


}


