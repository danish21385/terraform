# variable "vnetlist" {
#   type = list(string)

# }

# variable "adrspc" {
#   type = list(string)

# }

module "rg" {
  source   = "./modules/rg"
  name     = "rg-main"
  location = "eastus"

}

variable "vnetconfig" {
    type = map(object({
      name = string
      address_space = string

    }))
}

# using count to iterate through a list to create multiple vnets
# module "vnet" {
#   source        = "./modules/vnet"
#   count         = length(var.vnetlist)
#   vnet_location = "eastus"
#   vnet_name     = var.vnetlist[count.index]
#   vnet_ap       = [var.adrspc[count.index]]
#   rg            = module.rg.rgname


# }

# using for_each to iterate through a list to create multiple vnets

module "vnet" {
  for_each      = var.vnetconfig
  source        = "./modules/vnet"
  vnet_location = "eastus"
  vnet_name     = each.key
  vnet_ap       = [each.value.address_space]
  rg            = module.rg.rgname


}


