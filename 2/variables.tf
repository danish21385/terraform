variable "nsgs" {
  type = map(object({
    location = string
  }))
    default = {"vlcore" = {location = "eastus" }}       
  }

variable "nsg2" {
  type = list(string)
  
}