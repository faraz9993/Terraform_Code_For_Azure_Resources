provider "azurerm" {
  features {}
  subscription_id = "XXXXXXXXX-XXXX-XXXX-XXXX-XXXXXXXXX"
  resource_provider_registrations = "none"
}
resource "azurerm_storage_account" "sa1deveicipimplemen8ad4" {
    account_kind                       = var.account_kind
    account_replication_type           = var.account_replication_type
    account_tier                       = var.account_tier
    allow_nested_items_to_be_public    = var.allow_nested_items_to_be_public
    cross_tenant_replication_enabled   = var.cross_tenant_replication_enabled
    default_to_oauth_authentication    = var.default_to_oauth_authentication
    dns_endpoint_type                  = var.dns_endpoint_type
    https_traffic_only_enabled         = var.https_traffic_only_enabled
    infrastructure_encryption_enabled  = var.infrastructure_encryption_enabled
    is_hns_enabled                     = var.is_hns_enabled
    large_file_share_enabled           = var.large_file_share_enabled
    local_user_enabled                 = var.local_user_enabled
    location                           = var.location
    min_tls_version                    = var.min_tls_version
    name                               = var.name
    nfsv3_enabled                      = var.nfsv3_enabled
    public_network_access_enabled      = var.public_network_access_enabled
    queue_encryption_key_type          = var.queue_encryption_key_type
    resource_group_name                = var.resource_group_name
    sftp_enabled                       = var.sftp_enabled
    shared_access_key_enabled          = var.shared_access_key_enabled
    table_encryption_key_type          = var.table_encryption_key_type
    tags                               = {}

    blob_properties {
        change_feed_enabled           = var.change_feed_enabled
        last_access_time_enabled      = var.last_access_time_enabled
        versioning_enabled            = var.versioning_enabled
    }

    queue_properties {
        hour_metrics {
            enabled               = var.enabled
            include_apis          = var.include_apis
            retention_policy_days = 7
            version               = "1.0"
        }
        logging {
            delete                = var.delete
            read                  = var.read
            version               = "1.0"
            write                 = var.write
        }
        minute_metrics {
            enabled               = var.enabled
            include_apis          = var.include_apis
            version               = "1.0"
        }
    }

    share_properties {
        retention_policy {
            days = 7
        }
    }
}
