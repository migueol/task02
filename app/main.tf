# Create a resource group
resource "azurerm_resource_group" "rg" {
  name     = var.resource_group_name
  location = var.location
}

module "st" {
  depends_on = [ azurerm_resource_group.rg ]
  source = "../module/storage"
  name = var.name
  storage_container_name =  var.storage_container_name
  account_replication_type = var.account_replication_type
  location = var.location
  resource_group_name = var.resource_group_name
  account_tier = var.account_tier
}