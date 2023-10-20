rgname   = "rg4"
location = "eastus"
nsgname  = ["nsg1", "nsg2", "nsg3", "nsg4"]
secrules = [{
  name                       = "Allow-http"
  priority                   = 100
  direction                  = "Inbound"
  access                     = "Allow"
  protocol                   = "Tcp"
  source_port_range          = 80
  destination_port_range     = 80
  source_address_prefix      = "*"
  destination_address_prefix = "*"
  },
  {
    name                       = "Allow-https"
    priority                   = 200
    direction                  = "Inbound"
    access                     = "Allow"
    protocol                   = "Tcp"
    source_port_range          = 443
    destination_port_range     = 443
    source_address_prefix      = "*"
    destination_address_prefix = "*"
  },
  {
    name                       = "Allow-rdp"
    priority                   = 300
    direction                  = "Inbound"
    access                     = "Allow"
    protocol                   = "Tcp"
    source_port_range          = 3389
    destination_port_range     = 3389
    source_address_prefix      = "*"
    destination_address_prefix = "*"
  },
  {
    name                       = "Allow-mssql"
    priority                   = 400
    direction                  = "Inbound"
    access                     = "Allow"
    protocol                   = "Tcp"
    source_port_range          = 1433
    destination_port_range     = 1433
    source_address_prefix      = "*"
    destination_address_prefix = "*"
  }

]
