data "azurerm_resource_group" "example" {
  name = var.resource_group_name
}

data "azurerm_managed_disk" "osdisk" {
  name                = azurerm_linux_virtual_machine.example.os_disk[0].name
  resource_group_name = azurerm_linux_virtual_machine.example.resource_group_name
}
