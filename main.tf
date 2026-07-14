resource "azurerm_resource_group" "veenu_rg" {
  for_each   = var.rgs
  name       = each.value.name
  location   = each.value.location
  managed_by = each.value.managed_by
}

resource "azurerm_virtual_network" "veenu_vnets" {
  for_each            = var.vnets
  name                = each.value.name
  location            = each.value.location
  resource_group_name = each.value.resource_group_name
  address_space       = each.value.address_space
}