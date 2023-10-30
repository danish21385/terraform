# vnetlist = ["spkvnet1", "spkvnet2", "spkvnet3", "spkvnet4", "spkvnet5"]
# adrspc   = ["192.168.10.0/24", "192.168.0.0/24", "192.168.20.0/24", "192.168.30.0/24", "192.168.40.0/24"]
vnetconfig = {
  "spkvnet" = {
    name = "spkvnet"
    address_space = "192.168.10.0/24"
    
  }
    "vlcore" = {
    name = "vlcore"
    address_space = "192.168.20.0/24"
    
  }
     "vlconnect" = {
    name = "vlconnect"
    address_space = "192.168.30.0/24"
    
  }
     "vldirect" = {
    name = "vldirect"
    address_space = "192.168.40.0/24"
    
  }
}