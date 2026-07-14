rgs = {
  rg1 = {
    name       = "veenu-rg1"
    location   = "centralindia"
    managed_by = "terraform"

  }
  rg2 = {
    name       = "veenu-rg2"
    location   = "centralindia"
    managed_by = "terraform"

  }
}

vnets = {
  vnet1 = {
    name                = "veenu-vnet1"
    location            = "centralindia"
    resource_group_name = "veenu-rg1"
    address_space       = ["10.10.0.0/16"]
  }
  vnet2 = {
    name                = "veenu-vnet2"
    location            = "centralindia"
    resource_group_name = "veenu-rg2"
    address_space       = ["10.20.0.0/16"]
  }
}