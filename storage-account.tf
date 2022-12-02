resource "azurem_resource_group" "first_resource_group" {
  name     = "remote-state"
  location = var.location

  tags = local.common_tags

}

resource "azurem_storage_account" "fist_storage_account" {
  name = "pabloshizatoremotestate"

  resource_group_name      = azurem_resource_group.first_resource_group.name
  location                 = var.location
  account_tier             = var.account_tier
  account_replication_type = var.account_replication_type

  blob_properties {
    versioning_enabled = true
  }

  tags = local.common_tags

}

resource "azurem_storage_container" "fist_container" {
  name                 = "remote-state"
  storage_account_name = azurem_storage_account.example.name


}
