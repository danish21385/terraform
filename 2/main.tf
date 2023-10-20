module "nsgs" {
  source = "./modules/nsg"

  for_each = {
    "nsg1" = {
      nsg_name           = "nsg1"
      location           = "East US"
      resource_group_name = "myResourceGroup1"
    },
    "nsg2" = {
      nsg_name           = "nsg2"
      location           = "West US"
      resource_group_name = "myResourceGroup2"
    },
    "nsg3" = {
      nsg_name           = "nsg3"
      location           = "North Europe"
      resource_group_name = "myResourceGroup3"
    }
  }
}
