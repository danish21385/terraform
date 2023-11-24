
resource "azurerm_resource_group" "rg888" {
  name     = "rg888"
  location = "east us"
}

module "vnet888" {
  source   = "./modules"
  location = "east us"
  rg       = azurerm_resource_group.rg888.name
  for_each = var.vnets
  vnetname = each.value.name
  addspc   = each.value["address_space"]


}


variable "vnets" {
  type = map(any)

}