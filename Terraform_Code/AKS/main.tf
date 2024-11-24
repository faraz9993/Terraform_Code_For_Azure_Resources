#######################################
# azurerm_kubernetes_cluster.cluster1:#
#######################################
provider "azurerm" {
  features {}
  subscription_id = var.subscription_id
  resource_provider_registrations = "none"
}


resource "azurerm_kubernetes_cluster" "cluster1" {
    automatic_upgrade_channel           = var.automatic_upgrade_channel
    azure_policy_enabled                = var.azure_policy_enabled
    cost_analysis_enabled               = var.cost_analysis_enabled
    dns_prefix                          = var.dns_prefix
    http_application_routing_enabled    = var.http_application_routing_enabled
    kubernetes_version                  = var.kubernetes_version
    local_account_disabled              = var.local_account_disabled
    location                            = var.location
    name                                = var.name
    node_os_upgrade_channel             = var.node_os_upgrade_channel
    node_resource_group                 = var.node_resource_group
    oidc_issuer_enabled                 = var.oidc_issuer_enabled
    open_service_mesh_enabled           = var.open_service_mesh_enabled
    private_cluster_enabled             = var.private_cluster_enabled
    private_cluster_public_fqdn_enabled = var.private_cluster_public_fqdn_enabled
    resource_group_name                 = var.resource_group_name
    role_based_access_control_enabled   = var.role_based_access_control_enabled
    run_command_enabled                 = var.run_command_enabled
    sku_tier                            = var.sku_tier
    support_plan                        = var.support_plan
    workload_identity_enabled           = var.workload_identity_enabled

    auto_scaler_profile {
        balance_similar_node_groups      = var.auto_scaler_profile.balance_similar_node_groups
        empty_bulk_delete_max            = var.auto_scaler_profile.empty_bulk_delete_max
        expander                         = var.auto_scaler_profile.expander
        max_graceful_termination_sec     = var.auto_scaler_profile.max_graceful_termination_sec
        max_node_provisioning_time       = var.auto_scaler_profile.max_node_provisioning_time
        max_unready_nodes                = var.auto_scaler_profile.max_unready_nodes
        max_unready_percentage           = var.auto_scaler_profile.max_unready_percentage
        new_pod_scale_up_delay           = var.auto_scaler_profile.new_pod_scale_up_delay
        scale_down_delay_after_add       = var.auto_scaler_profile.scale_down_delay_after_add
        scale_down_delay_after_delete    = var.auto_scaler_profile.scale_down_delay_after_delete
        scale_down_delay_after_failure   = var.auto_scaler_profile.scale_down_delay_after_failure
        scale_down_unneeded              = var.auto_scaler_profile.scale_down_unneeded
        scale_down_unready               = var.auto_scaler_profile.scale_down_unready
        scale_down_utilization_threshold = var.auto_scaler_profile.scale_down_utilization_threshold
        scan_interval                    = var.auto_scaler_profile.scan_interval
        skip_nodes_with_local_storage    = var.auto_scaler_profile.skip_nodes_with_local_storage
        skip_nodes_with_system_pods      = var.auto_scaler_profile.skip_nodes_with_system_pods
    }

    default_node_pool {
        auto_scaling_enabled          = var.default_node_pool.auto_scaling_enabled
        fips_enabled                  = var.default_node_pool.fips_enabled
        host_encryption_enabled       = var.default_node_pool.host_encryption_enabled
        kubelet_disk_type             = var.default_node_pool.kubelet_disk_type
        max_pods                      = var.default_node_pool.max_pods
        name                          = var.default_node_pool.node_pool_name
        node_count                    = var.default_node_pool.node_count
        node_public_ip_enabled        = var.default_node_pool.node_public_ip_enabled
        only_critical_addons_enabled  = var.default_node_pool.only_critical_addons_enabled
        orchestrator_version          = var.default_node_pool.orchestrator_version
        os_disk_size_gb               = var.default_node_pool.os_disk_size_gb
        os_disk_type                  = var.default_node_pool.os_disk_type
        os_sku                        = var.default_node_pool.os_sku
        scale_down_mode               = var.default_node_pool.scale_down_mode
        type                          = var.default_node_pool.type
        ultra_ssd_enabled             = var.default_node_pool.ultra_ssd_enabled
        vm_size                       = var.default_node_pool.vm_size
    }

    identity {
        type         = var.identity.type
    }

    key_vault_secrets_provider {
        secret_rotation_enabled  = var.key_vault_secrets_provider.secret_rotation_enabled
        secret_rotation_interval = var.key_vault_secrets_provider.secret_rotation_interval
    }


    network_profile {
        dns_service_ip      = var.network_profile.dns_service_ip
        ip_versions         = var.network_profile.ip_versions
        load_balancer_sku   = var.network_profile.load_balancer_sku
        network_data_plane  = var.network_profile.network_data_plane
        network_plugin      = var.network_profile.network_plugin
        network_policy      = var.network_profile.network_policy
        outbound_type       = var.network_profile.outbound_type
        pod_cidr            = var.network_profile.pod_cidr
        pod_cidrs           = var.network_profile.pod_cidrs
        service_cidr        = var.network_profile.service_cidr
        service_cidrs       = var.network_profile.service_cidrs

        load_balancer_profile {
            outbound_ports_allocated    = 0         # keep this hard-coded
        }
    }
    
}