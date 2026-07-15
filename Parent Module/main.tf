module "resourcegroup" {
  source = "../Child Module/azurerm_resource_group"
  rgs    = var.rgs1
}

module "vnet" {
  depends_on = [module.resourcegroup]
  source     = "../Child Module/azurerm_virtual_network"
  vnets      = var.vnets1

}

module "subnet" {
  depends_on = [module.vnet]
  source     = "../Child Module/azurerm_subnet"
  subnets    = var.subnets1

}

module "pip" {
  depends_on = [module.resourcegroup]
  source     = "../Child Module/azurerm_pip"
  pips       = var.pips1

}

module "nic" {
  depends_on = [module.subnet, module.pip]
  source     = "../Child Module/azurerm_nic"
  nics       = var.nics1

}

        