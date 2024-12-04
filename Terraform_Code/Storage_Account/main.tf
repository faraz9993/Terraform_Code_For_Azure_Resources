provider "azurerm" {
  features {}
  subscription_id = var.subscription_id
  resource_provider_registrations = var.resource_provider_registrations
}

resource "azurerm_storage_account" "devtestinstorageaccount" {
  name                           = var.name
  resource_group_name            = var.resource_group_name
  location                       = var.location
  account_kind                   = var.account_kind
  account_replication_type       = var.account_replication_type
  account_tier                   = var.account_tier
  network_rules {
    bypass                     = [
      "AzureServices",
    ]
    default_action             = "Deny"
  }
}