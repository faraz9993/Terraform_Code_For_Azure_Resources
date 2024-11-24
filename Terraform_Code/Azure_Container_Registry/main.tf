##################################
# azurerm_container_registry.acr:#
##################################

provider "azurerm" {
  features {}
  subscription_id = "XXXXXXXXX-XXXX-XXXX-XXXX-XXXXXXXXX"
  resource_provider_registrations = "none"
}

resource "azurerm_container_registry" "Sa1acrind" {
    admin_enabled                 = var.admin_enabled
    anonymous_pull_enabled        = var.anonymous_pull_enabled
    data_endpoint_enabled         = var.data_endpoint_enabled
    export_policy_enabled         = var.export_policy_enabled
    location                      = var.location
    name                          = var.name
    network_rule_bypass_option    = var.network_rule_bypass_option
    public_network_access_enabled = var.public_network_access_enabled
    quarantine_policy_enabled     = var.quarantine_policy_enabled
    resource_group_name           = var.resource_group_name
    retention_policy_in_days      = var.retention_policy_in_days
    sku                           = var.sku
    tags                          = {
        " Business Unit"   = var.Business_Unit
        " Owner"           = var.Owner
        "Create date "     = var.Create_date
        "Project Name"     = var.Project_Name
    }
    trust_policy_enabled          = var.trust_policy_enabled
    zone_redundancy_enabled       = var.zone_redundancy_enabled
}
