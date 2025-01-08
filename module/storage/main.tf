resource "azurerm_storage_account" "name" {
  name = var.name
  account_replication_type = var.account_replication_type
  location = var.location
  resource_group_name = var.resource_group_name
  account_tier = var.account_tier

}

resource "azurerm_storage_container" "name" {
  name = var.storage_container_name
  storage_account_name = azurerm_storage_account.name.name
}