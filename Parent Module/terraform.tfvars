rgs1 = {
  rg1 = {
    name     = "RG1"
    location = "centralindia"
  }
rg2 = {
    name     = "RG2"
    location = "centralindia"
  }

}

vnets1 = {
  vnet1 = {
    name                = "vnetone"
    location            = "centralindia"
    resource_group_name = "RG1"
    address_space       = ["10.20.0.0/16"]
  }

   vnet2 = {
    name                = "vnettwo"
    location            = "centralindia"
    resource_group_name = "RG2"
    address_space       = ["10.30.0.0/16"]
  }
}

subnets1 = {
  subnet1 = {
    name                 = "frontendsubnet"
    resource_group_name  = "RG1"
    virtual_network_name = "vnetone"
    address_prefixes     = ["10.20.1.0/24"]
  }
}

pips1 = {
  pip1 = {
    name                = "publicipone"
    resource_group_name = "RG1"
    location            = "centralindia"
    allocation_method   = "Static"
  }
}

nics1 = {
  nic1 = {
    name                 = "frontendnic"
    location             = "centralindia"
    resource_group_name  = "RG1"
    subnet_name          = "frontendsubnet"
    virtual_network_name = "vnetone"
    public_ip_name = "publicipone"
  }
}