provider "azurerm" {
  features {}
  subscription_id = var.subscription_id
  resource_provider_registrations = "none"
}

resource "azurerm_key_vault" "FarazKeyValt" {
  name                            = var.name
  resource_group_name             = var.resource_group_name
  location                        = var.location
  sku_name                        = var.sku_name
  tenant_id                       = var.tenant_id
  network_acls {
    bypass                     = var.bypass
    default_action             = "Deny"
    ip_rules                   = var.allowed_ip_rules
    virtual_network_subnet_ids = []
  }
}
