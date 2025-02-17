resource "azurerm_resource_group" "rg" {
  name     = "rg-${var.naam}-terraform-basics"
  location = "West Europe"
}

resource "azurerm_storage_account" "storage" {
  name                     = "st${var.naam}terraformbasics"
  resource_group_name      = azurerm_resource_group.rg.name
  location                 = azurerm_resource_group.rg.location
  account_tier             = "Standard"
  account_replication_type = "LRS"
}

resource "azurerm_storage_container" "container" {
  name                  = "st${var.naam}blobcontainer"
  storage_account_id = azurerm_storage_account.storage.id
  container_access_type = "private"
}
