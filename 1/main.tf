

module "rg" {
  source   = "./modules/rg"
  name     = "rg-main"
  location = "eastus"

}

module "vnet" {
  source        = "./modules/vnet"
  vnet_name     = "hubvnet"
  vnet_location = "eastus"
  rg            = module.rg.rgname
  vnet_ap       = ["10.10.0.0/24"]

}